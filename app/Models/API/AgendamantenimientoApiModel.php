<?php

namespace App\Models\api;

use CodeIgniter\Model;
use App\Models\api\EquiposApiModel;
use App\Models\GaleriaimagenesdetalleApiModel;

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
	protected $allowedFields        = ["cod_ama as id", "fec_ama", "tip_ama", "des_ama", "cod_equ_ama", "sta_ama", "id_equ_ama"];

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
		$array = ["cod_ama as id", "fec_ama", "tip_ama", "des_ama", "cod_equ_ama", "sta_ama", "qr_equ", "cod_cli_equ", "nom_cli", "id_equ_ama"];
		if ($id == 0) {
			$data = $this->select($array)->join('equipos', 'equipos.qr_equ = agendamantenimiento.cod_equ_ama', 'left')->join('cliente', 'equipos.cod_cli_equ = cliente.cod_cli', 'left')->findAll();
		} else {
			$data = $this->select($array)->join('equipos', 'equipos.qr_equ = agendamantenimiento.cod_equ_ama', 'left')->join('cliente', 'equipos.cod_cli_equ = cliente.cod_cli', 'left')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$idEqiopo = $this->buscarCodigoEquipo($request->getVar('cod_equ_ama'));

		$data = [
			'fec_ama' => $request->getVar('fec_ama'),
			'tip_ama' => $request->getVar('tip_ama'),
			'des_ama' => $request->getVar('des_ama'),
			'cod_equ_ama' => $request->getVar('cod_equ_ama'),
			'id_equ_ama' => $idEqiopo,
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

	public function listaMantenimientosEqipos($codigoEquipo)
	{
		$array = ["cod_ama as id", "fec_ama", "tip_ama", "des_ama", "cod_equ_ama", "sta_ama"];
		$data = $this->select($array)->where('id_equ_ama', $codigoEquipo)->findAll();
		foreach ($data as $key => $value) {
			// echo $value['id'] ;
			$this->galiarMantenimiento($value['id']);
			$data[$key]['galeria'] = $this->galiarMantenimiento($value['id']);
		}
		// $data['galeria' ]=  $data;
		// echo $this->getLastQuery();
		return $data;
	}

	public function galiarMantenimiento($codigoMantenimiento)
	{
		$galeria = new  GaleriaimagenesdetalleApiModel();
		$data = $galeria->select('img_dal')->where('sec_dal', $codigoMantenimiento)->findAll();
		return $data;
		
	}


	public function buscarCodigoEquipo($qr = '')
	{
		$EquiposApiModel = new  EquiposApiModel();
		$data = $EquiposApiModel->select('cod_equ')->where('qr_equ', $qr)->first();
		// echo count($data)."yyyy";
		if (count($data) > 0) {
			return $data['cod_equ'];
		} else {
			return 0;
		}
	}

		public function informecliente($codigoCliente)
	{
		$array = ["cod_ama as id", "fec_ama", "tip_ama", "cod_equ_ama", "sta_ama",'id_equ_ama','cod_cli_equ', 'cod_sed_equ','cod_ubi_equ' ];
		$data = $this->select($array)->join('equipos', 'equipos.cod_equ = agendamantenimiento.id_equ_ama')->where('cod_cli_equ', $codigoCliente)->find();
		// print_r($data);
		// foreach ($data as $key => $value) {
		// 	// echo $value['id'] ;
		// 	$this->galiarMantenimiento($value['id']);
		// 	$data[$key]['galeria'] = $this->galiarMantenimiento($value['id']);
		// }
		// $data['galeria' ]=  $data;
		// echo $this->getLastQuery();
		return $data;
	}
}
/* fecha de creacion: 07-24-2025 02:17:07 pm */