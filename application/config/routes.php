<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'endUser';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

###### main links ######
$route['home'] = 'endUser';
$route['about'] = 'endUser/About';
$route['patients-and-guests'] = 'endUser/Patients_And_Guests';
$route['whats-new'] = 'endUser/Whats_New';
$route['services'] = 'endUser/Services';
$route['doctors'] = 'endUser/Doctors';
$route['careers'] = 'endUser/Careers';
$route['tour'] = 'endUser/Tour';
$route['contact'] = 'endUser/Contact_Us';
$route['event'] = 'endUser/This_Event';

###### sub-links services ######
$route['services-single-24OPD'] = 'endUser/Services_Single_24OPD';
$route['services-single-24OR'] = 'endUser/Services_Single_24OR';

###### admin login ######
$route['admin_login'] = 'Admin_login';
$route['admin_login_action'] = 'Admin_login/login_action';

###### admin links ######
$route['admin/dashboard'] = 'adminUser';
$route['admin/doctors'] = 'adminUser/doctorsFunc';
$route['admin/services'] = 'adminUser/servicesFunc';
$route['admin/packages'] = 'adminUser/packagesFunc';

###### trying page route ######
$route['try'] = 'endUser/try';
$route['trylog'] = 'trylogin/login';

#########################################################################################
#################################### ATTRIBUTES #########################################
#########################################################################################
// $route['doctors'] = 'people/redirect_doctor_list';
// $route['add-doctor'] = 'people/redirect_add_doctor';
// $route['manage-department'] = 'attributes/redirect_manage_department';
// $route['manage-specialty'] = 'attributes/redirect_manage_specialty';
// $route['manage-building'] = 'attributes/redirect_manage_building';
// $route['manage-hmo'] = 'attributes/redirect_manage_HMO';
// $route['doctor-profile/(:num)'] = 'people/redirect_doctor_profile/$1';
// $route['doctor-clinic-schedule/(:num)'] = 'people/redirect_doctor_clinic_schedule/$1';
// $route['doctor-accredited-hmo/(:num)'] = 'people/redirect_doctor_accredited_hmo/$1';