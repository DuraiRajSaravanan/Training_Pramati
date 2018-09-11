 declare -i count=0                                   #Declaring a variable count to maintain the count of words which has vowels. Initially it is assigned 0.
 for j in $(cat test.txt);                            #Loop to iterate through every single word in the document
 do     
   for (( i=0; i<${#j}; i++ ));                       #Loop to iterate through evry single letter in the current word
     do        
       if [[ "${j:$i:1}" == [AEIOUaeiou] ]]; then     #Condition to check if current letter is vowel
         let "count++"                                #if it is a vowel, we increment the value of count
         break                                        #When a word contains single vowel, break this current loop and move to next iteration
    fi                                                #End of if loop
     done;                                            #End of for loop(letter iteration)
 done                                                 #End of for loop(word iteration)
echo $count                                           #Print the value of count
