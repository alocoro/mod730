<?php


class Oauth2_Model_AccessDeniedException extends Oauth2_Model_Exception {}
class Oauth2_Model_InvalidRequestException extends Oauth2_Model_Exception {}
class Oauth2_Model_InvalidScopeException extends Oauth2_Model_Exception {}
class Oauth2_Model_ServerErrorException extends Oauth2_Model_Exception {}
class Oauth2_Model_TemporarilyUnavailableException extends Oauth2_Model_Exception {}
class Oauth2_Model_UnauthorizedClientException extends Oauth2_Model_Exception {}
class Oauth2_Model_UnsupportedResponseTypeException extends Oauth2_Model_Exception {}

class Oauth2_Model_InvalidClientException extends Oauth2_Model_Exception {}
class Oauth2_Model_InvalidGrantException extends Oauth2_Model_Exception {}
class Oauth2_Model_UnsupportedGrantTypeException extends Oauth2_Model_Exception {}

class Oauth2_Model_ExpiredTokenException extends Oauth2_Model_Exception {}

// class Oauth2_Model_InvalidRequestException extends Oauth2_Model_Exception {}
class Oauth2_Model_InvalidTokenException extends Oauth2_Model_Exception {}
class Oauth2_Model_InsufficientScopeException extends Oauth2_Model_Exception {}

class Oauth2_Model_Interact {
	/*
	 * CONSTANTS for requesting the authorization code
	 */
	/**
	 * rfc 6749 section 3.1.1. Response Type
	 * REQUIRED
	 * @var string
	 */
	private static $RESPONSE_TYPE_PARAM = 'response_type';
	/**
	 * rfc 6749 section 4.1.1.
	 * @var string
	 */
	private static $RESPONSE_TYPE_CODE = 'code';
	/**
	 * REQUIRED
	 * @var string
	 */
	private static $CLIENT_ID_PARAM = 'client_id';
	/**
	 * OPTIONAL. As described in section 3.1.2. of rfc 6749
	 * @var string
	 */
	private static $REDIRECT_URI_PARAM = 'redirect_uri';
	/**
	 * rfc 6749 section 3.3. Access Token Scopes
	 * @var string
	 */
	private static $SCOPE_PARAM = 'scope';
	/**
	 * RECOMMENDED.
	 * @var string
	 */
	private static $STATE_PARAM = 'state';
	
	/*
	 * ============================================
	 */
	
	/*
	 * CONSTANTS for requesting the access token
	 */
	/**
	 * 
	 * @var string
	 */
	private static $GRANT_TYPE_PARAM = 'grant_type';
	/**
	 * 
	 * @var string
	 */
	private static $AUTHORIZATION_CODE = 'authorization_code';
	/**
	 * 
	 * @var string
	 */
	private static $REFRESH_TOKEN_PARAM =  'refresh_token';
	
	/*
	 * ============================================
	 */
	
	/*
	 * AUTHORIZATION CODE RESPONSE CONSTANTS
	 */
	/**
	 * rfc 6749 section 4.1.2. Autorization Response
	 * the parameter that carries the authorization 
	 * code generated by the authorization server.
	 * @var string
	 */
	private static $CODE_PARAM = 'code';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * the parameter that carries the error code
	 * @var string
	 */
	private static $ERROR_PARAM = 'error';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * @var string
	 */
	private static $ERROR_DESCRIPTION_PARAM = 'error_description';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * @var string
	 */
	private static $ERROR_URI_PARAM = 'error_uri';
	
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The request is missing a request parameter, 
	 * includes an invalid parameter value, includes
	 * a parameter more than once, or is otherwise malformed.
	 * @var string
	 */
	private static $ERROR_INVALID_REQUEST = 'invalid_request';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The client is not authorized to request an authorization 
	 * code using this method.
	 * @var string
	 */
	private static $ERROR_UNAUTHORIZED_CLIENT = 'unauthorized_client';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The resource owner or authorization server denied the request
	 * @var string
	 */
	private static $ERROR_ACCESS_DENIED = 'access_denied';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The authorization server does not support obtaining 
	 * an authorization code using this method
	 * @var string
	 */
	private static $ERROR_UNSUPPORTED_RESPONSE_TYPE = 'unsupported_response_type';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The requested scope is invalid, unknown, or malformed.
	 * @var string
	 */
	private static $ERROR_INVALID_SCOPE = 'invalid_scope';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The authorization server encountered an unexpected condition 
	 * that prevented it from fulfilling the request.
	 * @var string
	 */
	private static $ERROR_SERVER_ERROR = 'server_error';
	/**
	 * rfc 6749 section 4.1.2.1. Error Response
	 * The authorization server is currently unable to handle 
	 * the request due to a temporary overloading or maintenance of the server.
	 * @var string
	 */
	private static $ERROR_TEMPORARILY_UNAVAILABLE = 'temporarily_unavailable';
	
	
	/*
	 * =====================================================
	 */
	
