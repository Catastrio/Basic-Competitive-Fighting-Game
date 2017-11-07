default
{
    
    state_entry()
    {
       llSetColor(<0.180, 0.800, 0.251>, ALL_SIDES); 
    }
    
    link_message (integer sender_num, integer num, string message, key id)
    {
        if(sender_num == 10)
        {
            if (message == "2")
            {
                llSetColor(<1.000, 0.255, 0.212>, ALL_SIDES);
            }
            if (message == "Reset")
            {
                llResetScript();
            }
        }
    } 
}