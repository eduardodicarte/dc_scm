# Class: dc_scm
#
# This module manages dc_scm
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class dc_scm (String $httpServer, String $configAccept, String $servidorSCM) {
  
  include ::dc_scm::dependencies

  if $servidorSCM == "svn" {
    include dc_scm::svn::install
  } elsif $servidorSCM == "git" {
    include dc_scm::git::install
  }
}
