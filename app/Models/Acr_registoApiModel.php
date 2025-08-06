<?php

namespace App\Models;

use CodeIgniter\Model;

class Acr_registoApiModel extends Model
{
	protected $DBGroup = 'default';
	protected $table = 'acr_registo';
	protected $primaryKey = 'cod_reg';
	protected $useAutoIncrement = true;
	protected $insertID = 0;
	protected $returnType = 'array';
	protected $useSoftDeletes = true;
	protected $protectFields = true;
	protected $allowedFields = ["nom_reg", "ape_reg", "mai_reg", "divpaso1", "formPart", "nombre", "apellido", "tipodocumento", "numdocumento", "paisresidencia", "ciudadresidencia", "dirresidencia", "nacionalidad", "localidad", "estrato", "sexo", "identidad", "nacimientofecha", "grupoetnia", "divpaso2", "indicativo", "telefono", "mailcontacto", "confMail", "idioma", "partifiporegiones", "ciudadparticipo", "indicativopublicacion", "telefonopublicacion", "correopublicacion", "sectoractividad", "intereses", "otrointeres", "territorio", "mencionepaises", "perfilinteres", "divpaso3", "nombreempresa", "nit", "cargoempresa", "direccionempresa", "indicativoempresa", "telefonoempresa", "correoempresa", "paisempresa", "ciudadempresa", "actividad", "otraactividad", "webempresa", "divpaso4", "fotoacreditacion", "certificadovinculo", "certificadoexistencia", "finacreditacion", 'valorasi', 'nota', 'wompi', 'descuento', 'excluir', 'seleccionado', 'categoriaseleccion', 'seleccionado', 'rutdocumento'];

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
		$array = ['cod_reg as id', "nom_reg", "ape_reg", "mai_reg", "divpaso1", "formPart", "nombre", "apellido", "tipodocumento", "numdocumento", "paisresidencia", "ciudadresidencia", "dirresidencia", "nacionalidad", "localidad", "estrato", "sexo", "identidad", "nacimientofecha", "grupoetnia", "divpaso2", "indicativo", "telefono", "mailcontacto", "confMail", "idioma", "partifiporegiones", "ciudadparticipo", "indicativopublicacion", "telefonopublicacion", "correopublicacion", "sectoractividad", "intereses", "otrointeres", "territorio", "mencionepaises", "perfilinteres", "divpaso3", "nombreempresa", "nit", "cargoempresa", "direccionempresa", "indicativoempresa", "telefonoempresa", "correoempresa", "paisempresa", "ciudadempresa", "actividad", "otraactividad", "webempresa", "divpaso4", "fotoacreditacion", "certificadovinculo", "certificadoexistencia", "finacreditacion", 'acr_registo.updated_at as fregistro', 'valorasi', 'nota', 'wompi', 'descuento', 'sec_coa', 'seleccionado', 'categoriaseleccion', 'excluir', 'rutdocumento', 'fec_fin_reg', 'usu_reg as referencia'];

