<?php

class Application_Form_DemoForm extends Zend_Form
{
	const SCOPES = "rsets_scopes";
	const SUBMIT_BUTTON_ID = 'getdemo';

	/**
	 * the scopes to display
	 * @var array[int]Application_Model_Scope
	 */
	private $available_rsets_scopes;

	/**
	 *
	 * @param array[int]Application_Model_RSets_Scopes $available_rsets_scopes
	 */
	public function __construct(array $available_rsets_scopes){
		$this->available_rsets_scopes = $available_rsets_scopes;
		parent::__construct();
	}

    public function init() {
    	if (empty($this->available_rsets_scopes)) {
    		$this->setDescription("Al momento non vi è alcuna sorgente dei dati.");
    		$this->addElement('submit', self::SUBMIT_BUTTON_ID, array('required' => true,
								    				'ignore' => false,
								    				'label' => 'Procedi',
								    				'attribs' => array('disabled' => 'disabled')));
    	} else {
    		$this->setAction($this->getView()->url(array('module' => '',
									    				'controller' => 'index',
									    				'action' => 'getdemo')));

    		$scopes = new Zend_Form_Element_MultiCheckbox($this::SCOPES);
    		$scopes->setLabel("Scegliere i dati da scaricare:");

    		foreach ($this->available_rsets_scopes as $s)
    			$scopes->addMultiOption($s->getRset_Id().",".$s->getScope_Uri(), "resourse set name: " . $s->getRset_Name() . ", scope: " . $s->getScope_Uri().';');

    		$this->addElement($scopes);
    		$this->addElement('submit', self::SUBMIT_BUTTON_ID, array('required' => true,
								    				'ignore' => false,
								    				'label' => 'Procedi'));
    	}

    	$this->setDecorators(array('FormElements',
    			array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_form')),
    			array('Description', array('placement' => 'prepend','escape' => false)),
    			'Form'));

    	//CSRF protection
    	$this->addElement('hash', 'csrf', array('ignore' => true,));


    }

}

