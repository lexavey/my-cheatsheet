
## Show first 100 line of big file
    cat <file> | head -n 100
## Starting at X line
    tail --lines=+100 <file>
## Search file contains
##### Exclude
    grep --exclude=\*.{js,jpg} -rnw './' -e 'password' >> result.txt
##### Include
    grep --include=\*.{php,txt} -rnw './' -e 'password' >> result.txt
## Search and move
    grep --exclude=\*.{js,jpg} -rl './' -e '</script>'  | xargs mv -t ./html

## Remove line contains
##### awk
    awk '!/pattern/' file > temp && mv temp file
##### ruby
    ruby -i.bak -ne 'print if not /test/' file
##### perl
    perl -ni.bak -e "print unless /pattern/" file
##### bash while
    while read -r line
    do
      [[ ! $line =~ pattern ]] && echo "$line"
    done <file > o
    mv o file
##### grep
    grep -v "pattern" file > temp && mv temp file
##### sed
    sed -n '/pattern/!p' file
## Line not contains
    grep -v "pattern" file
## Show all dirs
    du <DIR> --time -h -c
## Show all files
    find -type f -printf '%h\0%d\0%p\n' | sort -t '\0' -n | awk -F '\0' '{print $3}
    find ./ -type f -printf '%h\0%d\0%p\n' | sort -t '\0' -n | awk -F '\0' '{print $3}' > x.txt
## Show all dirs and files
    du <DIR> --time -h -c -a
## Start at line 100 & show first 100 (line 100-200 from 999 line)
    tail --lines=+100 x.txt | head -n 100 | grep -v "nohup.out"
    tail --lines=+300 x.txt  | grep -v -E "nohup.out|x.txt" | head -n 100
## Find all .css files
    find . -print | grep -i .css
