<?php

class Server_Bootstrap extends Zend_Application_Module_Bootstrap {
	/**
	 * Adds a path to the helper broker in order to serve our module specific
	 * helpers
	 *
	 */
	protected function _initHelperPath() {
		Zend_Controller_Action_HelperBroker::addPath(
		APPLICATION_PATH . '/modules/server/controllers/helpers', 'Server_Controller_Action_Helper_');
	}
	
	/**
	 * Adds factories and  mappers as resource type, enabling it auto-loading
	 */
	protected function _initResourceLoader() {
// 		$this->_resourceLoader->addResourceType('builder', 'models/Builder', 'Builder');
		$this->_resourceLoader->addResourceType('mapper', 'models/Mapper', 'Mapper');
// 		$this->_resourceLoader->addResourceType('request', 'models/Request', 'Request');
		$this->_resourceLoader->addResourceType('datasource', 'models/DataServer', 'DataServer');
	}
}