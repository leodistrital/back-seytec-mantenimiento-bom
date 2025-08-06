<?php
namespace App\Models;

use CodeIgniter\Model;

class AgendatipoApiModel extends Model
{
	protected $DBGroup = 'default';
	protected $table = 'agendatipo';
	protected $primaryKey = 'cod_tag';
	protected $useAutoIncrement = true;
	protected $insertID = 0;
	protected $returnType = 'array';
	protected $useSoftDeletes = true;
	protected $protectFields = true;
	protected $allowedFields = ["cod_tag as id", "nom_tag", "col_tag", "nom_tag_ing"];

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
		$array = ["cod_tag as id", "nom_tag", "col_tag", "nom_tag_ing"];
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
			'nom_tag' => $request->getVar('nom_tag')
			,
			'col_tag' => $request->getVar('col_tag')
			,
			'nom_tag_ing' => $request->getVar('nom_tag_ing')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_tag' => $id,
			'nom_tag' => $request->getVar('nom_tag')
			,
			'col_tag' => $request->getVar('col_tag')
			,
			'nom_tag_ing' => $request->getVar('nom_tag_ing')

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
		$array = ["cod_tag as value", "nom_tag as name", "col_tag", "nom_tag_ing"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 05-29-2024 03:23:19 pm */