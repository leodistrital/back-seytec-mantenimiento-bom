<?php

namespace App\Models;

use CodeIgniter\Model;

class AgendaubicacionApiModel extends Model
{
	protected $DBGroup = 'default';
	protected $table = 'agendaubicacion';
	protected $primaryKey = 'cod_ubi';
	protected $useAutoIncrement = true;
	protected $insertID = 0;
	protected $returnType = 'array';
	protected $useSoftDeletes = true;
	protected $protectFields = true;
	protected $allowedFields = ["cod_ubi as id", "nom_ubi", "cod_lug_ubi", "des_ubi", "des_ubi_ing"];

	// Dates
	protected $useTimestamps = true;
	protected $dateFormat = 'datetime';
	protected $createdField = 'created_at';
	protected $updatedField = 'updated_at';
	protected $deletedField = 'deleted_at';

	// Validation
	protected $validationRules = [];
	protected $validationMessages = [];
	protected $skipValidation = false;
	protected $cleanValidationRules = true;

	// Callbacks
	protected $allowCallbacks = true;
	protected $beforeInsert = [];
	protected $afterInsert = [];
	protected $beforeUpdate = [];
	protected $afterUpdate = [];
	protected $beforeFind = [];
	protected $afterFind = [];
	protected $beforeDelete = [];
	protected $afterDelete = [];

	public function listatardatos($id = 0)
	{
		$array = ["cod_ubi as id", "nom_ubi", "cod_lug_ubi", "des_ubi", "des_ubi_ing", "nom_lug as lugar"];
		if ($id == 0) {
			$data = $this->select($array)->join('agendalugares', 'cod_lug_ubi=cod_lug')->orderBy('nom_lug')->findAll();
		} else {
			$data = $this->select($array)->join('agendalugares', 'cod_lug_ubi=cod_lug')->orderBy('nom_lug')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'nom_ubi' => $request->getVar('nom_ubi'),
			'cod_lug_ubi' => $request->getVar('cod_lug_ubi'),
			'des_ubi' => $request->getVar('des_ubi'),
			'des_ubi_ing' => $request->getVar('des_ubi_ing')

		];
		// print_r($data);
		// return 1;
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_ubi' => $id,
			'nom_ubi' => $request->getVar('nom_ubi'),
			'cod_lug_ubi' => $request->getVar('cod_lug_ubi'),
			'des_ubi' => $request->getVar('des_ubi'),
			'des_ubi_ing' => $request->getVar('des_ubi_ing')

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
		$array = ["cod_ubi as value", "nom_ubi as name", "cod_lug_ubi"];
		$data = $this->select($array)->findAll();
		return $data;
	}


	public function lugardisponible($request)
	{

		$data = [
			[
				'disponible' => 0,
			]
		];
		$agenda = new AgendamientoApiModel();
		$intervaloInicial = $request->getVar('hor_ini_age') * 60 + $request->getVar('min_ini_age');
		$intervaloFinal = $request->getVar('hor_fin_age') * 60 + $request->getVar('min_fin_age');
		$ubicacion = $request->getVar('cod_ubi_age'); //cod_ubi_age
		$fecha = $request->getVar('fec_age'); //fec_age
		$idRegistro = $request->getVar('id');


		//casso 1 fin >62 and fin <184
		$wherecaso1 = ['int_ini_age>' => $intervaloInicial, 'int_ini_age <' => $intervaloFinal, 'int_fin_age>' => $intervaloFinal, 'cod_ubi_age' => $ubicacion, 'fec_age' => $fecha, 'cod_age!=' => $idRegistro];
		$caso1data = $agenda->where($wherecaso1)->find();
		// echo $agenda->getLastQuery();

/*
		 if ($caso1data) {
		 	echo "caso 1";
			 echo $agenda->getLastQuery();
		 }*/

		//caso 2 ini < 62 and fin > 62
		// 	  90 > 62 and  and 120 < 184
		$wherecaso2 = ['int_ini_age >' => $intervaloInicial, 'int_fin_age >' => $intervaloFinal, 'int_ini_age<' => $intervaloFinal, 'cod_ubi_age' => $ubicacion, 'fec_age' => $fecha, 'cod_age!=' => $idRegistro];
		$caso2data = $agenda->where($wherecaso2)->find();
		// echo $agenda->getLastQuery();
		/* if ($caso2data) {
		 	echo "caso 2";
			 echo $agenda->getLastQuery();
		 }*/


		//caso 3 
		// 	  120 > 62 and  and 120 < 184 
		$wherecaso3 = ['int_ini_age <=' => $intervaloInicial, 'int_fin_age >=' => $intervaloInicial, 'cod_ubi_age' => $ubicacion, 'fec_age' => $fecha, 'cod_age!=' => $idRegistro];
		$caso3data = $agenda->where($wherecaso3)->find();
		// echo $agenda->getLastQuery();
		/*if ($caso3data) {
		 	echo "caso 3";
			 echo $agenda->getLastQuery();
		 }*/

		//caso 4

		$wherecaso4 = ['int_ini_age >=' => $intervaloInicial, 'int_fin_age <=' => $intervaloFinal, 'cod_ubi_age' => $ubicacion, 'fec_age' => $fecha, 'cod_age!=' => $idRegistro];
		$caso4data = $agenda->where($wherecaso4)->find();
		// echo $agenda->getLastQuery();
		/*if ($caso4data) {
		 	echo "caso 4";
			 echo $agenda->getLastQuery();
		 }
*/


		if ($caso1data || $caso2data || $caso3data || $caso4data) {
			$data = [
				[
					'disponible' => 1,
				]
			];
		}

		return $data[0];
	}


