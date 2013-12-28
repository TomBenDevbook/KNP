
// ADD strign into a log queue
// 
//write_log(string);


if instance_number(log_writer)==1
{
ds_queue_enqueue(log_writer.log,string(timemark())+': '+string(argument0));
}




