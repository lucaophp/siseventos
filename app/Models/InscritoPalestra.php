<?php
class InscritoPalestra extends Model{
	static $belongs_to = array(array('palestras'),array('usuarios'));
}