<?php
namespace App\Models\api;
use CodeIgniter\Model;

class UbicacacionesApiModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'ubicacaciones';
	protected $primaryKey           = 'cod_ubi';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ["cod_ubi as id","nom_ubi","cod_cli_ubi"];

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
		$array = ["cod_ubi as id","nom_ubi","cod_cli_ubi","nom_cli as cliente"];
		if ($id == 0) {
			$data = $this->select($array)->join('cliente', 'ubicacaciones.cod_cli_ubi = cliente.cod_cli')->findAll();
		} else {
			$data = $this->select($array)->join('cliente', 'ubicacaciones.cod_cli_ubi = cliente.cod_cli')->find($id);
		}
		return $data;
	}

	public function guardar($request)
	{

		$data = [
			'nom_ubi' => $request->getVar('nom_ubi')
,'cod_cli_ubi' => $request->getVar('cod_cli_ubi')

		];
		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		$data = [
			'cod_ubi' => $id,
			'nom_ubi' => $request->getVar('nom_ubi')
,'cod_cli_ubi' => $request->getVar('cod_cli_ubi')

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
		$array = ["cod_ubi as value","nom_ubi as name","cod_cli_ubi"];
		$data = $this->select($array)->findAll();
		return $data;
	}
}
/* fecha de creacion: 01-16-2025 02:17:02 pm */