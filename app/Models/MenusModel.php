<?php

namespace App\Models;

use CodeIgniter\Model;

class MenusModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'menus';
	protected $primaryKey           = 'cod_men';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = true;
	protected $protectFields        = true;
	protected $allowedFields        = ['cod_men' , 'slu_men', 'nom_men_esp' , 'ord_men'   ];

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

		$array = ['cod_men', 'slu_men', 'nom_men_esp', 'ord_men' ,'rut_men'];

		if ($id <1) {
			$data = $this->select($array)->where('pad_men',0)->findAll();
		}
		 else {
			$data = $this->select($array)->where('pad_men', $id)->orderBy('ord_men asc')->findAll();
		}

		//echo $this->lastQuery;

		return $data;
	}
}