<?php
namespace App\Models\api;
use CodeIgniter\Model;

class Tipo_equipoApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'tipo_equipo';
	protected $primaryKey           = 'cod_teq';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_teq as id","nom_teq","cod_tsi_teq","dma_teq"];

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
		$array = ["cod_teq as id","nom_teq","cod_tsi_teq","dma_teq", 'nom_tsi'];
		if ($id == 0) {
			$data = $this->select($array)->join('tipo_sistema', 'tipo_sistema.cod_tsi = tipo_equipo.cod_tsi_teq', 'left')->findAll();
		} else {
			$data = $this->select($array)->join('tipo_sistema', 'tipo_sistema.cod_tsi = tipo_equipo.cod_tsi_teq', 'left')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'nom_teq' => $request->getVar('nom_teq')
,'cod_tsi_teq' => $request->getVar('cod_tsi_teq')
,'dma_teq' => $request->getVar('dma_teq')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_teq' => $id,
			'nom_teq' => $request->getVar('nom_teq')
,'cod_tsi_teq' => $request->getVar('cod_tsi_teq')
,'dma_teq' => $request->getVar('dma_teq')

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
		$array = ["cod_teq as value","nom_teq as name","cod_tsi_teq","dma_teq"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 12-19-2024 04:31:11 pm */