	/*
	 * TOKEN RESPONSE CONSTANTS
	 */
	/**
	 * rfc 6749 section 5.2. Error Response
	 * client authentication failed (e.g., unknown client, invalid client 
	 * authentication included, or unsupported authentication method).
	 * @var string
	 */
	private static $ERROR_INVALID_CLIENT = 'invalid_client';
	/**
	 * rfc 6749 section 5.2. Error Response
	 * the provided authorization grant (authorization code, resource woner 
	 * credentials) or refresh token is invalid, expired, revoked, does not 
	 * match the redirection uri used in the authorization request or was 
	 * issued to another client.
	 * @var string
	 */
	private static $ERROR_INVALID_GRANT = 'invalid_grant';
	/**
	 * the authorization grant type is not supported by the 
	 * authorization server
	 * @var string
	 */
	private static $ERROR_UNSUPPORTED_GRANT_TYPE = 'unsupported_grant_type';
	
	private static $SCOPE_DELIMITER = ' ';
	
	private static $AS_RESPONSE_CONTENT_TYPE = 'application/json;charset=UTF-8';
	
	/*
	 * ========================================================================
	 */
	
	/*
	 * RESOURCE SERVER RESPONSE CONSTANTS
	 */
	//TODO doc
	private static $RS_AUTHENTICATION_SCHEME = 'Bearer';
	private static $RS_RESPONSE_HEADER = 'WWW-Authenticate';
	private static $RS_REQUEST_HEADER = 'Authorization';
	//TODO doc
	private static $RS_RESPONSE_REALM_PARAM = 'realm';
	private static $RS_RESPONSE_ERROR_PARAM = 'error';
	private static $RS_RESPONSE_ERROR_DESCRIPTION_PARAM = 'error_description';
	private static $RS_RESPONSE_ERROR_URI_PARAM = 'error_uri';
	//TODO doc
	private static $RS_RESPONSE_ERROR_INVALID_REQUEST = 'invalid_request';
	private static $RS_RESPONSE_ERROR_INVALID_REQUEST_HTTP_STATUS_CODE = 400; /* Bad Request*/
	private static $RS_RESPONSE_ERROR_INVALID_TOKEN = 'invalid_token';
	private static $RS_RESPONSE_ERROR_INVALID_TOKEN_HTTP_STATUS_CODE = 401; /* Unauthorized */
	private static $RS_RESPONSE_ERROR_INSUFFICIENT_SCOPE = 'insufficient_scope';
	private static $RS_RESPONSE_ERROR_INSUFFICIENT_SCOPE_HTTP_STATUS_CODE = 403; /* Forbidden */
	
	private static $RS_RESPONSE_SUCCESS_HTTP_STATUS_CODE = 200;
	
	/*
	 * ========================================================================
	 */
	
	private static $SSL_OPTIONS = array();
	
	// G. Ciaccio: $path_to_ca is the path to the local directory where
	// the CA certificates are stored; these are needed to verify the
	// peer's certificate offered at connect phase.
	// TODO: add the 'CN_match' element in the options array.
	public function __construct($path_to_ca) {
		self::$SSL_OPTIONS = array(
			'ssl' => array(
				'verify_peer' => true,
				'allow_self_signed' => true,
				/*'cafile' => $path_to_ca,*/
				'capath' => $path_to_ca,
				/* capture peer's certificate */
				'capture_peer_cert' => true));
	}
	
