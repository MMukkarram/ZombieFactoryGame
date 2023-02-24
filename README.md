
# ZombieFactoryGame

Zombie Factory is a simple web3 etherium based project. It is a very short and basic project. It basically covers how to build a game on Ethereum.
It's designed for beginners to Solidity, but it assumes you have some experience programming in another language (e.g. JavaScript).

# Chapter 1: Lesson Overview
In Lesson 1, you're going to build a "Zombie Factory" to build an army of zombies.

Our factory will maintain a database of all zombies in our army
Our factory will have a function for creating new zombies
Each zombie will have a random and unique appearance
In later lessons, we'll add more functionality, like giving zombies the ability to attack humans or other zombies! But before we get there, we have to add the basic functionality of creating new zombies.

How Zombie DNA Works
The zombie's appearance will be based on its "Zombie DNA". Zombie DNA is simple — it's a 16-digit integer, like:

8356281049284737
Just like real DNA, different parts of this number will map to different traits. The first 2 digits map to the zombie's head type, the second 2 digits to the zombie's eyes, etc.

Note: For this tutorial, we've kept things simple, and our zombies can have only 7 different types of heads (even though 2 digits allow 100 possible options). Later on we could add more head types if we wanted to increase the number of zombie variations.

For example, the first 2 digits of our example DNA above are 83. To map that to the zombie's head type, we do 83 % 7 + 1 = 7. So this Zombie would have the 7th zombie head type.

In the panel to the right, go ahead and move the head gene slider to the 7th head (the Santa hat) to see what trait the 83 would correspond to.

Put it to the test
Play with the sliders on the right side of the page. Experiment to see how the different numerical values correspond to different aspects of the zombie's appearance.
Ok, enough playing around. When you're ready to continue, hit "Next Chapter" below, and let's dive into learning Solidity!

# Chapter 1: Lesson 2 Overview
In lesson 1, we created a function that takes a name, uses it to generate a random zombie, and adds that zombie to our app's zombie database on the blockchain.

In lesson 2, we're going to make our app more game-like: We're going to make it multi-player, and we'll also be adding a more fun way to create zombies instead of just generating them randomly.

How will we create new zombies? By having our zombies "feed" on other lifeforms!

Zombie Feeding
When a zombie feeds, it infects the host with a virus. The virus then turns the host into a new zombie that joins your army. The new zombie's DNA will be calculated from the previous zombie's DNA and the host's DNA.

And what do our zombies like to feed on most?

To find that out... You'll have to complete lesson 2!

Put it to the test
There's a simple demo of feeding to the right. Click on a human to see what happens when your zombie feeds!

You can see that the new zombie's DNA is determined by your original zombie's DNA, as well as the host's DNA.

When you're ready, click "Next chapter" to move on, and let's get started by making our game multi-player.

