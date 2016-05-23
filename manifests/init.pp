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
class dc_scm(String $httpServer, String $configAccept) {
  include ::dc_scm::dependencies
}
