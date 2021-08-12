<?php

namespace App\Models;

use CodeIgniter\Model;


class AgendaModel extends Model
{
    protected $table = 'tb_contato';
    protected $primarykey = 'cod_contato';
    protected $allowedFields = ['nome_contato', 'email_contato', 'tel_contato'];
    protected $retornType = 'array';
}
