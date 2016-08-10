#!/bin/bash
for filename in `find . | egrep '\.cpp'`; 
do 
  gcov -n -o debug $filename > /dev/null
done

cd debug
mv *.gcno ../
mv *.gcda ../
mv *.o ../