	/**
	 * Given the authorization endpoint, the client id, the redirect uri, the scopes, and the state
	 * build a valid url and directs the user-agent to that url.
	 * By calling this function the client app requests an authorization code. The result will be
	 * returned to the redirect uri passed as a parameter. 
	 * (the result can be a a valid authorization code or an error!)
	 * 
	 * rfc 6749 section 4.1. Authorization Code Grant,
	 * rfc 6749 section 4.1.1. Authorization Request
	 * 
	 * @param Zend_Controller_Action $controller the controller from which this function is called.
	 * @param string $as_auth_endpoint 	authorization endpoint uri
	 * @param string $client_id 		the client identifier as described in section 2.2. rfc 6749
	 * @param string $redirect_uri 		the endpoint to which the authorization server directs the 
	 * 									owner's user agent (rfc 6749 section 3.1.2. Redirection Endpoint)
	 * @param array[int]string $scopes 	Each string represent a scope for which the 
	 * 									token will be issued. See section 3.3. Access Token Scope
	 * @param string $state				an opaque value used by the client to maintain state between 
	 *	 								the request and callback. The authorization servr includes 
	 * 									this value when redirecting the user-agent back to the client. 
	 * 									The parameter SHOULD be used for preventing the cross-site 
	 * 									request forgery as described in section 10.12. rfc 6749
	 * @throws InvalidArgumentException if some parameter is empty
	 */
	public static function getAuthCode($controller, $as_auth_endpoint, $client_id, $redirect_uri, $scopes, $state) {
		if (is_null($controller) || ! $controller instanceof Zend_Controller_Action)
			throw new InvalidArgumentException("Must provide a Zend_Controller_Action");
		if (empty($as_auth_endpoint) || ! is_string($as_auth_endpoint))
			throw new InvalidArgumentException('Authorization endpoint is invalid');
		if (empty($client_id) || ! is_string($client_id))
			throw new InvalidArgumentException('Client id is invalid');
		if (empty($redirect_uri) || ! is_string($redirect_uri))
			throw new InvalidArgumentException('Authorization endpoint is invalid');
		
		var_dump($scopes);
		if (!is_array($scopes) || empty($scopes))
			throw new InvalidArgumentException("Must provide an not empty array of scopes.");
		
		$scopes_str = implode(self::$SCOPE_DELIMITER, $scopes);
		
		$params = array(self::$RESPONSE_TYPE_PARAM => self::$RESPONSE_TYPE_CODE,
						self::$CLIENT_ID_PARAM => $client_id, 
						self::$REDIRECT_URI_PARAM => $redirect_uri,
						self::$SCOPE_PARAM => $scopes_str, 
						self::$STATE_PARAM => $state);
		
		$controller->getHelper('redirector')->gotoUrl($as_auth_endpoint."?".http_build_query($params));
	}
	
	
	/**
	 * given a request, extrcats the state parameter from the query string.
	 * @param Zend_Controller_Request_Abstract $request
	 * @return string|null returns the state value string or null if there was no state parameter
	 */
	public static function getState($request) {
		return $request->getQuery(self::$STATE_PARAM);
	}
	
