<?php


require_once(APPLICATION_PATH . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'RSets_Scopes.php');

class Application_Mapper_RSets_Scopes extends Application_Mapper_Abstract {

	public function __construct() {
		$this->table_name = 'Application_Model_DbTable_RSets_Scopes';
	}

	public function fetchAll() {
		$resultSet = $this->getDbTable()->fetchAll();
		$entries = array();
		foreach ($resultSet as $row)
		$entries[] = new Application_Model_RSets_Scopes($row->scope_uri, $row->rset_id, $row->rset_name, $row->rset_uri, $row->scope_name);

		return $entries;
	}
}