		if ($id == 0) {

			$estados = ['1', '2', '3', '4', '5', '10'];
			$data = $this->select($array)->select("(select nom_op_para from parametros where nom_para='tipoacreditado' and val_op_para=formPart limit 1) as tipoacreditacion")->select("(select nom_op_para from parametros where nom_para='estadoacreditacion' and val_op_para=finacreditacion limit 1) as estado")->whereIn('finacreditacion', $estados)->join('codigosacreditacion', 'cod_coa = descuento', 'left')->where('fuente', 1)->findAll();
		} else {
			$data = $this->select($array)->join('codigosacreditacion', 'cod_coa = descuento', 'left')->find($id);

			// print_r($data['intereses']);
			$data['interebam'] = $this->buscarchcks('interebam', $data['intereses']);
			$data['territoriosbam'] = $this->buscarchcks('territorios', $data['territorio']);
			$data['actividadempresabam'] = $this->buscarchcks('actividadempresa', $data['actividad']);
			$data['aliado'] = $this->buscarAliado($data['sec_coa']);

			// exit();
		}
		return $data;
	}

	public function guardar($request)
	{


echo "guardar";


		$data = [
			'nom_reg' => $request->getVar('nom_reg'),
			'ape_reg' => $request->getVar('ape_reg'),
			'mai_reg' => $request->getVar('mai_reg'),
			'usu_reg' => $request->getVar('usu_reg'),
			'pas_reg' => $request->getVar('pas_reg'),
			'tok_reg' => $request->getVar('tok_reg'),
			'act_req' => $request->getVar('act_req'),
			'divpaso1' => $request->getVar('divpaso1'),
			'formPart' => $request->getVar('formPart'),
			'nombre' => $request->getVar('nombre'),
			'apellido' => $request->getVar('apellido'),
			'tipodocumento' => $request->getVar('tipodocumento'),
			'numdocumento' => $request->getVar('numdocumento'),
			'paisresidencia' => $request->getVar('paisresidencia'),
			'ciudadresidencia' => $request->getVar('ciudadresidencia'),
			'dirresidencia' => $request->getVar('dirresidencia'),
			'nacionalidad' => $request->getVar('nacionalidad'),
			'localidad' => $request->getVar('localidad'),
			'estrato' => $request->getVar('estrato'),
			'sexo' => $request->getVar('sexo'),
			'identidad' => $request->getVar('identidad'),
			'nacimientofecha' => $request->getVar('nacimientofecha'),
			'grupoetnia' => $request->getVar('grupoetnia'),
			'divpaso2' => $request->getVar('divpaso2'),
			'indicativo' => $request->getVar('indicativo'),
			'telefono' => $request->getVar('telefono'),
			'mailcontacto' => $request->getVar('mailcontacto'),
			'confMail' => $request->getVar('confMail'),
			'idioma' => $request->getVar('idioma'),
			'partifiporegiones' => $request->getVar('partifiporegiones'),
			'ciudadparticipo' => $request->getVar('ciudadparticipo'),
			'indicativopublicacion' => $request->getVar('indicativopublicacion'),
			'telefonopublicacion' => $request->getVar('telefonopublicacion'),
			'correopublicacion' => $request->getVar('correopublicacion'),
			'sectoractividad' => $request->getVar('sectoractividad'),
			'intereses' => $request->getVar('intereses'),
			'otrointeres' => $request->getVar('otrointeres'),
			'territorio' => $request->getVar('territorio'),
			'mencionepaises' => $request->getVar('mencionepaises'),
			'perfilinteres' => $request->getVar('perfilinteres'),
			'divpaso3' => $request->getVar('divpaso3'),
			'nombreempresa' => $request->getVar('nombreempresa'),
			'nit' => $request->getVar('nit'),
			'cargoempresa' => $request->getVar('cargoempresa'),
			'direccionempresa' => $request->getVar('direccionempresa'),
			'indicativoempresa' => $request->getVar('indicativoempresa'),
			'telefonoempresa' => $request->getVar('telefonoempresa'),
			'correoempresa' => $request->getVar('correoempresa'),
			'paisempresa' => $request->getVar('paisempresa'),
			'ciudadempresa' => $request->getVar('ciudadempresa'),
			'actividad' => $request->getVar('actividad'),
			'otraactividad' => $request->getVar('otraactividad'),
			'webempresa' => $request->getVar('webempresa'),
			'divpaso4' => $request->getVar('divpaso4'),
			'fotoacreditacion' => $request->getVar('fotoacreditacion'),
			'certificadovinculo' => $request->getVar('certificadovinculo'),
			'certificadoexistencia' => $request->getVar('certificadoexistencia'),
			'finacreditacion' => $request->getVar('finacreditacion'),
			'seleccionado' => $request->getVar('seleccionado'),
			'categoriaseleccion' => $request->getVar('categoriaseleccion'),
			'rutdocumento' => $request->getVar('rutdocumento')

		];




		$id = $this->insert($data);
		return $id;
	}

	public function edicion($id, $request)
	{
		// $data = [
		// 	'cod_reg' => $id,
		// 	'nom_reg' => $request->getVar('nom_reg'), 'ape_reg' => $request->getVar('ape_reg'), 'mai_reg' => $request->getVar('mai_reg'), 'usu_reg' => $request->getVar('usu_reg'), 'pas_reg' => $request->getVar('pas_reg'), 'tok_reg' => $request->getVar('tok_reg'), 'act_req' => $request->getVar('act_req'), 'divpaso1' => $request->getVar('divpaso1'), 'formPart' => $request->getVar('formPart'), 'nombre' => $request->getVar('nombre'), 'apellido' => $request->getVar('apellido'), 'tipodocumento' => $request->getVar('tipodocumento'), 'numdocumento' => $request->getVar('numdocumento'), 'paisresidencia' => $request->getVar('paisresidencia'), 'ciudadresidencia' => $request->getVar('ciudadresidencia'), 'dirresidencia' => $request->getVar('dirresidencia'), 'nacionalidad' => $request->getVar('nacionalidad'), 'localidad' => $request->getVar('localidad'), 'estrato' => $request->getVar('estrato'), 'sexo' => $request->getVar('sexo'), 'identidad' => $request->getVar('identidad'), 'nacimientofecha' => $request->getVar('nacimientofecha'), 'grupoetnia' => $request->getVar('grupoetnia'), 'divpaso2' => $request->getVar('divpaso2'), 'indicativo' => $request->getVar('indicativo'), 'telefono' => $request->getVar('telefono'), 'mailcontacto' => $request->getVar('mailcontacto'), 'confMail' => $request->getVar('confMail'), 'idioma' => $request->getVar('idioma'), 'partifiporegiones' => $request->getVar('partifiporegiones'), 'ciudadparticipo' => $request->getVar('ciudadparticipo'), 'indicativopublicacion' => $request->getVar('indicativopublicacion'), 'telefonopublicacion' => $request->getVar('telefonopublicacion'), 'correopublicacion' => $request->getVar('correopublicacion'), 'sectoractividad' => $request->getVar('sectoractividad'), 'intereses' => $request->getVar('intereses'), 'otrointeres' => $request->getVar('otrointeres'), 'territorio' => $request->getVar('territorio'), 'mencionepaises' => $request->getVar('mencionepaises'), 'perfilinteres' => $request->getVar('perfilinteres'), 'divpaso3' => $request->getVar('divpaso3'), 'nombreempresa' => $request->getVar('nombreempresa'), 'nit' => $request->getVar('nit'), 'cargoempresa' => $request->getVar('cargoempresa'), 'direccionempresa' => $request->getVar('direccionempresa'), 'indicativoempresa' => $request->getVar('indicativoempresa'), 'telefonoempresa' => $request->getVar('telefonoempresa'), 'correoempresa' => $request->getVar('correoempresa'), 'paisempresa' => $request->getVar('paisempresa'), 'ciudadempresa' => $request->getVar('ciudadempresa'), 'actividad' => $request->getVar('actividad'), 'otraactividad' => $request->getVar('otraactividad'), 'webempresa' => $request->getVar('webempresa'), 'divpaso4' => $request->getVar('divpaso4'), 'fotoacreditacion' => $request->getVar('fotoacreditacion'), 'certificadovinculo' => $request->getVar('certificadovinculo'), 'certificadoexistencia' => $request->getVar('certificadoexistencia'), 'finacreditacion' => $request->getVar('finacreditacion')

		// ];

		// echo "es es el id" . $id;

		if ($request->getVar('finacreditacion') == 2 || $request->getVar('finacreditacion') == 4 || $request->getVar('finacreditacion') == 5 || $request->getVar('finacreditacion') == 10) {
			$data = [
				'cod_reg' => $id,
				'valorasi' => $request->getVar('valorasi'),
				'nota' => $request->getVar('nota'),
				'finacreditacion' => $request->getVar('finacreditacion'),
				'seleccionado' => $request->getVar('seleccionado'),
				'categoriaseleccion' => $request->getVar('categoriaseleccion'),
				'excluir' => $request->getVar('excluir'),
				'nombre' => $request->getVar('nombre'),
				'apellido' => $request->getVar('apellido'),
				'nombreempresa' => $request->getVar('nombreempresa'),
				'webempresa' => $request->getVar('webempresa'),
				'fotoacreditacion' => $request->getVar('fotoacreditacion'),
				'rutdocumento' => $request->getVar('rutdocumento')
			];
		} else {
			$data = [
				'cod_reg' => $id,
				'valorasi' => $request->getVar('valorasi'),
				'nota' => $request->getVar('nota'),
				'finacreditacion' => $request->getVar('finacreditacion'),
				'seleccionado' => $request->getVar('seleccionado'),
				'categoriaseleccion' => $request->getVar('categoriaseleccion'),
				'excluir' => $request->getVar('excluir'),
				'nombre' => $request->getVar('nombre'),
				'apellido' => $request->getVar('apellido'),
				'nombreempresa' => $request->getVar('nombreempresa'),
				'webempresa' => $request->getVar('webempresa'),
				'fotoacreditacion' => $request->getVar('fotoacreditacion'),
				'rutdocumento' => $request->getVar('rutdocumento')
			];
		}

		// print_r($data);
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
		$estados = ["1", "2", "3", "4", "5", "10"];
		$array = [
			// "cod_reg as id",
			"nom_reg as nombreRegistro",
			"ape_reg as  apellidoRegistro",
			"mai_reg",
			// "divpaso1",
			// "formPart",
			"nombre",
			"apellido",
			// "tipodocumento",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'tipodoc' and val_op_para=tipodocumento)  as TipoDocumento",
			"numdocumento",
			"paisresidencia",
			"ciudadresidencia",
			"dirresidencia",
			"nacionalidad",
			// "localidad",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'localidad' and val_op_para=localidad)  as localidad",
			"estrato",
			// "sexo",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'sexo' and val_op_para=sexo)  as sexo",
			// "identidad",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'identidadgen' and val_op_para=identidad)  as identidad",
			"nacimientofecha",
			// "grupoetnia",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'grupoetnia' and val_op_para=grupoetnia)  as grupoetnia",
			"grupoetniaotro as grupoetniaotro",
			// "divpaso2",
			"indicativo",
			"telefono",
			"mailcontacto",
			"confMail",
			// "idioma",
			// "partifiporegiones",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'sino' and val_op_para=partifiporegiones)  as BAMRegiones",



			"ciudadparticipo",
			"indicativopublicacion",
			"telefonopublicacion",
			"correopublicacion",
			// "sectoractividad",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'profesional' and val_op_para=sectoractividad)  as sectoractividad",
			"intereses",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'interebam' and val_op_para=intereses)  as intereses",

			"otrointeres",
			// "territorio",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'territorios' and val_op_para=territorio)  as territorios",

			"mencionepaises",
			"perfilinteres",
			// "divpaso3",
			"nombreempresa",
			"nit",
			"cargoempresa",
			"direccionempresa",
			"indicativoempresa",
			"telefonoempresa",
			"correoempresa",
			"paisempresa",
			"ciudadempresa",
			"actividad",
			"otraactividad",
			"webempresa",
			// "divpaso4",
			// "fotoacreditacion",
			// "certificadovinculo",
			// "certificadoexistencia",
			// "finacreditacion",
			"fec_fin_reg as finregistro",
			// "valorasi",
			"nota",
			"wompi",
			// "descuento",
			" (SELECT nom_op_para FROM parametros WHERE nom_para = 'estadoacreditacion' and val_op_para=finacreditacion)    as estadoacreditacion",
			"(SELECT nom_op_para FROM parametros WHERE nom_para = 'sino' and val_op_para=partifiporegiones)    as participaregionesparametro",
			"fotoacreditacion",
			"(SELECT sec_coa FROM `codigosacreditacion` INNER join aliadosacreditacion on aliadosacreditacion.cod_alc=codigosacreditacion.cod_ali_coa WHERE `cod_coa` = descuento ) as CodigoDescuento",
			"(SELECT nom_alc FROM `codigosacreditacion` INNER join aliadosacreditacion on aliadosacreditacion.cod_alc=codigosacreditacion.cod_ali_coa WHERE `cod_coa` = descuento ) as Aliado",

			// " (SELECT nom_tar FROM tarifasacreditacion where cod_tar=valorasi) as tarifaasignada",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'localidad' and val_op_para=localidad)  as localidadparametro",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'estratos' and val_op_para=estrato)  as estratoparametro",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'sexo' and val_op_para=sexo)  as sexoparametro",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'identidadgen' and val_op_para=identidad)  as identidadgenparametro",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'etnia' and val_op_para=grupoetnia)  as etniaparametro",
			// "(SELECT nom_op_para FROM parametros WHERE nom_para = 'profesional' and val_op_para=sectoractividad)  as sectoractividadparametro",
		];
		$data = $this->select($array)->select("(select nom_op_para from parametros where nom_para='tipoacreditado' and val_op_para=formPart limit 1) as tipoacreditacion")->select("(select nom_op_para from parametros where nom_para='estadoacreditacion' and val_op_para=finacreditacion limit 1) as estado")->whereIn("finacreditacion", $estados)->join("codigosacreditacion", "cod_coa = descuento", "left")->orderby("acr_registo.updated_at", "DESC")->find();


		$i = 0;
		// print_r(count($data));
		foreach ($data as $item) {
			$resultado = $this->buscaractividadempresa($item['actividad']);
			$data[$i]['actividad'] = $resultado;
			$data[$i]['intereses'] = $this->buscarchcksinformes('interebam', $data[$i]['intereses']);
			$i++;
		}

		// echo "------------------";

		// print_r($data);
		return $data;
	}

	public function buscaractividadempresa($datos)
	{
		$parametros = explode("**", $datos ?? '');

		$modelparametros = new ParametrosApiModel();
		$modelparametros->where("nom_para", "actividadempresa");
		$data = $modelparametros->whereIn("val_op_para", $parametros)->find();
		// echo $modelparametros->getLastQuery();

		$valortextos = " ";
		foreach ($data as $item) {
			// echo $item['val_op_para'];
			$valortextos .= $item["nom_op_para"] . " ";
		}

		return $valortextos;
	}

	public function buscarchcks($parametro, $datos)
	{
		$checks = explode("**", $datos ?? '');
		// print_r($checks);
		// echo $datos;
		$apiparametros = new ParametrosApiModel();
		$arraySelect = ['nom_op_para as name', 'val_op_para as code'];
		$arrayWhere = ['nom_para' => $parametro];
		$arrayWheredetalle = ['val_op_para' => $checks];
		// print_r($arrayWheredetalle);
		$listaparametros = $apiparametros->select($arraySelect)->where($arrayWhere)->WhereIn('val_op_para', $checks)->find();
		// print_r($listaparametros);
		return $listaparametros;
		// print_r($listaparametros);

	}


	public function buscarchcksinformes($parametro, $datos)
	{
		$checks = explode("**", $datos ?? '');
		$apiparametros = new ParametrosApiModel();
		$arraySelect = ['nom_op_para as name'];
		$arrayWhere = ['nom_para' => $parametro];
		$listaparametros = $apiparametros->select($arraySelect)->where($arrayWhere)->WhereIn('val_op_para', $checks)->find();
		$first_names = array_column($listaparametros, 'name');
		// print_r($first_names);
		// $result = array_merge(...$listaparametros);
		// print_r($result);
		$listaparametros = implode(",", $first_names);
		return $listaparametros;
		// print_r($listaparametros);

	}



	public function buscarAliado($codigo)
	{
		if ($codigo == "") {
			return "";
		}
		$CodigosacreditacionApiModel = new CodigosacreditacionApiModel();
		$codigo = $CodigosacreditacionApiModel->select('nom_alc')->join('aliadosacreditacion', 'cod_ali_coa=cod_alc')->where('sec_coa', $codigo)->find();

		// $codigo['cod_ali_coa']
		// print_r($codigo);
		return $codigo[0]['nom_alc'];
	}

	public function agendaacreditados()
	{
		$array = ["cod_reg as id", "concat(nombre, ' ',apellido) as nombre", "nombreempresa", "cargoempresa", "fotoacreditacion", "finacreditacion", "seleccionado", "categoriaseleccion"];
		$data = $this->select($array)->whereIn('finacreditacion', [10, 3])->find();
		// echo $this->getLastquery();
		return $data;
	}
}
/* fecha de creacion: 05-22-2023 02:24:27 pm */