<?php

namespace App\Controllers;

use App\Models\AgendaModel;

class AgendaController extends BaseController
{
	public function index()
	{
		return view('Home_Agenda');
	}

	public function listainfo()
	{
		$agdModel = new \App\Models\AgendaModel();
		$cod = 1;
		$registros = $agdModel->where('cod_contato', $cod)->find();
		$data['agd'] = $registros;
		return view('Home_Agenda', $data);
	}
}
