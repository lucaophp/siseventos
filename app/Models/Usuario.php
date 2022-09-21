<?php
class Usuario extends Model{
	static $belongs_to = array(array('eventos'));
}