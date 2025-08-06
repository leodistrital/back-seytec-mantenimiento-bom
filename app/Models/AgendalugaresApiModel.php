<?php
namespace App\Models;

use CodeIgniter\Model;

class AgendalugaresApiModel extends Model
{
	protected $DBGroup = 'default';
	protected $table = 'agendalugares';
	protected $primaryKey = 'cod_lug';
	protected $useAutoIncrement = true;
	protected $insertID = 0;
	protected $returnType = 'array';
	protected $useSoftDeletes = true;
	protected $protectFields = true;
	protected $allowedFields = ["cod_lug as id", "nom_lug", "des_lug", "des_lug_ing"];

	// Dates
	protected $useTimestamps = true;
	protected $dateFormat = 'datetime';
	protected $createdField = 'created_at';
	protected $updatedField = 'updated_at';
	protected $deletedField = 'deleted_at';

	// Validation
	protected $validationRules = [];
	protected $validationMessages = [];
	protected $skipValidation = false;
	protected $cleanValidationRules = true;

	// Callbacks
	protected $allowCallbacks = true;
	protected $beforeInsert = [];
	protected $afterInsert = [];
	protected $beforeUpdate = [];
	protected $afterUpdate = [];
	protected $beforeFind = [];
	protected $afterFind = [];
	protected $beforeDelete = [];
	protected $afterDelete = [];

	public function listatardatos($id = 0)
	{
		$array = ["cod_lug as id", "nom_lug", "des_lug", "des_lug_ing"];
		if ($id == 0) {
			$data = $this->select($array)->findAll();
		} else {
			$data = $this->select($array)->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'nom_lug' => $request->getVar('nom_lug')
			,
			'des_lug' => $request->getVar('des_lug')
			,
			'des_lug_ing' => $request->getVar('des_lug_ing')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_lug' => $id,
			'nom_lug' => $request->getVar('nom_lug')
			,
			'des_lug' => $request->getVar('des_lug')
			,
			'des_lug_ing' => $request->getVar('des_lug_ing')

		];
		$confirmacion = $this->save($data);

		if ($confirmacion == 1) {
			return $id;
		}
	}

	public function borrar($id)
	{
		$id = $this->delete($id);
		return $id;
	}

	public function parametros()
	{
		$array = ["cod_lug as value", "nom_lug as name"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 05-29-2024 03:28:39 pm */