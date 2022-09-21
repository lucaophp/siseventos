<?php
class InscritoMinicurso extends Model{
	static $belongs_to = array(array('minicursos'),array('usuarios'));
}