<?php

namespace App\Models\api;

use CodeIgniter\Model;

class SedesApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'sedes';
	protected $primaryKey           = 'cod_sed';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_sed as id", "nom_sed", "cod_cli_sed", "dir_sed", "cod_mun_sed", 'tel_sed' ,'cod_ciu_sed'];

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
		$array = ["cod_sed as id", "nom_sed", "cod_cli_sed", "dir_sed", "cod_mun_sed", 'nom_mun', 'tel_sed', 'cod_ciu_sed','nom_cli'];
		if ($id == 0) {
			$data = $this->select($array)->join('cliente', 'sedes.cod_cli_sed = cliente.cod_cli', 'left')->join('municipios', 'sedes.cod_mun_sed = municipios.cod_mun', 'left')->findAll();
			// echo $this->getLastQuery();
		} else {
			$data = $this->select($array)->join('cliente', 'sedes.cod_cli_sed = cliente.cod_cli', 'left')->join('municipios', 'sedes.cod_mun_sed = municipios.cod_mun', 'left')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'nom_sed' => $request->getVar('nom_sed'),
			'cod_cli_sed' => $request->getVar('cod_cli_sed'),
			'dir_sed' => $request->getVar('dir_sed'),
			'cod_mun_sed' => $request->getVar('cod_mun_sed'),
			'tel_sed' => $request->getVar('tel_sed'),
			'cod_ciu_sed' => $request->getVar('cod_ciu_sed')

		];
		// var_dump($data);
		$id = $this->insert($data);
		return $id;
		// return 1;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_sed' => $id,
			'nom_sed' => $request->getVar('nom_sed'),
			'cod_cli_sed' => $request->getVar('cod_cli_sed'),
			'dir_sed' => $request->getVar('dir_sed'),
			'cod_mun_sed' => $request->getVar('cod_mun_sed'),
			'tel_sed' => $request->getVar('tel_sed'),
			'cod_ciu_sed' => $request->getVar('cod_ciu_sed')

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
		$array = ["cod_sed as value", "nom_sed as name" , "cod_cli_sed", "dir_sed", "cod_mun_sed"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 12-18-2024 02:40:40 pm */