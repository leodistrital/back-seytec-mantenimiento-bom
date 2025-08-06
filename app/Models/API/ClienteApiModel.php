<?php

namespace App\Models\api;

use CodeIgniter\Model;

class ClienteApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'cliente';
	protected $primaryKey           = 'cod_cli';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_cli as id", "nom_cli", "dir_cli", "nit_cli", "log_nit"];

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
		$array = ["cod_cli as id", "nom_cli", "dir_cli", "nit_cli", "log_nit"];
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
			'nom_cli' => $request->getVar('nom_cli'),
			'dir_cli' => $request->getVar('dir_cli'),
			'nit_cli' => $request->getVar('nit_cli'),
			'log_nit' => $request->getVar('log_nit')

		];
		// print_r($data);
		// exit;
		$id = $this->insert($data);
		// var_dump($id);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_cli' => $id,
			'nom_cli' => $request->getVar('nom_cli'),
			'dir_cli' => $request->getVar('dir_cli'),
			'nit_cli' => $request->getVar('nit_cli'),
			'log_nit' => $request->getVar('log_nit')

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
		$array = ["cod_cli as value", "nom_cli as name"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 12-18-2024 01:53:46 pm */