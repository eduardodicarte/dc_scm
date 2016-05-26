class dc_scm::svn::install {
  
  $svnVersion = '1.7.14-10.el7'
  
  package {"subversion":
    ensure => $svnVersion
  }
  
  package {"subversion-tools":
    ensure => $svnVersion
  }
  
  package{"mod_dav_svn":
    ensure => $svnVersion
  }
}