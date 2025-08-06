<?php

namespace App\Models\api;

use CodeIgniter\Model;

class AgendamantenimientoApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'agendamantenimiento';
	protected $primaryKey           = 'cod_ama';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_ama as id", "fec_ama", "tip_ama", "des_ama", "cod_equ_ama", "sta_ama"];

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
		$array = ["cod_ama as id", "fec_ama", "tip_ama", "des_ama", "cod_equ_ama", "sta_ama", "qr_equ","cod_cli_equ","nom_cli"];
		if ($id == 0) {
			$data = $this->select($array)->join('equipos', 'equipos.qr_equ = agendamantenimiento.cod_equ_ama', 'left')->join('cliente', 'equipos.cod_cli_equ = cliente.cod_cli', 'left')->findAll();
		} else {
			$data = $this->select($array)->join('equipos', 'equipos.qr_equ = agendamantenimiento.cod_equ_ama', 'left')->join('cliente', 'equipos.cod_cli_equ = cliente.cod_cli', 'left')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'fec_ama' => $request->getVar('fec_ama'),
			'tip_ama' => $request->getVar('tip_ama'),
			'des_ama' => $request->getVar('des_ama'),
			'cod_equ_ama' => $request->getVar('cod_equ_ama'),
			'sta_ama' => $request->getVar('sta_ama')
			];
			$id = $this->insert($data);
			return $id;
			// print_r($data);
			return 1;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_ama' => $id,
			'fec_ama' => $request->getVar('fec_ama'),
			'tip_ama' => $request->getVar('tip_ama'),
			'des_ama' => $request->getVar('des_ama'),
			'cod_equ_ama' => $request->getVar('cod_equ_ama'),
			'sta_ama' => $request->getVar('sta_ama')

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
		$array = ["cod_ama as id", "fec_ama", "tip_ama", "des_ama", "cod_equ_ama", "sta_ama"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 07-24-2025 02:17:07 pm */