	/**
	 * given a request returns the authorization code or throws the appropriate
	 * exception. By calling on exception $e->getDescription() you'll get the 
	 * error description given by the authorization server and by calling
	 * $e->getUri() you'll get he uri where it is explained the error.
	 *
	 * @param Zend_Controller_Request_Abstract $request
	 * @throws Oauth2_Model_Exception							if both authorization code
	 * 													and error code are setted or
	 * 													both are not setted
	 * @throws Oauth2_Model_AccessDeniedException				if the resource owner or the
	 * 													authorization server denied
	 * 													the request
	 * @throws Oauth2_Model_InvalidRequestException			The client is not authorized 
	 * 													to request an authorization 
	 * 													code using this method
	 * @throws Oauth2_Model_InvalidScopeException				The requested scope is invalid, 
	 * 													unknown, or malformed
	 * @throws Oauth2_Model_ServerErrorException				The authorization server is currently 
	 * 													unable to handle the request due 
	 * 													to a temporary overloading or 
	 * 													maintenance of the server
	 * @throws Oauth2_Model_TemporarilyUnavailableException	The authorization server is currently 
	 * 													unable to handle the request due to 
	 * 													a temporary overloading or maintenance 
	 * 													of the server
	 * @throws Oauth2_Model_UnauthorizedClientException		The resource owner or authorization 
	 * 													server denied the request
	 * @throws Oauth2_Model_UnsupportedResponseTypeException	The authorization server does not 
	 * 													support obtaining an authorization 
	 * 													code using this method
	 * @return string the authorization code
	 */
	public static function getAuthCodeResponse($request) {
		$auth_code = $request->getQuery(self::$CODE_PARAM);
		$error_code = $request->getQuery(self::$ERROR_PARAM);
		
		if (!empty($auth_code) && !empty($error_code) || 
			empty($auth_code) && empty($error_code))
			throw new Oauth2_Model_Exception('both code and error params are set or not set');
		
// 		Would like to check the http status code... but it seems that given the $request object I cannot do that :/
		
		if (!empty($auth_code))
			return $auth_code;
		
		$error_description = $error_code.': '.$request->getQuery(self::$ERROR_DESCRIPTION_PARAM, '');
		$error_uri = $request->getQuery(self::$ERROR_URI_PARAM, '');
		
		switch ($error_code) {
			case self::$ERROR_ACCESS_DENIED:
				throw new Oauth2_Model_AccessDeniedException($error_description, $error_uri);
			case self::$ERROR_INVALID_REQUEST:
				throw new Oauth2_Model_InvalidRequestException($error_description, $error_uri);
			case self::$ERROR_INVALID_SCOPE:
				throw new Oauth2_Model_InvalidScopeException($error_description, $error_uri);
			case self::$ERROR_SERVER_ERROR:
				throw new Oauth2_Model_ServerErrorException($error_description, $error_uri);
			case self::$ERROR_TEMPORARILY_UNAVAILABLE:
				throw new Oauth2_Model_TemporarilyUnavailableException($error_description, $error_uri);
			case self::$ERROR_UNAUTHORIZED_CLIENT:
				throw new Oauth2_Model_UnauthorizedClientException($error_description, $error_uri);
			case self::$ERROR_UNSUPPORTED_RESPONSE_TYPE:
				throw new Oauth2_Model_UnsupportedResponseTypeException($error_description, $error_uri);
			default:
				throw new Oauth2_Model_Exception('unsupported error code');
		}
	}
	
