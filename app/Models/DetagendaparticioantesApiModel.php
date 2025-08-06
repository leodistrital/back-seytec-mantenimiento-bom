<?php
namespace App\Models;

use CodeIgniter\Model;

class DetagendaparticioantesApiModel extends Model
{
	protected $DBGroup = 'default';
	protected $table = 'detagendaparticioantes';
	protected $primaryKey = 'cod_dap';
	protected $useAutoIncrement = true;
	protected $insertID = 0;
	protected $returnType = 'array';
	protected $useSoftDeletes = false;
	protected $protectFields = true;
	protected $allowedFields = ["cod_age_dap", "cod_acr_dap"];

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
		$array = ["cod_age_dap", "cod_acr_dap"];
		if ($id == 0) {
			$data = $this->select($array)->findAll();
		} else {
			$data = $this->select($array)->find($id);
		}
		return $data;
	}
	public function listatardatosCard($id = 0)
	{
		$array = ["cod_age_dap", "cod_acr_dap", 'fotoacreditacion', 'cod_acr_dap as id', "concat(nombre, ' ',apellido) as nombre", "nombreempresa", "cargoempresa", "fotoacreditacion", "seleccionado", "categoriaseleccion"];
		// $array = ["cod_reg as id", "concat(nombre, ' ',apellido) as nombre", "nombreempresa", "cargoempresa", "fotoacreditacion", "finacreditacion", "seleccionado", "categoriaseleccion"];
		$data = $this->select($array)->join('acr_registo', 'acr_registo.cod_reg = cod_acr_dap')->where('cod_age_dap', $id)->find();
		// print_r($this->db->showLastQuery());
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'cod_age_dap' => $request->getVar('cod_age_dap')
			,
			'cod_acr_dap' => $request->getVar('cod_acr_dap')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_dap' => $id,
			'cod_age_dap' => $request->getVar('cod_age_dap')
			,
			'cod_acr_dap' => $request->getVar('cod_acr_dap')

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
		$array = ["cod_age_dap", "cod_acr_dap"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 05-29-2024 02:45:06 pm */