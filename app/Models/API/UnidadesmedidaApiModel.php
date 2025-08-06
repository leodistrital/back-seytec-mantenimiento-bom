<?php

namespace App\Models\api;

use CodeIgniter\Model;

class UnidadesmedidaApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'unidadesmedida';
	protected $primaryKey           = 'cod_uni';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_uni as id", "nom_uni", "sig_uni"];

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
		$array = ["cod_uni as id", "nom_uni", "sig_uni"];
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
			'nom_uni' => $request->getVar('nom_uni'),
			'sig_uni' => $request->getVar('sig_uni') ?? null,

		];
		// print_r($data);
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_uni' => $id,
			'nom_uni' => $request->getVar('nom_uni'),
			'sig_uni' => $request->getVar('sig_uni') ?? null,

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
		$array = ["cod_uni as value", "nom_uni as name", "sig_uni"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 01-29-2025 04:58:51 pm */