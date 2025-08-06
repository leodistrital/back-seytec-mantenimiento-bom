<?php

namespace App\Models;

use CodeIgniter\Model;

class CifrasModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'cifras';
	protected $primaryKey           = 'cod_cif';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ['tit_cif_esp', 'tit_cif_ing', 'fec_cif', 'dec_cif_esp', 'dec_cif_ing', 'img_cif', 'cod_men_cif', 'ord_cif'];

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

		$array = ['cod_cif as id', 'tit_cif_esp', 'tit_cif_ing', 'fec_cif', 'dec_cif_esp', 'dec_cif_ing', 'img_cif', 'cod_men_cif', 'ord_cif', 'nom_men_esp'];

		if ($id == 0) {
			$data = $this->select($array)->join('menus', 'menus.cod_men=cod_men_cif')->orderBy('cod_men_cif', 'ASC')->findAll();
		} else {
			$data = $this->select($array)->join('menus', 'menus.cod_men=cod_men_cif')->orderBy('cod_men_cif', 'ASC')->find($id);
		}

		return $data;
	}

	public function guardar($request)
	{
		$data = [
			// 'nom_ite' => $request->getVar('nombre'),
			// 'des_ite' => $request->getVar('descripcion'),
			// 'cod_uni_ite' => $request->getVar('unidad'),
			// 'fac_ite' => $request->getVar('factor'),
			// 'pre_ite' => $request->getVar('precio'),
			'tit_cif_esp' => $request->getVar('tit_cif_esp'),
			'tit_cif_ing' => $request->getVar('tit_cif_ing'),
			'fec_cif' => $request->getVar('fec_cif'),
			'dec_cif_esp' => $request->getVar('dec_cif_esp'),
			'dec_cif_ing' => $request->getVar('dec_cif_ing'),
			'img_cif' => $request->getVar('img_cif'),
			'cod_men_cif' => $request->getVar('cod_men_cif'),
			'ord_cif' => $request->getVar('ord_cif')
		];

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
			'cod_cif' => $id,
			'tit_cif_esp' => $request->getVar('tit_cif_esp'),
			'tit_cif_ing' => $request->getVar('tit_cif_ing'),
			'fec_cif' => $request->getVar('fec_cif'),
			'dec_cif_esp' => $request->getVar('dec_cif_esp'),
			'dec_cif_ing' => $request->getVar('dec_cif_ing'),
			'img_cif' => $request->getVar('img_cif'),
			'cod_men_cif' => $request->getVar('cod_men_cif'),
			'ord_cif' => $request->getVar('ord_cif')
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

	public function lista($menu)
	{
		$array = ['cod_cif as id', 'tit_cif_esp', 'tit_cif_ing', 'fec_cif', 'dec_cif_esp', 'dec_cif_ing', 'img_cif', 'cod_men_cif', 'ord_cif', 'nom_men_esp'];
		$data = $this->select($array)->join('menus', 'menus.cod_men=cod_men_cif')->where('cod_men_cif', $menu)->orderBy('ord_cif', 'ASC')->findAll();
		//print_r($data);
		return $data;
	}
}
