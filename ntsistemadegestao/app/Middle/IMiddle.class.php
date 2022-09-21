<?php
interface IMiddle{
	public function before();
	public function doPost(Array $post);
	public function doGet(Array $get);
	
	public function after();
}