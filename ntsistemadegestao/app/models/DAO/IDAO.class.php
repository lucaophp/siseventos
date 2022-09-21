<?php
/**
 * Created by PhpStorm.
 * User: lucaophp
 * Date: 09/02/2015
 * Time: 17:43
 */

interface IDAO {
    public function insere();
    public function atualiza();
    public function deleta($id);
    public function getById($codigo);
    public function getAll();
    public function getByCond($where);

}