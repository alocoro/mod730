<?php

class Comune_Mapper_ParametricQuery extends Comune_Mapper_Abstract {
	public function __construct($tabname) {
		parent::setDbTable($tabname);

	}

	/**
	 * trova i familiari del residente con codice fiscale = $cf_owner
	 * @param string $cf_owner
	 * @return array[int]Comune_Model_NucleoFamiliareElemento
	 */
	public function find($table_name, $key_name, $key_value, array $cols) {
		$select = $this->getDbTable()->select();
		$select->from($table_name, $cols);
		$select->where($key_name . '= ?', $key_value);
		$rows = $this->getDbTable()->fetchAll($select);

		if ($rows == null)
			return array();

		$results = array();
		foreach ($rows as $r)
			$results[] = $r;

		return $results;
	}
}
