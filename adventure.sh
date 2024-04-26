#! /bin/bash

name=$1

echo  "The Simple Fantasy Adventure"
echo " "
echo " "


echo "Hello $name, before your adventure starts, please select a class"
read -p  "(Mage, Knight, Peasant, Hippo): " strClass
if [ $strClass = 'Mage' ]; then
echo "Ah so you are seeking power eh? The Mage is a very powerful individual blessed with many ancient and forbidden powers."
elif [ $strClass = 'Knight' ]; then
echo "Good choice. The Knight is very strong and noble. Most Knight have the right of passage through many kingdoms with the use of his or her house crest."
elif [ $strClass = "Hippo" ]; then
echo "Interesting choice. The Hippo is very strong and therefore is hardly contested while walking troughout the wild as none dare try to get in its way."
else
echo "The peasant is not extraordinarily strong but has many skills related to farming and trading. This comes in handy when supplies are running low. "
fi

echo ""
echo ""

echo "Next, please choose your starting location."
read -p "(forest, mountain, village, desert, jungle): " strLocation
if [ $strLocation = 'forest' ]; then
echo "The heavily wooded forest is known to be home to many creatures. Some of these creatures are friendly while others are not."
elif [ $strLocation = 'mountain' ]; then
echo "High peaks give those who reach them a beatiful view of the land. Not much can survive on these snowy and steep peaks and have been known to take many lives."
elif [ $strLocation = "village" ]; then
echo "A thriving town makes a good place to start ones adventure. There are plenty of people needing help from those who want an adventure or those who seek a simple life on the land."
elif [ $strLocation = "desert" ]; then
echo "A barren wasteland that is very unforgiving. Expiditions must be planned carefully are resources are few and far between under the blistering sun."
else
echo "The thick jungle is the most resource rich location. Over the years, expeditions have ceased as the thick foliage and wildlife have made it hard for lager parties to navigate. Individuals though, do not face those same problems as riches wait to be found."
fi

echo ""
echo ""

echo "Every $strClass needs a companion, choose your primary inventory item"
read -p  "(mace, sword, bow, spell book, cantaloupe): " strItem
if [ $strItem = 'Mace' ]; then
echo "Made of solid steel the mace is a deadly weapon but is very heavy. This requires every hit to count as it will take some time to swing this heavy weapon around."
elif [ $strItem = 'sword' ]; then
echo "Forged in the royal kingdoms, a sword is a well balanced weapon for those who know how to use one. Not to heavy but not to light, this weapons is for duelests who have trained in the art of using this weapon of choice for many."
elif [ $strItem = "spell book" ]; then
echo "While it takes the longest to master, the spell book holds many secrets that when learned could alter the balance of good and evil. It all comes down to the one holding it."
elif [ $strItem = 'bow' ]; then
echo "This skillful weapon may not be shiny or magical, but the bow is commonly weilded by only the most keen of adventurers. Its quiet nature is perfect for those who do not want to seen while vanquishing foes from a distance. "
else
echo "Hm if you throw it hard enough i suppose the cantaloupe could count as a weapon, or are you just choosing it because you are hunry?"
fi

echo ""
echo ""

echo "All thats left is to choose your challenge"
read -p  "(campaign, explore, sleep, eat): " strChallenge
if [ $strChallenge = 'campaign' ]; then
echo "If you are looking for a long quest to prove ones worthiness, try going a campaign across the continent conquoring foes and starting your path of becoming a mighty king."
elif [ $strChallenge = 'explore' ]; then
echo "Curious about the world around you? Exploring can lead to many facisnating discoveries and allows one to truly appreciate the world."
elif [ $strChallenge = "sleep" ]; then
echo "Well adventures arnt for evereyone like naps are. Sleep tight."
else
echo "You are so right, one cannot adventure on an empty stomach. Whats on the menu?"
fi

echo ""
echo ""

echo "As the sun rises, the birds chirp and the suns early rays reflect off of the" > adventureStoryline.txt
echo "shiny surface of the $strItem as it lies on the ground waiting to be picked up." >> adventureStoryline.txt
echo "While $strItem are not uncommon in this $strLocation, this specific $strItem is owned by" >> adventureStoryline.txt
echo "a very special $strClass" >> adventureStoryline.txt
echo "This $strClass by the name of $name is about to embark on a simple fantasy Adventure." >> adventureStoryline.txt

echo " " >> adventureStoryline.txt

echo "$name awoke, and while $name was not the most powerful $strClass, $name could sense something" >> adventureStoryline.txt
echo "watching. Everyone in the $strLocation had heard the story of terrible beasts" >> adventureStoryline.txt
echo "and $name had been very fortunate not to run into any until now. $name grabbed" >> adventureStoryline.txt
echo "the $strItem off the ground and prepared for a fight. $name had only intended to " >> adventureStoryline.txt
echo "$strChallenge today, but it looked like plans had changed." >> adventureStoryline.txt

echo " " >> adventureStoryline.txt

echo "with a mighy a roar a shadow leaped out from behind some vegetation and $name" >> adventureStoryline.txt
echo "was a mere second from letting loose and using his $strItem when suddenly a cat landed" >> adventureStoryline.txt
echo "at $name's feet. Terrified by what was behind the cat, $name stayed in a fighting" >> adventureStoryline.txt
echo "stance as the cat sat and waited for attention. Suddenly the cat let loose a roar" >> adventureStoryline.txt
echo "far from what a cat should sound like, causing $name to jump and drop his $strItem." >> adventureStoryline.txt
echo "After recovering from the shock, $name realized that there were no monstsers" >> adventureStoryline.txt
echo "in the $strLocation, just cats. With this knowledge, $name scooped up the cat and" >> adventureStoryline.txt
echo "the $strItem off the ground and continued to $strChallenge as he origionally entended" >> adventureStoryline.txt

echo "" >> adventureStoryline.txt
echo "" >> adventureStoryline.txt

cat adventureStoryline.txt
