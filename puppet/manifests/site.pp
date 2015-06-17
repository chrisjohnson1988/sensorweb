include ::java
include ::tomcat
include ::postgresql::server
include ::postgis
include ::wget

Exec {
  path => '/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin:/usr/local/sbin',
}

create_resources('::postgresql::server::db',          hiera('databases'))
create_resources('::postgresql::server::pg_hba_rule', hiera('pg_rules'))
Class['::postgresql::server'] -> Class['::postgis']

create_resources('::tomcat::instance',   hiera('tomcat::instance'))
create_resources('::tomcat::deployment', hiera('tomcat::deployment'))
create_resources('::wget::fetch',        hiera('wget::fetch'))
Class['::java'] -> Class['::tomcat']
