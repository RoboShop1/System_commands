### grep -x 
### grep \b \B \s \S \w \W
### why not -eq for string comprasion?  it gives '0'

## check var is exists or not
```
! [[ -v name2 ]] && echo "var is not exists" || echo "var is exists 

```

## string manpulation


### Array to  add  an element
```
num=( 1 2 3 4 5 )
num+=(6)
```

### Array delete an specific element
```
num=( 1 2 3 4 5 )
num=( ${num[@]/4} )
num=( $(echo ${num[@]/3}) )
```

## "Unshifting" means adding an element at the beginning of a list or array. Bash doesn't have a built-in "unshift" command, but you can simulate it.

```
# You have a line of people represented as an array
people=("Alice" "Bob" "Carol")

# You want to add "Dave" to the front of the line
people=("Dave" "${people[@]}")
```
## Shifting" means removing the first element from a list or array, or from the input arguments in a script. Bash has a built-in shift command that does this.

```
You have a line of people
people=("Dave" "Alice" "Bob" "Carol")

Dave leaves the line
shift people

```
## POP in shell array
### remove last element in array 
```
num=(1 2 3 4 5 6)
unset num[$(( ${#num[@]} - 1 ))]
```

### Array sciling 
```
echo "${arr[@]:$start:$length}"

echo "${arr[@]: -1}"
```

### Another logic 
```
num=($(seq 1 10))

for i in ${!num[@]}; do
        echo "$i - ${num[@]:$i:1}"

done
```






































