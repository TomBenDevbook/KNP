

//establish udp

var port = 6510; 
 server = network_create_server(network_socket_ucp, port, 1);
 while (server < 0 && port < 65535)
    {
    port++
    server = network_create_server(network_socket_ucp, port, 1);
    }
    
if port<65535 return(server); else return(-1);
     
    

