
##### Show first 100 line of big file
`cat <file> | head -n 100`

##### Starting at X line
`tail --lines=+100 <file>`

##### Search file contains

`grep --exclude=\*.{js,jpg} -rnw './' -e 'password' >> result.txt`

`grep --include=\*.{php,txt} -rnw './' -e 'password' >> result.txt`

##### Remove line contains

```awk '!/pattern/' file > temp && mv temp file```

```ruby -i.bak -ne 'print if not /test/' file```

```perl -ni.bak -e "print unless /pattern/" file```

    while read -r line
    do
      [[ ! $line =~ pattern ]] && echo "$line"
    done <file > o
    mv o file

 ```grep -v "pattern" file > temp && mv temp file```

```sed -n '/pattern/!p' file```

##### Line not contains

```grep -v "pattern" file```

##### Show all dirs

```du <DIR> --time -h -c```

##### Show all files

```find -type f -printf '%h\0%d\0%p\n' | sort -t '\0' -n | awk -F '\0' '{print $3}'```

```find /app/ -type f -printf '%h\0%d\0%p\n' | sort -t '\0' -n | awk -F '\0' '{print $3}' > x.txt```


##### Show all dirs and files

```du <DIR> --time -h -c -a```



tail --lines=+100 x.txt | head -n 100 | grep -v "nohup.out"

tail --lines=+300 x.txt  | grep -v -E "nohup.out|x.txt" | head -n 100
```
find . -print | grep -i .css

```
awk '!/Invalid user name or password/' x.txt> temp && mv temp x.txt

tail --lines=+100 x.txt | head -n 100

grep -v "Ka" gap.txt
