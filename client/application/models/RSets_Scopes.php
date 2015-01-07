<?php

class Application_Model_RSets_Scopes {
	/**
	 * the scope string that will be passed to the authorization server
	 * @var string
	 */
		private $scope_uri;
		private $rset_id;
		private $rset_name;
		private $rset_uri;
		private $scope_name;

	/**
	 * description of this rset and scope
	 * @var string
	 */


	/**
	 *
	 * @param string $id
	 * @param string $description
	 */

	public function __construct($scope_uri, $rset_id, $rset_name, $rset_uri, $scope_name) {
		$this->scope_uri = $scope_uri;
		$this->rset_id = $rset_id;
		$this->rset_name = $rset_name;
		$this->rset_uri = $rset_uri;
		$this->scope_name = $scope_name;

	}

	/**
	 *
	 * @return string
	 */

	public function getScope_Uri() {
			return $this->scope_uri;
	}

	public function getRset_Id() {
		return $this->rset_id;
	}

	public function getRset_Name() {
			return $this->rset_name;
	}

	public function getRset_Uri() {
			return $this->rset_uri;
	}

	public function getScope_Name() {
			return $this->scope_name;
	}


}

