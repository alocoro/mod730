<?php

require_once(APPLICATION_PATH . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . 'resource' . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'FormData.php');
require_once(APPLICATION_PATH . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . 'resource' . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'rset_scopes_Model.php');
require_once(APPLICATION_PATH . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . 'resource' . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'Mapper' . DIRECTORY_SEPARATOR . 'RSetScopesTable.php');
require_once(APPLICATION_PATH . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . 'resource' . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'ResourceSet_Model.php');



	class Resource_ResourceController extends Zend_Controller_Action
	{


		protected $val = NULL;

		public function init()
		{
		}

		// display static views
		public function readscopeAction()
		{
			$this->_helper->viewRenderer->setNoRender();
			$scopemodel = new Resource_Mapper_ScopesTable();
			$results[] = $scopemodel->find('read');
			$description = $results[0];
			//$fielddescr = $description->getDescr();
			$this->view->description = $description;
			$this->render();
		}

		public function writescopeAction()
		{
			$this->_helper->viewRenderer->setNoRender();
			$scopemodel = new Resource_Mapper_ScopesTable();
			$results[] = $scopemodel->find('write');
			$description = $results[0];
			//$fielddescr = $description->getDescr();
			$this->view->description = $description;
			$this->render();
		}

		public function updatescopeAction()
		{
			$this->_helper->viewRenderer->setNoRender();
			$scopemodel = new Resource_Mapper_ScopesTable();
			$results[] = $scopemodel->find('update');
			$description = $results[0];
			//$fielddescr = $description->getDescr();
			$this->view->description = $description;
			$this->render();
		}

		public function deletescopeAction()
		{
			$this->_helper->viewRenderer->setNoRender();
			$scopemodel = new Resource_Mapper_ScopesTable();
			$results[] = $scopemodel->find('delete');
			$description = $results[0];
			//$fielddescr = $description->getDescr();
			$this->view->description = $description;
			$this->render();
		}

		public function scopesAction()
		{
			$this->_helper->viewRenderer->setNoRender();
			$scopemodel = new Resource_Mapper_ScopesTable();
			$results = $scopemodel->findAll();
			$description = $results;
			//$fielddescr = $description->getDescr();
			$this->view->description = $description;
			$this->render();
		}




		public function rsetAction()
		{
			$this->_helper->viewRenderer->setNoRender();
		}


		public function formAction()
		{
				$this->_helper->viewRenderer->setNoRender();
				$form = new Resource_Form_RSetRegistration();
				$this->view->form = $form;
				$this->render();
				if ($this->getRequest()->isPost()) {
					if (!$form->isValid($this->getRequest()->getPost())) {
						$this->view->messages = $request->getPost()->getMessages();
						$this->_helper->redirector('resource', 'resource', 'form');
					}
				}
		}


		public function createAction()
		{
				$request = $this->getRequest();
				if ($request->isPost()) {
					$values = $request->getPost();
				}

				$name = $values['name'];
				$scopes = $values['scope'];
				$defscope = "";
				foreach($scopes as $s){
					if($defscope != ""){
						$defscope = $defscope . "," . $s;
						}
						else
						{
							$defscope = $s;
						}
				}

				$values['defscope'] = $defscope;

				$description = $values['description'];
							$fields = $values['fields'];
							$deffield = "";
							foreach($fields as $f){
							if($deffield != "")
								{
									$deffield = $deffield . "," . $f;
								}
								else{
									$deffield = $f;
								}
							}

				$type = $values['type'];

				$composinghash = hash('md5', $name . $defscope . $description . $type . $deffield);

				$url_nuovo = "https://localhost/comune/public/resource/resource/endpoint?id=" . $composinghash;

				$values['id'] = $composinghash;
				$values['endpoint'] = $url_nuovo;


				$config = new Zend_Config_Ini(APPLICATION_PATH . DIRECTORY_SEPARATOR . 'configs' . DIRECTORY_SEPARATOR . 'application.ini', 'development');
				// create https client request
				$url = $config->resourceset->creation->endpoint;
				$client =  new Zend_Http_Client($url);

				// embed json object into request body

				$valuesData = json_encode($values);

				$response = $client->setRawData($valuesData)->setEncType('application/json')->request('POST');

				if(!$response->getMessage() == "OK"){

					echo $response->getMessage();
				}


				foreach($scopes as $sc){
					$sr = new Resource_Model_ResetScopes($sc, $values['id']);
					$srs = new Resource_Mapper_RSetScopesTable();
					$srs->save($sr);
				}


				$rset_nuovo = new Resource_Model_RSetInfo($values['id'], $name, $url_nuovo, "resource_set_info", $description, $type, $deffield);
				$rset_info = new Resource_Mapper_ResourceSetTable();
				$rset_info->save($rset_nuovo);

				$this->view->endp = $url_nuovo;
				$this->render();

			}




		public function endpointAction(){

			$request_id = $this->getRequest()->getParam('id');
			$endp = new Resource_Mapper_ResourceSetTable();
			$endpoint = $endp->find($request_id);

			$scopeD = new Resource_Mapper_RSetScopesTable();
			$scopeAll = $scopeD->findRset($request_id);

			if(null == $this->getRequest()->getParam('scope')){
				$this->_helper->viewRenderer->setNoRender();
				$this->view->rsetid = $endpoint[0]->getRsetId();
				$this->view->rsetname = $endpoint[0]->getName();
				$this->view->rsetde = $endpoint[0]->getDescr();
				$this->view->rsettab = $endpoint[0]->getTable();
				$this->view->rsettype = $endpoint[0]->getType();

				$this->view->allsco = $scopeAll;

				$this->view->display = true;

				$this->render();
			}
			else //there are other params
			{
				$datas = array();
				$datas['rset_id'] = $endpoint[0]->getRSetId();
				$datas['rset_name'] = $endpoint[0]->getName();
				$datas['rset_descr'] = $endpoint[0]->getDescr();
				$datas['rset_table'] = $endpoint[0]->getTable();
				$datas['rset_type'] = $endpoint[0]->getType();

				$collapse_scopes = "";
				foreach($scopeAll as $sco){
					if($collapse_scopes != ""){
					   $collapse_scopes = $collapse_scopes. "," .$sco->getScopeUri();
					}
					else{
						$collapse_scopes = $sco->getScopeUri();
					}
				}

				$datas['scopes'] = $collapse_scopes;
				//var_dump($datas);

				$this->view->display = false;

				$this->view->obj = json_encode($datas);
				$this->render();
			}
		}

	}