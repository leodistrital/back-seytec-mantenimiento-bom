<?php

namespace App\Models\api;

use CodeIgniter\Model;

class EquiposApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'equipos';
	protected $primaryKey           = 'cod_equ';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_equ as id", "nom_equ", "cod_cli_equ", "cod_sed_equ", "cod_teq_equ", "ser_equ", "mar_equ", "pro_equ", "mac_equ", "rak_equ", "ubi_equ", "tab_equ", "cto_equ", "pan_equ", "not_equ", "cod_ubi_equ", "qr_equ"];

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
		$array = ["cod_equ as id", "nom_equ", "cod_cli_equ", "cod_sed_equ", "cod_teq_equ", "ser_equ", "mar_equ", "pro_equ", "mac_equ", "rak_equ", "ubi_equ", "tab_equ", "cto_equ", "pan_equ", "not_equ", "cod_ubi_equ", "cliente.nom_cli as cliente", "ubicacaciones.nom_ubi as ubicacion", "sedes.nom_sed as sede", "tipo_equipo.nom_teq as tipo_equipo", "qr_equ"];
		if ($id == 0) {
			$data = $this->select($array)->join('ubicacaciones', 'equipos.cod_ubi_equ = ubicacaciones.cod_ubi', 'left')
			->join('sedes', 'equipos.cod_sed_equ = sedes.cod_sed', 'left')
			->join('tipo_equipo', 'equipos.cod_teq_equ = tipo_equipo.cod_teq', 'left')
			->join('cliente', 'equipos.cod_cli_equ = cliente.cod_cli', 'left')->findAll();
		} else {
			$data = $this->select($array)->join('ubicacaciones', 'equipos.cod_ubi_equ = ubicacaciones.cod_ubi', 'left')
				->join('sedes', 'equipos.cod_sed_equ = sedes.cod_sed'	, 'left')
				->join('tipo_equipo', 'equipos.cod_teq_equ = tipo_equipo.cod_teq', 'left')
				->join('cliente', 'equipos.cod_cli_equ = cliente.cod_cli', 'left')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{
		echo "llego a guardar";
		$data = [
			'nom_equ' => $request->getVar('nom_equ'),
			'cod_cli_equ' => $request->getVar('cod_cli_equ'),
			'cod_sed_equ' => $request->getVar('cod_sed_equ'),
			'cod_teq_equ' => $request->getVar('cod_teq_equ'),
			'ser_equ' => $request->getVar('ser_equ'),
			'mar_equ' => $request->getVar('mar_equ'),
			'pro_equ' => $request->getVar('pro_equ'),
			'mac_equ' => $request->getVar('mac_equ'),
			'rak_equ' => $request->getVar('rak_equ'),
			// 'ubi_equ' => $request->getVar('ubi_equ'),
			'tab_equ' => $request->getVar('tab_equ'),
			// 'cto_equ' => $request->getVar('cto_equ'),
			'pan_equ' => $request->getVar('pan_equ'),
			'not_equ' => $request->getVar('not_equ'),
			'cod_ubi_equ' => $request->getVar('cod_ubi_equ'),
			'qr_equ' => $request->getVar('qr_equ')

		];

		// print_r($data);
		// exit();
		$id = $this->insert($data);
		return $id;
		// return 1;

	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_equ' => $id,
			'nom_equ' => $request->getVar('nom_equ'),
			'cod_cli_equ' => $request->getVar('cod_cli_equ'),
			'cod_sed_equ' => $request->getVar('cod_sed_equ'),
			'cod_teq_equ' => $request->getVar('cod_teq_equ'),
			'ser_equ' => $request->getVar('ser_equ'),
			'mar_equ' => $request->getVar('mar_equ'),
			'pro_equ' => $request->getVar('pro_equ'),
			'mac_equ' => $request->getVar('mac_equ'),
			'rak_equ' => $request->getVar('rak_equ'),
			// 'ubi_equ' => $request->getVar('ubi_equ'),
			'tab_equ' => $request->getVar('tab_equ'),
			// 'cto_equ' => $request->getVar('cto_equ'),
			'pan_equ' => $request->getVar('pan_equ'),
			'not_equ' => $request->getVar('not_equ'),
			'cod_ubi_equ' => $request->getVar('cod_ubi_equ'),
			'qr_equ' => $request->getVar('qr_equ')

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
		$array = ["cod_equ as id", "nom_equ", "cod_cli_equ", "cod_sed_equ", "cod_teq_equ", "ser_equ", "mar_equ", "pro_equ", "mac_equ", "rak_equ", "ubi_equ", "tab_equ", "cto_equ", "pan_equ", "not_equ", "cod_ubi_equ"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 01-16-2025 02:35:47 pm */