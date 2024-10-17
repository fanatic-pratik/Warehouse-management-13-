<?php
require 'vendor/autoload.php';


$_ENV['EM_ID']   = 'sample@gmail.com';
$_ENV['EM_PASS'] = '';
$_ENV['EM_SMTP'] = 'smtp.gmail.com';
$_ENV['EM_SEC']  = 'tls';
$_ENV['EM_PORT'] = '587';

require_once __DIR__ . '/classes/Mailer.php';

// $dev_data = array('id'=>'-1','firstname'=>'Developer','lastname'=>'','username'=>'dev_oretnom','password'=>'5da283a2d990e8d8512cf967df5bc0d0','last_login'=>'','date_updated'=>'','date_added'=>'');
if(!defined('base_url')) define('base_url','http://localhost/stash/');
if(!defined('base_app')) define('base_app', str_replace('\\','/',__DIR__).'/' );
// if(!defined('dev_data')) define('dev_data',$dev_data);
if(!defined('DB_SERVER')) define('DB_SERVER',"localhost");
if(!defined('DB_USERNAME')) define('DB_USERNAME',"root");
if(!defined('DB_PASSWORD')) define('DB_PASSWORD',"");
if(!defined('DB_NAME')) define('DB_NAME',"stash");

?>