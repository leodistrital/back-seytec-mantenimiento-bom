<?php
namespace App\Models\api;
use CodeIgniter\Model;

class PartidaApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'partida';
	protected $primaryKey           = 'cod_par';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_par as id","nom_par","fac_par","cod_cap_par","created_at"];

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
		$array = ["cod_par as id","nom_par","fac_par","cod_cap_par","created_at"];
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
			'nom_par' => $request->getVar('nom_par')
,'fac_par' => $request->getVar('fac_par')
,'cod_cap_par' => $request->getVar('cod_cap_par')
,'created_at' => $request->getVar('created_at')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_par' => $id,
			'nom_par' => $request->getVar('nom_par')
,'fac_par' => $request->getVar('fac_par')
,'cod_cap_par' => $request->getVar('cod_cap_par')
,'created_at' => $request->getVar('created_at')

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
		$array = ["cod_par as id","nom_par","fac_par","cod_cap_par","created_at"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 10-08-2025 01:49:27 pm */