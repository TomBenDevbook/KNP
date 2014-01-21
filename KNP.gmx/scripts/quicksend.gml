///quicksend('servername',socket,'name_A','status_A','choice_A',index_A,'name_B','status_B','choice_B',index_B)

//                0         1       2           3        4         5       6           7        8        9


var buff=buffer_create(2024,buffer_grow,1);

buffer_seek(buff,buffer_seek_start,0);

buffer_write(buff,buffer_string,'quick'); // síťový režim pomalý
buffer_write(buff,buffer_string,string(argument0)); //server name


buffer_write(buff,buffer_string,string(obj_server.battling_A)); //id self and other
buffer_write(buff,buffer_string,string(obj_server.battling_B)); // --||--

buffer_write(buff,buffer_string,string(argument2)); //name A
buffer_write(buff,buffer_string,string(argument3)); //status A
buffer_write(buff,buffer_string,string(argument4)); //choice A
buffer_write(buff,buffer_string,string(argument5)); //index A

buffer_write(buff,buffer_string,string(argument6)); //name B
buffer_write(buff,buffer_string,string(argument7)); //status B
buffer_write(buff,buffer_string,string(argument8)); //choice B
buffer_write(buff,buffer_string,string(argument9)); //index B



network_send_packet(argument1, buff, buffer_tell(buff) );
buffer_delete(buff);

return(1);


