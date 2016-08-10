#!/bin/bash
for filename in `find . | egrep '\.cpp'`; 
do 
  gcov -n -o debug $filename > /dev/null; 
  gcov -n -o release $filename > /dev/null; 
done