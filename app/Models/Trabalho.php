<?php
class Trabalho extends Model{
	static $belongs_to = array(array('submissoes'),array('usuarios'));
}