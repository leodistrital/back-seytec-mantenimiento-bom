<?php

namespace App\Models;

use CodeIgniter\Model;

class ContenidoModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'contenidos';
	protected $primaryKey           = 'cod_con';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ['img_con', 'tit_con_esp', 'tit_con_esp', 'des_con_esp', 'des_con_ing', 'vid_con', 'cod_men_con', 'doc_con_esp', 'doc_con_ing'];

	// Dates
	protected $useTimestamps        = false;
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

		$array = ['cod_con as id', 'img_con', 'tit_con_esp', 'tit_con_esp', 'des_con_esp', 'des_con_ing', 'vid_con', 'cod_men_con', 'doc_con_esp', 'doc_con_ing', 'nom_men_esp as nombreMenu'];

		if ($id == 0) {
			$data = $this->select($array)->join('menus', 'menus.cod_men=contenidos.cod_men_con')->findAll();
		} else {
			$data = $this->select($array)->join('menus', 'menus.cod_men=contenidos.cod_men_con')->find($id);
		}

		return $data;
	}

	public function guardar($request)
	{
		$data = [
			'img_con' => $request->getVar('img_con'),
			'tit_con_esp' => $request->getVar('tit_con_esp'),
			'des_con_esp' => $request->getVar('des_con_esp'),
			'des_con_ing' => $request->getVar('des_con_ing'),
			'vid_con' => $request->getVar('vid_con'),
			'cod_men_con' => $request->getVar('cod_men_con'),
			'doc_con_esp' => $request->getVar('doc_con_esp'),
			'doc_con_ing' => $request->getVar('doc_con_ing'),
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
			'cod_con' => $id,
			'img_con' => $request->getVar('img_con'),
			'tit_con_esp' => $request->getVar('tit_con_esp'),
			'des_con_esp' => $request->getVar('des_con_esp'),
			'des_con_ing' => $request->getVar('des_con_ing'),
			'vid_con' => $request->getVar('vid_con'),
			'cod_men_con' => $request->getVar('cod_men_con'),
			'doc_con_esp' => $request->getVar('doc_con_esp'),
			'doc_con_ing' => $request->getVar('doc_con_ing'),
		];


		// print_r($data);

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


	public function getContenido($slug = '')
	{
		$array = ['cod_con as id', 'img_con', 'tit_con_esp', 'tit_con_esp', 'des_con_esp', 'des_con_ing', 'vid_con', 'cod_men_con', 'doc_con_esp', 'doc_con_ing', 'nom_men_esp as nombreMenu', 'pla_men'];
		$data = $this->select($array)->join('menus', 'menus.cod_men=contenidos.cod_men_con')->where('menus.slu_men=',$slug)->find();
		// echo $this->getLastQuery();
		//getCompiledSelect()
		//print_r($data);
		// echo "leo";
		// exit;
		return $data;
	}
}