	/**
	 * contacts the $token_endpoint by presenting the credentials ($client_id
	 * and $client_secret), the authorization code and requests a token.
	 * 
	 * @param string $token_endpoint				the authorization server 
	 * 												token endpoint
	 * @param string $auth_code						the authorization code
	 * @param string $redirect_uri					the same redirect uri that
	 * 												was used when the authorization
	 * 												code was requested
	 * @param string $client_id						the client id to which the 
	 * 												authorization code belongs
	 * @param string $client_secret					the client secret to perform
	 * 												the authorization with the
	 * 												authorization server
	 * @throws Oauth2_Model_Exception						if there was an error
	 * 												during the communication with
	 * 												the authorization server.
	 * 												the response was not a valid 
	 * 												response.
	 * @throws Oauth2_Model_TokenException 				if some params of the recieved 
	 * 												token are not present or invalid
	 * @throws Oauth2_Model_TokenPartException 			if some token part is malformed
	 * 
	 * 
	 * @throws Oauth2_Model_InvalidRequestException	rfc 6749 section 4.1.2.1. Error Response
	 * 												The request is missing a request parameter, 
	 * 												includes an invalid parameter value, includes
	 * 												a parameter more than once, or is otherwise 
	 * 												malformed.
	 * @throws Oauth2_Model_InvalidClientException	rfc 6749 section 5.2. Error Response
	 * 												client authentication failed 
	 * 												(e.g., unknown client, invalid 
	 * 												client authentication included, 
	 * 												or unsupported authentication method).
	 * @throws Oauth2_Model_InvalidGrantException	rfc 6749 section 5.2. Error Response
	 * 												the provided authorization grant 
	 * 												(authorization code, resource woner
	 * 												credentials) or refresh token is 
	 * 												invalid, expired, revoked, does not
	 * 												match the redirection uri used in 
	 * 												the authorization request or was 
	 * 												issued to another client.
	 * @throws Oauth2_Model_UnauthorizedClientException	rfc 6749 section 5.2. Error Response
	 * 												The authenticated client is not
	 * 												authorized to use this authorization 
	 * 												grant type
	 * @throws Oauth2_Model_UnsupportedGrantTypeException	rfc 6749 section 5.2. Error Response
	 * 												the authorization grant type is not 
	 * 												supported by the authorization server
	 * @throws Oauth2_Model_InvalidScopeException	rfc 6749 section 5.2. Error Response
	 * 												the requested scope is invalid, unknown, 
	 * 												malformed, or exceed the scope granted 
	 * 												by the resource owner
	 * @return Oauth2_Model_Token					the recieved token
	 */
	public static function getAccessToken($token_endpoint, $auth_code, 
											$redirect_uri, $client_id, 
											$client_secret) {
		$http_client = new Zend_Http_Client($token_endpoint);
		$http_client->getAdapter()->setStreamContext(self::$SSL_OPTIONS);
		
// 		$http_client->setHeaders(array('Accept-encoding' => ''));
		
		$http_client->setMethod(Zend_Http_Client::POST);
		$http_client->setHeaders(Zend_Http_Client::CONTENT_TYPE, 
									Zend_Http_Client::ENC_URLENCODED);
		
		$http_client->setAuth($client_id, $client_secret, 
								Zend_Http_Client::AUTH_BASIC);
// 		$basic_authentication = base64_encode($client_id.':'.$client_secret);
// 		$http_client->setHeaders('Authorization', 'Basic '.$basic_authentication);

		$http_client->setParameterPost(self::$GRANT_TYPE_PARAM, 
											self::$AUTHORIZATION_CODE);
		$http_client->setParameterPost(self::$CODE_PARAM, $auth_code);
		$http_client->setParameterPost(self::$REDIRECT_URI_PARAM, $redirect_uri);
		
// 		required if the client is not authenticating with the 
// 		authorization server as described in section 3.2.1.
// 		TODO what to do
		$http_client->setParameterPost(self::$CLIENT_ID_PARAM, $client_id);
		
		
		return self::makeRequestToAuthorizationServer($token_endpoint, $http_client);
	}
	
	
	/**
	 * 
	 * @param Oauth2_Model_Token $t
	 * @param string $client_id the client id to which the token belongs
	 * @param string $client_secret the client secret to perform
	 * the authorization with the authorization server
	 * 
	 * @throws Oauth2_Model_Exception if there was an error during the
	 * communication with the AS, e.g. invalid response
	 * @throws Oauth2_Model_TokenException if some params of the
	 * token are missing or invalid
	 * @throws Oauth2_Model_TokenPartException if some token part is
	 * malformed
	 * 
	 * @throws Oauth2_Model_InvalidRequestException	rfc 6749 section 4.1.2.1. Error Response
	 * 												The request is missing a request parameter, 
	 * 												includes an invalid parameter value, includes
	 * 												a parameter more than once, or is otherwise 
	 * 												malformed.
	 * @throws Oauth2_Model_InvalidClientException	rfc 6749 section 5.2. Error Response
	 * 												client authentication failed 
	 * 												(e.g., unknown client, invalid 
	 * 												client authentication included, 
	 * 												or unsupported authentication method).
	 * @throws Oauth2_Model_InvalidGrantException	rfc 6749 section 5.2. Error Response
	 * 												the provided authorization grant 
	 * 												(authorization code, resource woner
	 * 												credentials) or refresh token is 
	 * 												invalid, expired, revoked, does not
	 * 												match the redirection uri used in 
	 * 												the authorization request or was 
	 * 												issued to another client.
	 * @throws Oauth2_Model_UnauthorizedClientException	rfc 6749 section 5.2. Error Response
	 * 												The authenticated client is not
	 * 												authorized to use this authorization 
	 * 												grant type
	 * @throws Oauth2_Model_UnsupportedGrantTypeException	rfc 6749 section 5.2. Error Response
	 * 												the authorization grant type is not 
	 * 												supported by the authorization server
	 * @throws Oauth2_Model_InvalidScopeException	rfc 6749 section 5.2. Error Response
	 * 												the requested scope is invalid, unknown, 
	 * 												malformed, or exceed the scope granted 
	 * 												by the resource owner
	 * @return Oauth2_Model_Token					the new recieved token
	 */
	public static function refreshToken(Oauth2_Model_Token $t, $client_id, $client_secret) {
		if ($t == null)
			throw new Oauth2_Model_Exception('null token');
		
		/*
		 * zend rest client has problems.. resets all parameters prior to make request - 
		 * see http://stackoverflow.com/questions/8658678/posting-a-file-using-zend-rest-client
		 * http://framework.zend.com/issues/browse/ZF-10664
		 * 
		 * So instead I'm using Zend_Http_Client
		 */
		$http_client = new Zend_Http_Client($t->getIssuerTokenEndpointUri());
		$http_client->getAdapter()->setStreamContext(self::$SSL_OPTIONS);
		
// 		$http_client->setHeaders(array('Accept-encoding' => ''));
		
		$http_client->setMethod(Zend_Http_Client::POST);
		$http_client->setHeaders(Zend_Http_Client::CONTENT_TYPE, 
									Zend_Http_Client::ENC_URLENCODED);
		
// 		$basic_authentication = base64_encode($client_id.':'.$client_secret);
// 		$http_client->setHeaders('Authorization', 'Basic '.$basic_authentication);
		$http_client->setAuth($client_id, $client_secret,
								Zend_Http_Client::AUTH_BASIC);
		
		$http_client->setParameterPost(self::$GRANT_TYPE_PARAM, 
											self::$REFRESH_TOKEN_PARAM);
		$http_client->setParameterPost(self::$REFRESH_TOKEN_PARAM, 
											$t->getRefreshToken());
		
		return self::makeRequestToAuthorizationServer($t->getIssuerTokenEndpointUri(), $http_client);
		
	}
	
	
	/**
	 * given a token, this method performs the request to the RS
	 * @param Oauth2_Model_Token $t
	 * @throws Oauth2_Model_Exception
	 * @throws Oauth2_Model_ExpiredTokenException
	 * @return Oauth2_Model_ReceivedData
	 */
	public static function getAllData(Oauth2_Model_Token $t) {
		if ($t == null || ! $t instanceof Oauth2_Model_Token)
			throw new Oauth2_Model_Exception('not a token');
		if ($t->isExpired())
			throw new Oauth2_Model_ExpiredTokenException('token expired');

		$received = new Oauth2_Model_ReceivedData();
		foreach ($t->getTokenParts() as $tp)
			try {
				$received->addData($tp, self::getDataUsingTokenPart($tp));
			} catch (Oauth2_Model_Exception $e) {
				$received->addError($tp, $e->getDescription());
			}
		
		return $received;
	}
	
