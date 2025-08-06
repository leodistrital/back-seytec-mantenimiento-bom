<?php
namespace App\Models\api;
use CodeIgniter\Model;

class MunicipiosApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'municipios';
	protected $primaryKey           = 'cod_mun';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_mun as id","nom_mun","estado","cod_dep_mun"];

	// Dates
	protected $useTimestamps        = true;
	protected $dateFormat           = 'datetime';
	protected $createdField         = 'created_at';
	protected $updatedField         = 'updated_at';
	protected $deletedField         = 'deleted_at';

	// Validation
	protected $validationRules      = [];
	protected $validationMessages   = [];
	protected $skipValidation       = false;
	protected $cleanValidationRules = true;

	// Callbacks
	protected $allowCallbacks       = true;
	protected $beforeInsert         = [];
	protected $afterInsert          = [];
	protected $beforeUpdate         = [];
	protected $afterUpdate          = [];
	protected $beforeFind           = [];
	protected $afterFind            = [];
	protected $beforeDelete         = [];
	protected $afterDelete          = [];

	public function listatardatos($id = 0)
	{
		$array = ["cod_mun as id","nom_mun","estado","cod_dep_mun"];
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
			'nom_mun' => $request->getVar('nom_mun')
,'estado' => $request->getVar('estado')
,'cod_dep_mun' => $request->getVar('cod_dep_mun')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_mun' => $id,
			'nom_mun' => $request->getVar('nom_mun')
,'estado' => $request->getVar('estado')
,'cod_dep_mun' => $request->getVar('cod_dep_mun')

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
		$array = ["cod_mun as value","nom_mun as name" ,"estado","cod_dep_mun"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 07-02-2025 07:57:10 pm */