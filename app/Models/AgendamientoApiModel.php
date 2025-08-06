<?php

namespace App\Models;

use CodeIgniter\Model;

class AgendamientoApiModel extends Model
{
	protected $DBGroup = 'default';
	protected $table = 'agendamiento';
	protected $primaryKey = 'cod_age';
	protected $useAutoIncrement = true;
	protected $insertID = 0;
	protected $returnType = 'array';
	protected $useSoftDeletes = false;
	protected $protectFields = true;
	protected $allowedFields = ["cod_age as id", "fec_age", "dia_age", "hor_ini_age", "min_ini_age", "hor_fin_age", "min_fin_age", "cod_lug_age", "cod_ubi_age", "tip_age", "not_age", "not_age_ing", "tit_age", "int_ini_age", "int_fin_age"];

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
		

		$array = ["cod_age as id", "fec_age",  "int_ini_age", "int_fin_age", 'nom_tag', 'col_tag', 'nom_lug', 'nom_ubi', "concat(LPAD(hor_ini_age,2,'0'),':',LPAD(min_ini_age,2,'0'), ' - ',LPAD(hor_fin_age,2,'0'), ':',LPAD(min_fin_age,2,'0') ) as horario"];
		if ($id == 0) {
			$data = $this->select($array)->join('agendatipo', 'cod_tag = tip_age', 'left')->join('agendalugares', 'cod_lug = cod_lug_age')->join('agendaubicacion', 'cod_ubi = cod_ubi_age', 'left')->findAll();
			// echo $this->getLastQuery();
			foreach ($data as $key => $value) {
				$data[$key]['participantes'] = $this->buscarParticipantes($value['id']);
			}
		} else {

			$array = ["cod_age as id", "fec_age", "dia_age", "hor_ini_age", "min_ini_age", "hor_fin_age", "min_fin_age", "cod_lug_age", "cod_ubi_age", "tip_age", "not_age", "not_age_ing", "tit_age", "int_ini_age", "int_fin_age", 'nom_tag', 'col_tag', 'nom_lug', 'nom_ubi', "concat(LPAD(hor_ini_age,2,'0'),':',LPAD(min_ini_age,2,'0'), ' - ',LPAD(hor_fin_age,2,'0'), ':',LPAD(min_fin_age,2,'0') ) as horario"];
			$data = $this->select($array)->join('agendatipo', 'cod_tag = tip_age', 'left')->join('agendalugares', 'cod_lug = cod_lug_age')->join('agendaubicacion', 'cod_ubi = cod_lug_age')->find($id);
			$data['participantes'] = $this->buscarParticipantes($id);
		}

