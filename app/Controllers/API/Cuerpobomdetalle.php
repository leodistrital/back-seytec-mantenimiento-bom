<?php

namespace App\Controllers\API;

use App\Models\api\CuerpobomdetalleApiModel;
use CodeIgniter\RESTful\ResourceController;

class Cuerpobomdetalle extends ResourceController
{
    protected $format    = 'json';

    public function __construct()
    {
        $this->modelName = new CuerpobomdetalleApiModel();
    }

    public function index()
    {

        $data = $this->model->listatardatos();
        return $this->respond($data, 200);
    }

    public function show($id = null)
    {
        $data = $this->model->listatardatos($id);
        return $this->respond(array('data' => $data), 200);
    }

    public function create()
    {
        $resp = $this->model->guardar($this->request);
        $info = $this->model->listatardatos($resp);
        $data['resp'] = [
            'codigo' => $resp,
            'status' => 'Ok',
            'info' => $info
        ];
        return $this->respond($data, 200);
    }

    public function update($id = null)
    {
        $resp = $this->model->edicion($id, $this->request);
        return $this->respond($resp, 200);
    }

    public function delete($id = null)
    {
        $resp = $this->model->borrar($id);
        $data['resp'] = [
            'codigo' => $resp,
            'status' => 'Ok'
        ];
        return $this->respond($data, 200);
    }


    public function listaitemsbom($codigoBom, $codigoCapitulo)
    {
        $resp = $this->model->listatarMaterialBomCapitulo($codigoBom, $codigoCapitulo);
        return $this->respond($resp, 200);
    }
}
/* fecha de creacion: 10-08-2025 04:41:37 pm */