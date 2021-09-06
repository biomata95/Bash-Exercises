#!/bin/bash

file=$1
$(who > $file)
$(sort -d < $file)