	/**
	 * 
	 * @param Oauth2_Model_Token $t the token
	 * @param string $scope
	 * @throws Oauth2_Model_Exception 					if there is no token with specified scope
	 * @throws Oauth2_Model_InvalidRequestException
	 * @throws Oauth2_Model_InvalidTokenException
	 * @throws Oauth2_Model_InsufficientScopeException
	 * @return string representation of received data
	 */
	public static function getData(Oauth2_Model_Token $t, $scope) {
		if ($t->getTokenPart($scope) == null)
			throw new Oauth2_Model_Exception('there is no token with the specified scope');

		return self::getDataUsingTokenPart($tp);
	}
	
	
	
	/*
	 * PRIVATE FUNCTIONS
	*/
	
	/**
	* this function is used when requesting a new token having an
	* authorization code (rfc 6749 section 5. Issuing an Access Token)
	* and when requesting a token having the refresh token (rfc 6749
	* section 6. Refreshing an Access Token)
	* @param string $token_endpoint				the authorization server
	* 												token endpoint
	* @param Zend_Http_Client $http_client			the http client used to make the request
	* @throws Oauth2_Model_Exception				if there was an error
	* 												during the communication with
	* 												the authorization server.
	* 												the response was not a valid
	* 												response.
	* @throws Oauth2_Model_TokenException 			if some params of the recieved
	* 												token are not present or invalid
	* @throws Oauth2_Model_TokenPartException 		if some token part is malformed
	*
	*
	* @throws Oauth2_Model_InvalidRequestException	rfc 6749 section 4.1.2.1. Error Response
	* 												The request is missing a request parameter,
	* 												includes an invalid parameter value, includes
	* 												a parameter more than once, or is otherwise
	* 												malformed.
	* @throws Oauth2_Model_InvalidClientException	rfc 6749 section 5.2. Error Response
	* 												client authentication failed
	* 												(e.g., unknown client, invalid
	* 												client authentication included,
	* 												or unsupported authentication method).
	* @throws Oauth2_Model_InvalidGrantException	rfc 6749 section 5.2. Error Response
	* 												the provided authorization grant
	* 												(authorization code, resource woner
	* 												credentials) or refresh token is
	* 												invalid, expired, revoked, does not
	* 												match the redirection uri used in
	* 												the authorization request or was
	* 												issued to another client.
	* @throws Oauth2_Model_UnauthorizedClientException	rfc 6749 section 5.2. Error Response
	* 												The authenticated client is not
	* 												authorized to use this authorization
	* 												grant type
	* @throws Oauth2_Model_UnsupportedGrantTypeException	rfc 6749 section 5.2. Error Response
	* 												the authorization grant type is not
	* 												supported by the authorization server
	* @throws Oauth2_Model_InvalidScopeException			rfc 6749 section 5.2. Error Response
	* 												the requested scope is invalid, unknown,
	* 												malformed, or exceed the scope granted
	* 												by the resource owner
	* @return Oauth2_Model_Token					the recieved token
	*/
	private static function makeRequestToAuthorizationServer($token_endpoint, Zend_Http_Client $http_client) {
		try {
			$response = $http_client->request();
		} catch (Zend_Http_Client_Exception $e) {
			throw new Oauth2_Model_Exception('cannot make the request - '.$e->getMessage());
		}
		
		if ($response->getHeader(Zend_Http_Client::CONTENT_TYPE) != self::$AS_RESPONSE_CONTENT_TYPE)
			throw new Oauth2_Model_Exception('invalid content-type header');
	
		$response_http_status_code = $response->getStatus();
	
	
		if ($response_http_status_code == 200) {
			return new Oauth2_Model_Token($token_endpoint, $response->getBody());
		} else if ($response_http_status_code == 400 || $response_http_status_code == 401) {
			$content = json_decode($response->getBody(), true);
	
			if ($content == null || !is_array($content))
				throw new Oauth2_Model_Exception('cannot decode the response body');
	
			$error_code = $content[self::$ERROR_PARAM];
			$error_description = $error_code.': '.isset($content[self::$ERROR_DESCRIPTION_PARAM]) ? $content[self::$ERROR_DESCRIPTION_PARAM] : '';
			$error_uri = isset($content[self::$ERROR_URI_PARAM]) ? $content[self::$ERROR_URI_PARAM] : '';
	
			switch ($error_code) {
				case self::$ERROR_INVALID_REQUEST:
					throw new Oauth2_Model_InvalidRequestException($error_description, $error_uri);
				case self::$ERROR_INVALID_CLIENT:
					throw new Oauth2_Model_InvalidClientException($error_description, $error_uri);
				case self::$ERROR_INVALID_GRANT:
					throw new Oauth2_Model_InvalidGrantException($error_description, $error_uri);
				case self::$ERROR_UNAUTHORIZED_CLIENT:
					throw new Oauth2_Model_UnauthorizedClientException($error_description, $error_uri);
				case self::$ERROR_UNSUPPORTED_GRANT_TYPE:
					throw new Oauth2_Model_UnsupportedGrantTypeException($error_description, $error_uri);
				case self::$ERROR_INVALID_SCOPE:
					throw new Oauth2_Model_InvalidScopeException($error_description, $error_uri);
				default:
					throw new Oauth2_Model_Exception('unrecognized error code');
			}
		} else
			throw new Oauth2_Model_Exception('recieved response with invalid status code');
	}
	
	
	
