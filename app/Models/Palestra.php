<?php
class Palestra extends Model{
	static $belongs_to = array(array('eventos'));
}