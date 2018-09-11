 declare -i count=0
 for j in $(cat test.txt);   
 do     
   for (( i=0; i<${#j}; i++ ));      
     do        
       if [[ "${j:$i:1}" == [AEIOUaeiou] ]]; then
         let "count++"
         break
    fi   
     done;   
 done 
 echo $count
