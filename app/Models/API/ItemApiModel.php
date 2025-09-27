<?php

namespace App\Models\api;

use CodeIgniter\Model;

class ItemApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'item';
	protected $primaryKey           = 'cod_ite';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ['nom_ite' ,'des_ite', 'cod_uni_ite', 'des_ite' , 'mar_ite' , 'pre_ite' ,'ser_ite', 'pro_ite','iva_ite' ];

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

		$array = ['cod_ite as id'   ,'nom_ite', ' pre_ite', 'cod_uni_ite unidad', 'ser_ite', "concat(nom_ite, ' - ',ser_ite) as dataselector", 'mar_ite', 'nom_uni', 'cod_uni_ite', 'iva_ite' ];
		
		if ($id == 0) {
			$data = $this->select($array)->join('unidadesmedida' ,'cod_uni_ite=cod_uni', 'left' )->findAll();
		} else {
			$data = $this->select($array)->join('unidadesmedida' ,'cod_uni_ite=cod_uni', 'left' )->find($id);
		}

		return $data;
	}

	public function guardar($request)
	{
		

		$data = [
			'ser_ite' => $request->getVar('ser_ite'),
			'nom_ite' => $request->getVar('nom_ite'),
			'mar_ite' => $request->getVar('mar_ite'),
			'cod_uni_ite' => $request->getVar('cod_uni_ite'),
			'pre_ite' => $request->getVar('pre_ite'),
			'iva_ite' => $request->getVar('iva_ite'),
		];

		// print_r($data);

		$codigo  = $request->getVar('codigo');

		if ($codigo == 0) {
			$id = $this->insert($data);
		}
		if ($codigo > 0) {
			$id = $this->edicion($codigo, $data);
		}
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_ite' => $id,
			'ser_ite' => $request->getVar('ser_ite'),
			'nom_ite' => $request->getVar('nom_ite'),
			'mar_ite' => $request->getVar('mar_ite'),
			'cod_uni_ite' => $request->getVar('cod_uni_ite'),
			'pre_ite' => $request->getVar('pre_ite'),
			'iva_ite' => $request->getVar('iva_ite'),
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


}
/* fecha de creacion: 01-29-2025 05:05:40 pm */