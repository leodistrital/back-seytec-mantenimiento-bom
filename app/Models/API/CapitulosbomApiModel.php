<?php

namespace App\Models\api;

use CodeIgniter\Model;

class CapitulosbomApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'capitulosbom';
	protected $primaryKey           = 'cod_cbo';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_cbo as id", "cod_bom_cbo", "nom_cbo", "can_cbo", "tip_cbo"];

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
		$array = ["cod_cbo as id", "cod_bom_cbo", "nom_cbo", "can_cbo", "tip_cbo"];
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
			'cod_bom_cbo' => $request->getVar('codigoBom'),
			'nom_cbo' => $request->getVar('nom_cbo'),
			'can_cbo' => $request->getVar('cantidad'),
			'tip_cbo' => $request->getVar('codigoCapitulo')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_cbo' => $id,
			'cod_bom_cbo' => $request->getVar('cod_bom_cbo'),
			'nom_cbo' => $request->getVar('nom_cbo'),
			'can_cbo' => $request->getVar('can_cbo'),
			'tip_cbo' => $request->getVar('tip_cbo')

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

	public function consultarapu($idapu)
	{
		$array = ["cod_cbo as id", "cod_bom_cbo", "nom_cbo", "can_cbo", "tip_cbo"];
		$arraywhere = ['cod_bom_cbo' => $idapu];
		$data = $this->select($array)->where($arraywhere)->find();
		return $data;
	}
}
/* fecha de creacion: 10-08-2025 02:07:03 pm */