	public function personadisponible($request)
	{


		// echo "oersinado";
		$data = [
			[
				'disponible' => 0,
			]
		];
		$agenda = new AgendamientoApiModel();
		$intervaloInicial = $request->getVar('hor_ini_age') * 60 + $request->getVar('min_ini_age');
		$intervaloFinal = $request->getVar('hor_fin_age') * 60 + $request->getVar('min_fin_age');
		$persona = $request->getVar('idacreditado'); //cod_ubi_age
		$fecha = $request->getVar('fec_age'); //fec_age
	

		//casso 1 fin >62 and fin <184
		$wherecaso1 = ['int_ini_age>' => $intervaloInicial, 'int_ini_age <' => $intervaloFinal, 'int_fin_age>' => $intervaloFinal, 'cod_acr_dap' => $persona, 'fec_age' => $fecha  ];
		$caso1data = $agenda->join('detagendaparticioantes', 'cod_age_dap=cod_age')->where($wherecaso1)->where('detagendaparticioantes.deleted_at IS NULL',null,false)->find();

		/*
		 if ($caso1data) {
		 	echo "caso 1";
			 echo $agenda->getLastQuery();
		 }*/


		//caso 2 ini < 62 and fin > 62
		// 	  90 > 62 and  and 120 < 184
		$wherecaso2 = ['int_ini_age >' => $intervaloInicial, 'int_fin_age >' => $intervaloFinal, 'int_ini_age<' => $intervaloFinal, 'cod_acr_dap' => $persona, 'fec_age' => $fecha ];
		$caso2data = $agenda->join('detagendaparticioantes', 'cod_age_dap=cod_age')->where($wherecaso2)->where('detagendaparticioantes.deleted_at IS NULL',null,false)->find();
		// echo $agenda->getLastQuery();
		/* if ($caso2data) {
		 	echo "caso 2";
		 	echo $agenda->getLastQuery();
		 }*/


		//caso 3 
		// 	  120 > 62 and  and 120 < 184 
		$wherecaso3 = ['int_ini_age <=' => $intervaloInicial, 'int_fin_age >=' => $intervaloInicial, 'cod_acr_dap' => $persona, 'fec_age' => $fecha];
		$caso3data = $agenda->join('detagendaparticioantes', 'cod_age_dap=cod_age')->where($wherecaso3)->where('detagendaparticioantes.deleted_at IS NULL',null,false)->find();
		 /*if ($caso3data) {
		 	echo "caso 3";
		 	echo $agenda->getLastQuery();
		 }*/
		// echo $agenda->getLastQuery();

		//caso 4

		$wherecaso4 = ['int_ini_age >=' => $intervaloInicial, 'int_fin_age <=' => $intervaloFinal, 'cod_acr_dap' => $persona, 'fec_age' => $fecha];
		$caso4data = $agenda->join('detagendaparticioantes', 'cod_age_dap=cod_age')->where($wherecaso4)->where('detagendaparticioantes.deleted_at IS NULL',null,false)->find();
		/* if ($caso4data) {
		 	echo "caso 4";
		 	echo $agenda->getLastQuery();
		 }*/
		



		if ($caso1data || $caso2data || $caso3data || $caso4data) {
			$data = [
				[
					'disponible' => 1,
				]
			];
		}

		return $data[0];
	}
}
/* fecha de creacion: 05-29-2024 04:08:18 pm */