		return $data;
	}

	public function buscarParticipantes($idCita)
	{
		// echo $idCita;
		$detalle = new DetagendaparticioantesApiModel();
		return $Participantes = $detalle->listatardatosCard($idCita);
		// print_r($Participantes);
	}

	public function guardar($request)
	{

		// print_r($request->getVar('listado'));
		$data = [
			'fec_age' => $request->getVar('fec_age'),
			'dia_age' => $request->getVar('dia_age'),
			'hor_ini_age' => $request->getVar('hor_ini_age'),
			'min_ini_age' => $request->getVar('min_ini_age'),
			'hor_fin_age' => $request->getVar('hor_fin_age'),
			'min_fin_age' => $request->getVar('min_fin_age'),
			'cod_lug_age' => $request->getVar('cod_lug_age'),
			'cod_ubi_age' => $request->getVar('cod_ubi_age'),
			'tip_age' => $request->getVar('tip_age'),
			'not_age' => $request->getVar('not_age'),
			'not_age_ing' => $request->getVar('not_age_ing'),
			'tit_age' => $request->getVar('tit_age'),
			'int_ini_age' => $request->getVar('hor_ini_age') * 60 + $request->getVar('min_ini_age'),
			'int_fin_age' => $request->getVar('hor_fin_age') * 60 + $request->getVar('min_fin_age'),


		];
		// print_r($data);
		$id = $this->insert($data);
		$this->guardarAsistentes($id, $request->getVar('listado'));
		return $id;
	}

	public function guardarAsistentes($idcita, $participantes)
	{
		$detalle = new DetagendaparticioantesApiModel();
		$detalle->where('cod_age_dap', $idcita)->delete();
		if (!empty($participantes)) {
			$participantes = explode(",", $participantes);
			foreach ($participantes as $value) {
				// print_r($value);
				$data = [
					'cod_age_dap' => $idcita,
					'cod_acr_dap' => $value
				];
				$id = $detalle->insert($data);
			}
		}
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_age' => $id,
			'fec_age' => $request->getVar('fec_age'),
			'dia_age' => $request->getVar('dia_age'),
			'hor_ini_age' => $request->getVar('hor_ini_age'),
			'min_ini_age' => $request->getVar('min_ini_age'),
			'hor_fin_age' => $request->getVar('hor_fin_age'),
			'min_fin_age' => $request->getVar('min_fin_age'),
			'cod_lug_age' => $request->getVar('cod_lug_age'),
			'cod_ubi_age' => $request->getVar('cod_ubi_age'),
			'tip_age' => $request->getVar('tip_age'),
			'not_age' => $request->getVar('not_age'),
			'not_age_ing' => $request->getVar('not_age_ing'),
			'tit_age' => $request->getVar('tit_age'),
			'int_ini_age' => $request->getVar('int_ini_age'),
			'int_fin_age' => $request->getVar('int_fin_age'),


		];
		$confirmacion = $this->save($data);
		$this->guardarAsistentes($id, $request->getVar('listado'));

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
		$array = ["cod_age as id", "fec_age", "dia_age", "hor_ini_age", "min_ini_age", "hor_fin_age", "min_fin_age", "cod_lug_age", "cod_ubi_age", "tip_age", "not_age", "not_age_ing"];
		$data = $this->select($array)->findAll();
		return $data;
	}


	public function listatardatospersonas($id = 0)
	{

		// echo $id;

		$array = ["cod_age", "fec_age", "dia_age", "hor_ini_age", "min_ini_age", "hor_fin_age", "min_fin_age", "cod_lug_age", "cod_ubi_age", "tip_age", "not_age", "not_age_ing", "tit_age", "int_ini_age", "int_fin_age", 'nom_tag', 'col_tag', 'nom_lug', 'nom_ubi', "concat(LPAD(hor_ini_age,2,'0'),':',LPAD(min_ini_age,2,'0'), ' - ',LPAD(hor_fin_age,2,'0'), ':',LPAD(min_fin_age,2,'0') ) as horario", "concat(nom_reg, ' ', ape_reg) as nombre ", "cod_reg as id", 'fotoacreditacion', 'usu_reg'];

		if ($id == 0) {
			$data = $this->select($array)->join('agendatipo', 'cod_tag = tip_age', 'left')->join('agendalugares', 'cod_lug = cod_lug_age', 'left')->join('agendaubicacion', 'cod_ubi = cod_ubi_age', 'left')->join('detagendaparticioantes', 'cod_age = detagendaparticioantes.cod_age_dap')->join('acr_registo', 'cod_acr_dap = acr_registo.cod_reg')->groupBy("cod_acr_dap")->find();

		} else {
			$data = $this->select($array)->join('agendatipo', 'cod_tag = tip_age', 'left')->join('agendalugares', 'cod_lug = cod_lug_age', 'left')->join('agendaubicacion', 'cod_ubi = cod_ubi_age', 'left')->join('detagendaparticioantes', 'cod_age = detagendaparticioantes.cod_age_dap')->join('acr_registo', 'cod_acr_dap = acr_registo.cod_reg')->where('cod_reg', $id)->groupBy("fec_age")->find();

			// echo $this->getLastQuery();

			foreach ($data as $key => $value) {
				// echo $data[$key]['fec_age'];
				$data[$key]['citas'] = $this->listardia($data[$key]['fec_age'], $id);
				// $data[$key]['fec_age'] = $this->buscarParticipantes($value['cod_age']);
			}
			// echo $this->getLastQyuery();
			// $data['participantes'] = $this->buscarParticipantes($id);
		}

		// print_r($data);
		return $data;
	}


	public function listardia($fecha, $id)
	{

		// echo $fecha;
		$wherearray = ['fec_age' => $fecha, 'cod_reg' => $id];
		$array = ["cod_age", "fec_age", "dia_age", "hor_ini_age", "min_ini_age", "hor_fin_age", "min_fin_age", "cod_lug_age", "cod_ubi_age", "tip_age", "not_age", "not_age_ing", "tit_age", "int_ini_age", "int_fin_age", 'nom_tag', 'col_tag', 'nom_lug', 'nom_ubi', "concat(LPAD(hor_ini_age,2,'0'),':',LPAD(min_ini_age,2,'0'), ' - ',LPAD(hor_fin_age,2,'0'), ':',LPAD(min_fin_age,2,'0') ) as horario", "concat(nom_reg, ' ', ape_reg) as nombre ", "cod_reg as id", "cod_dap as detadigo"];
		$data = $this->select($array)->join('agendatipo', 'cod_tag = tip_age', 'left')->join('agendalugares', 'cod_lug = cod_lug_age', 'left')->join('agendaubicacion', 'cod_ubi = cod_ubi_age', 'left')->join('detagendaparticioantes', 'cod_age = detagendaparticioantes.cod_age_dap')->join('acr_registo', 'cod_acr_dap = acr_registo.cod_reg')->where($wherearray)->orderBy('min_ini_age desc')->find();
		// echo $this->getLastQuery();
		// print_r($data);

		// $data = $this->listatardatospersonas($id);
		return $data;
	}






}
/* fecha de creacion: 05-29-2024 04:47:21 pm */