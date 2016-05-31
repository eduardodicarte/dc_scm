class dc_scm::svn::config{
  file{"/etc/httpd/conf.modules.d/10-subversion.conf":
    ensure => file,
    content => epp('dc_scm/svn/10-subversion.conf.epp',{'alias_svn'=>$dc_scm::repositoryPath}),
    require => Package["httpd"]
  }
}