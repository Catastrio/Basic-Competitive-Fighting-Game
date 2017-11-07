// 1. High Kick - beats Weapon Attack, Flying Punch
// 2. Low Kick - beats Block, Flying punch, Upper punch, High kick
// 3. Upper Punch - beats Block, Weapon attack, High kick
// 4. Flying  Punch - beats Upper punch, Special Attack
// 5. Weapon Attack - beats Low kick, flying punch, block
// 6. Special Attack - beats High kick, low kick, upper punch, weapon attack
// 7. Block - beats High kick, flying punch

notify(string message)
{
    llOwnerSay(message);
}

list playerChoice;
string dialogInfo = "\n Please make a choice.";

key ToucherID;
key player2ID;
integer dialogChannel;
integer listenHandle;
integer listen_handle;
integer idGetChannel;
string lastChoice;

list ListItemDelete(list mylist,string element_old) {
    integer placeinlist = llListFindList(mylist, [element_old]);
    if (placeinlist != -1)
        return llDeleteSubList(mylist, placeinlist, placeinlist);
    return mylist;
}

default
{
    state_entry()
    {
        playerChoice = ["High Kick", "Low Kick", "Upper Punch", "Flying Punch", "Weapon Attack", "Special Attack", "Block"];
        dialogChannel = 81;
        idGetChannel = llListen(73035, "", NULL_KEY, "");   
    }

    touch_start(integer total_number)
    {
    if(player2ID == llDetectedKey(0))
        {
        ToucherID = llDetectedKey(0);
        llListenRemove(listenHandle);
        listenHandle = llListen(dialogChannel, "", ToucherID, "");
        llDialog(ToucherID, dialogInfo, playerChoice, dialogChannel);
        llSetTimerEvent(60.0);
        }
    }
     listen(integer channel, string name, key id, string message)
    {
        if(channel == 73035)
        {
            player2ID = message;
        }
        if (message == "High Kick")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "High Kick", "");
        }
        if (message == "Low Kick")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "Low Kick", "");
        }
        if (message == "Upper Punch")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "Upper Punch", "");
        }
        if (message == "Flying Punch")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "Flying Punch", "");
        }
        if (message == "Weapon Attack")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "Weapon Attack", "");
        }
        if (message == "Special Attack")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "Special Attack", "");
        }
        if (message == "Block")
        {
            lastChoice = message;
            playerChoice = ListItemDelete(playerChoice, message);
            llMessageLinked(LINK_ROOT, 0, "Block", "");
        }
    }
        link_message (integer sender_num, integer num, string message, key id)
        {
            if(message == "85364Reset")
            {
                llResetScript();
            }
            if (message == "Tie")
            {
            playerChoice = playerChoice + lastChoice;
            }
        }
    }