	/**
	 * given a token part performs the actual RESTful request to the RS
	 * @param Oauth2_Model_TokenPart $tp
	 * @throws Oauth2_Model_Exception
	 * @throws Oauth2_Model_InvalidRequestException
	 * @throws Oauth2_Model_InvalidTokenException
	 * @throws Oauth2_Model_InsufficientScopeException
	 * @return string representation of received data
	 */
	private static function getDataUsingTokenPart(Oauth2_Model_TokenPart $tp) {
		if ($tp == null || ! $tp instanceof Oauth2_Model_TokenPart)
			throw new Oauth2_Model_Exception('not a token part');
		
		
		
		$htcl = new Zend_Http_Client($tp->getContactUri());
		$htcl->getAdapter()->setStreamContext(self::$SSL_OPTIONS);
		
		$htcl->setHeaders(self::$RS_REQUEST_HEADER,self::$RS_AUTHENTICATION_SCHEME.' '.$tp->getTokenPart());
	
		try {
			$response = $htcl->request(Zend_Http_Client::GET);
		} catch (Zend_Http_Client_Exception $e) {
			throw new Oauth2_Model_Exception('cannot make request: '.$e->getMessage());
		}		
	
		$status_code = $response->getStatus();
		if ($status_code == self::$RS_RESPONSE_SUCCESS_HTTP_STATUS_CODE)
			return $response->getBody();
		
		//use the getErrorDetails function to extract specific parameter values
		//$error_details = self::getErrorDetails($response->getHeader(self::$RESPONSE_HEADER));
		$error_details = $response->getHeader(self::$RS_RESPONSE_HEADER);
	
		switch ($status_code) {
			case self::$RS_RESPONSE_ERROR_INVALID_REQUEST_HTTP_STATUS_CODE:
				throw new Oauth2_Model_InvalidRequestException('Bad Request.'.$error_details);
			case self::$RS_RESPONSE_ERROR_INVALID_TOKEN_HTTP_STATUS_CODE:
				throw new Oauth2_Model_InvalidTokenException('Unauthorized.'.$error_details);
			case self::$RS_RESPONSE_ERROR_INSUFFICIENT_SCOPE_HTTP_STATUS_CODE:
				throw new Oauth2_Model_InsufficientScopeException('Forbidden.'.$error_details);
			default:
				throw new Oauth2_Model_Exception('there was an error with http status code '.$status_code);
		}
	}
	
