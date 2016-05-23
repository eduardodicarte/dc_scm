class dc_scm::dependencies{
  
  class{"dc_httpserver":
    server => $dc_scm::httpServer
  }
  
  class{"dc_firewall":
    configAccept => $dc_scm::configAccept 
  }
}