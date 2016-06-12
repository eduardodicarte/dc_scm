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
class dc_scm (String $httpServer, String $configAccept, String $servidorSCM, String $repositoryPath, String $svnUser, String $svnPass, String $svnRepoName) {
  
  include ::dc_scm::dependencies

  if $servidorSCM == "svn" {
    include dc_scm::svn::install
    include dc_scm::svn::config
  } elsif $servidorSCM == "git" {
    include dc_scm::git::install
  }
}
