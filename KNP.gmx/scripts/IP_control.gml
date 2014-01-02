// Usage: IP_control(string)=bool;


//dot test
if string_count('.',argument0)!=3 
{
  write_log('IP failed on dot test..');
  return(false);
}

//letters test
if string_letters(argument0)!=''
{
  write_log('IP failed on letters test..');
  return(false);
}


//IP parts detection
IP_part[1]='';
IP_part[2]='';
IP_part[3]='';
IP_part[4]='';

var pointer=1; //which part of IP is tested

for(i=1;i<=string_length(argument0);i++)
{
if string_char_at(argument0,i)!='.'
{ IP_part[pointer]+=string_char_at(argument0,i); } //digit is added
else                                                //dot is skipped
{

if !is_between(0,real(IP_part[pointer]),255)
{
write_log('Unexpected number ('+string(real(IP_part[pointer]))+') in IP part '+string(pointer));
return(false); 
}
 pointer++;
if pointer>4 //should not happen
{ 
 write_log('Somehow more dots in IP than expected..');
return(false); 
}
} 
}

 write_log('IP part 1 detected: '+string(IP_part[1]));
 write_log('IP part 2 detected: '+string(IP_part[2]));
 write_log('IP part 3 detected: '+string(IP_part[3]));
 write_log('IP part 4 detected: '+string(IP_part[4]));
 
return(true);
 
 
 
 







