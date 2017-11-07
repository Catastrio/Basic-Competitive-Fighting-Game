# Basic-Competitive-Fighting-Game
Basic competitive fighting game with rules similar to rock, paper, scissors.

Based on the rules for a now non existent game called "Blind Fight", compete against another player in a Rock, Paper, Scissors like fashion!
First to beat their opponent 3 times wins.

The choices each player can make are:
1. High Kick - beats Weapon Attack, Flying Punch
2. Low Kick - beats Block, Flying punch, Upper punch, High kick
3. Upper Punch - beats Block, Weapon attack, High kick
4. Flying  Punch - beats Upper punch, Special Attack
5. Weapon Attack - beats Low kick, flying punch, block
6. Special Attack - beats High kick, low kick, upper punch, weapon attack
7. Block - beats High kick, flying punch

To build this game in Second Life, use this is a guide:
![alt text](https://i.imgur.com/PplEH2j.png)

3 Cubes on the bottom.
  -2 of the cubes represent player platforms. Player 1&2 scripts go here
  -The middle cube is where the resolver script will go.

2 Long ones on top
  -The player UUID getters. Place on on each side. Make sure this matches up with which player script is in the cube below.

3 balls above each player side.
  -These represent player health. The red balls in the picture represent Health Ball 3 for the corresponding player. 
  -Health ball 2 is in the middle and health ball 1 is the opposite end.
 Reset button
  -This is a single block. This resets the healths and choices of both players.

Resolver.lsl - This is the heart of the game. This listens for player choices and resolves who won the round. 

Player 1 & 2 ID Getter.lsl - These two scripts are placed in the long green bars. Clicking on these will get the user's unique user ID (UUID) this makes it so the side they're standing on only accepts commands from that user.

Player 1 & 2 Script - Awaiting a touch from the player after their ID is grabbed, these platforms will prompt the player to choose an attack.

Reset Button - Simply sends a reset command to all linked blocks.
