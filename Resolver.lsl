// 1. High Kick - beats Weapon Attack, Flying Punch
// 2. Low Kick - beats Block, Flying punch, Upper punch, High kick
// 3. Upper Punch - beats Block, Weapon attack, High kick
// 4. Flying  Punch - beats Upper punch, Special Attack
// 5. Weapon Attack - beats Low kick, flying punch, block
// 6. Special Attack - beats High kick, low kick, upper punch, weapon attack
// 7. Block - beats High kick, flying punch

integer player1Choice;
integer player2Choice;
float playerTime = 5;
integer player1num = 17;
integer player2num = 18;
string print1Choice;
string print2Choice;

player1Damage()
{
    llMessageLinked(10, 0, "Damage", "");   
}

player2Damage()
{
    llMessageLinked(3, 0, "Damage", ""); 
}

default
{
    
    state_entry()
    {
        llSetTimerEvent(playerTime);
    }
    
    link_message (integer sender_num, integer num, string message, key id)
    {
        if(message == "85364Reset")
        {
            llResetScript();
        }
        if(sender_num == player1num)
        {
            if (message == "High Kick")
            {
                player1Choice = 1;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "high kick";
            }
            if (message == "Low Kick")
            {
                player1Choice = 2;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "low kick";
            }
            if (message == "Upper Punch")
            {
                player1Choice = 3;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "upper punch";
            }
            if (message == "Flying Punch")
            {
                player1Choice = 4;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "flying punch";
            }
            if (message == "Weapon Attack")
            {
                player1Choice = 5;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "weapon attack";
            }
            if (message == "Special Attack")
            {
                player1Choice = 6;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "special attack";
            }
            if (message == "Block")
            {
                player1Choice = 7;
                llSay(0, "Player 1 has entered their choice!");
                print1Choice = "block";
            }
            if(message == "85364Reset")
            {
                llResetScript();
            }
        }
        
      else if (sender_num == player2num)
        {
            if (message == "High Kick")
            {
                player2Choice = 1;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "high kick";
            }
            if (message == "Low Kick")
            {
                player2Choice = 2;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "low kick";
            }
            if (message == "Upper Punch")
            {
                player2Choice = 3;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "upper punch";
            }
            if (message == "Flying Punch")
            {
                player2Choice = 4;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "flying punch";
            }
            if (message == "Weapon Attack")
            {
                player2Choice = 5;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "weapon attack";
            }
            if (message == "Special Attack")
            {
                player2Choice = 6;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "special attack";
            }
            if (message == "Block")
            {
                player2Choice = 7;
                llSay(0, "Player 2 has entered their choice!");
                print2Choice = "block";
            } 
        }
            if(player1Choice != 0 && player2Choice != 0)
            {
            llSay(0, "Both choices have been entered!");
            state resolveActions;
            }
    }
    timer()
    {
            if(player1Choice != 0 && player2Choice != 0)
            {
            llSay(0, "Both choices have been entered!");
            state resolveActions;
            }     
    }   
}


state resolveActions
{
 state_entry()
 {
     llSay(0, "Player 1 chose: " + print1Choice + " & player 2 chose: " + print2Choice);
     llSleep(2);
     if(player1Choice == 1)
     {
         if(player2Choice == 5 || player2Choice == 4)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
         else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }
     }
     
     if(player1Choice == 2)
     {
         if(player2Choice == 1 || player2Choice == 3 || player2Choice == 4 || player2Choice == 7)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
         else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }  
     }
     
     if(player1Choice == 3)
     {
         if(player2Choice == 1 || player2Choice == 5 || player2Choice == 7)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
         else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }
     }
     
     if(player1Choice == 4)
     {
         if(player2Choice == 3 || player2Choice == 6)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
        else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }
     }
     
     if(player1Choice == 5)
     {
         if(player2Choice == 2 || player2Choice == 4 || player2Choice == 7)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
        else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }
     }
     
     if(player1Choice == 6)
     {
         if(player2Choice == 1 || player2Choice == 2 || player2Choice == 3 || player2Choice == 5)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
         else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }
     }
     
          if(player1Choice == 7)
     {
         if(player2Choice == 1 || player2Choice == 4)
         {
             llSay(0, "Player 1 wins!");
             player2Damage();
         }
         else if(player1Choice == player2Choice)
         {
            llSay(0, "You chose the same thing! Refight!");
            llMessageLinked(player1num, 0, "Tie", "");
            llMessageLinked(player2num, 0, "Tie", "");
         }
         else
         {
             llSay(0, "Player 2 wins!");
             player1Damage();
         }
     }
     
     player1Choice = 0;
     player2Choice = 0;
     llSleep(.5);
     state default;
    }   
}