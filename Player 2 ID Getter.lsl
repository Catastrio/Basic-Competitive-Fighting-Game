integer toucherID;
integer toggle;


default
{
    state_entry()
    {
        llSetColor(<1.000, 0.255, 0.212>, ALL_SIDES);
        toggle = TRUE;
    }

    touch_start(integer total_number)
    {
        if(toggle)
        {
        llSetColor(<0.180, 0.800, 0.251>, ALL_SIDES); 
        llSay(73035, (string)llDetectedKey(0));
        toggle = FALSE;
        }
        else
        {
            llSay(0, "Player 2 already entered!");
        }
        
    }
    link_message (integer sender_num, integer num, string message, key id)
        {
            if(message == "85364Reset")
            {
                llResetScript();
            }
        }
    }