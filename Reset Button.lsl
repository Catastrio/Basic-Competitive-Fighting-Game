notify(string message)
{
    llOwnerSay(message);
}

default
{
    state_entry()
    {
        llSetText("Reset Button", <1,1,1>, 1);
    }
    
    touch_start(integer total_number)
    {
        llMessageLinked(LINK_SET, 0, "85364Reset", "");
    }
    
    link_message(integer sender_num, integer num, string message, key id)
 {
     if(message == "Game Over"){
         llSleep(8);
         llMessageLinked(LINK_SET, 0, "85364Reset", "");
    }
 }
    
}