	/**
	 * given the WWW-Authenticate header value it extracts the parameters
	 * @param string $header_content	header value
	 * @throws Oauth2_Model_Exception	if the parameter does not contain a valid
	 * 									encoding of error details
	 * @return array[string]string 		key = errortype, value = error description
	 */
	private static function getErrorDetails($header_content) {
		if (empty($header_content))
			throw new Oauth2_Model_Exception('invalid error response');
		if (! preg_match('/([^=]+) (.+)/m', $header_content, $match) == 1 || count($match) != 3)
			throw new Oauth2_Model_Exception('invalid error response');
	
		$auth_scheme = trim($match[1]);
		if ($auth_scheme != self::$RS_AUTHENTICATION_SCHEME)
			throw new Oauth2_Model_Exception('invalid authentication scheme in error response');
	
		$details = array();
	
		$remaining_params = trim($match[2]);
		while ($remaining_params != '') {
			if(preg_match('/([^=]+)=("[^"]++"), (.+)/m', $remaining_params, $match)) {
				if (count($match) != 4)
					throw new Oauth2_Model_Exception('invalid error response params');
	
				$details[$match[1]] = $match[2];
				$remaining_params = $match[3];
			} else {
				if (preg_match('/([^=]+)=("[^"]++")/m', $remaining_params, $match)) {
					if (count($match) != 3)
						throw new Oauth2_Model_Exception('invalid error response params');
	
					$details[$match[1]] = $match[2];
					$remaining_params = '';
				} else
					throw new Oauth2_Model_Exception('invalid error response params');
			}
		}
	
		return $details;
	}
	
	/*
	 * ========================================================================
	 */
}
