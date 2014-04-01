<?php
App::uses('AppController', 'Controller');

class IndexController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses   = array();
    public $layout = null;

/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 * @throws NotFoundException When the view file could not be found
 *	or MissingViewException in debug mode.
 */
	public function index() {
		$this->set('text', 'Hello, world.');
	}
}
