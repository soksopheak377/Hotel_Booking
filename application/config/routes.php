<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
//$route['default_controller'] = 'welcome';
$route['default_controller'] = 'home';
$route['/'] = 'front/pages';
$route['home'] = 'front/pages';
$route['room'] = 'front/room/index';
$route['contactus'] = 'front/pages/contactus';
$route['about'] = 'front/pages/about';
// ---------------------for link base_url backend------------
$route['dashboard']='back/dashboard';
$route['rooms']='back/rooms';
$route['rooms/add']='back/rooms/add';
$route['rooms/edit/(:num)']='back/rooms/edit/$1';
$route['rooms/detail/(:num)']='back/rooms/detail/$1';
$route['rooms/save']='back/rooms/save';

$route['roomtypes']='back/roomtypes';
$route['roomtypes/add']='back/roomtypes/add';
$route['roomtypes/save']='back/roomtypes/save';
$route['roomtypes/edit/(:num)']='back/roomtypes/edit/$1';
$route['roomtypes/detail/(:num)']='back/roomtypes/detail/$1';


$route['users']='back/users';
$route['users/add']='back/users/add';
$route['users/save']='back/users/save';
$route['users/edit/(:num)']='back/users/edit/$1';
$route['users/detail/(:num)']='back/users/detail/$1';


$route['booking']='back/booking';
$route['booking/add']='back/booking/add';
$route['booking/save']='back/booking/save';
$route['booking/edit/(:num)']='back/booking/edit/$1';
$route['booking/detail/(:num)']='back/booking/detail/$1';


$route['login']='back/login';


$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
