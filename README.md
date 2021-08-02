# Store
#### Small ruby app that simulate typical purchase process at any local store

## Configuration
+ Pure Ruby
+ Special purpose classe for every product
+ Reading from `.txt` files
+ Language: ru 

## Launch
1. Clone the repo
2. Add your custom `.txt` files (about book, movie or music disc) to `store/data/.../` according to existing examples, like this one:
```
# /data/books/01.txt
Властелин Колец
роман-эпопея
Джон Рональд Руэл Толкиен
1799
13
```
If you want to add a book your file lines must contain the next information:
```
# line 1: title
# line 2: genre
# line 3: author
# line 4: price (use digits only)
# line 5: stock (warehouse stocks)

``` 
For a music disc:
```
# line 1: title
# line 2: genre
# line 3: author
# line 4: year
# line 5: price (use digits only)
# line 6: stock (warehouse stocks)
```

For a movie:
```
# line 1: title
# line 2: director
# line 3: year
# line 4: price (use digits only)
# line 5: stock (warehouse stocks)
```
3. Exec:
```
$ ruby main.rb
```
and enjoy!
