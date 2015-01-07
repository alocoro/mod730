<?php
class Resource_Form_RSetRegistration extends Zend_Form
{
	  public function init()
	  {
		// initialize form
		$this->setAction('create')
			  ->setMethod('post');
		// create text input for name

		$name = new Zend_Form_Element_Text('name');
		$name->setLabel('Resource Set Name:')
			 ->setOptions(array('id' => 'rs_name'))
			 ->setRequired(true)
			 ->addValidator('NotEmpty', false)
			 ->addFilter('HTMLEntities');

		$sm = new Resource_Mapper_ScopesTable();

		$scope = new Zend_Form_Element_MultiCheckbox('scope');
		$scope->setLabel('Scope:')
			 ->setMultiOptions(array(
			 				  $sm->find('read')[0]->getUri() => 'read',
			 				  $sm->find('write')[0]->getUri() => 'write',
			 				  $sm->find('update')[0]->getUri() => 'update',
			 				  $sm->find('delete')[0]->getUri() => 'delete',
				 ));

		// create text area for rset description
		$description = new Zend_Form_Element_Textarea('description');
		$description->setLabel('Resource Set Description:')
				->setOptions(array(
					'id'   => 'desc',
					'rows' => '10',
					'cols' => '30',
				  ))
				  ->setRequired(true)
				  ->addValidator('NotEmpty', false)
				  ->addFilter('HTMLEntities');


		$type = new Zend_Form_Element_Text('type');
		$type->setLabel('Resource Set Type:')
			 ->setOptions(array('id' => 'rs_type'))
			 ->setRequired(true)
			 ->addValidator('NotEmpty', false)
			 ->addFilter('HTMLEntities');


	  $fields = new Zend_Form_Element_MultiCheckbox('fields');
	  $fields->setLabel('Resource set fields:')
	    	   ->setMultiOptions(array(
				  'cf'     => 'cf',
				  'nome'    => 'nome',
				  'cognome'  => 'cognome',
				  'sesso' => 'sesso',
				  'data_nascita'       => 'data_nascita',
				  'comune_nascita'   => 'comune_nascita',
				  'provincia_nascita'   => 'provincia_nascita',
				  'stato_civile'       => 'stato_civile',
				  'comune_residenza'   => 'comune_residenza',
				  'provincia_residenza'   => 'provincia_residenza',
				  'cap_residenza'   => 'cap_residenza',
				  'tipologia_residenza'   => 'tipologia_residenza',
				  'indirizzo_residenza'   => 'indirizzo_residenza',
				  'num_civico_residenza'   => 'num_civico_residenza',
				  'frazione_residenza'   => 'frazione_residenza',
				  'ultima_variazione_residenza'   => 'ultima_variazione_residenza',
				 ));

	 // create submit button
		 $submit = $this->createElement('submit', 'submit', array(
		 'label' => 'Submit',
		 'class' => 'submit'
		));

		// attach elements to form
		$this->addElement($name)
			 ->addElement($scope)
			 ->addElement($description)
			 ->addElement($type)
			 ->addElement($fields)
			 ->addElement($submit);
	  }
	}

