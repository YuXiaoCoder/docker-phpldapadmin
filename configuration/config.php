<?php
$config->custom->session['blowfish'] = '519b6e4def16e5132afe35928ba04bff';
$config->custom->appearance['friendly_attrs'] = array(
    'facsimileTelephoneNumber' => 'Fax',
    'gid'                      => 'Group',
    'mail'                     => 'Email',
    'telephoneNumber'          => 'Telephone',
    'uid'                      => 'User Name',
    'userPassword'             => 'Password'
);

$servers = new Datastore();
$servers->newServer('ldap_pla');
$servers->setValue('server','name','SD LDAP Server');
$servers->setValue('server','host','openldap');
$servers->setValue('server','port','389');

$servers->setValue('login','attr','dn');

$servers->setValue('login','anon_bind',false);

$servers->setValue('login','allowed_dns',array('cn=admin,dc=xiaocoder,dc=com'));
?>
