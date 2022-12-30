#!/bin/bash

echo '<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">' > index.html
echo '<style> .nav-item { margin-top: 0.7em; } </style>' >> index.html

for file in `ls *.html | tr " " "\?"`
do
	file=`tr "\?" " " <<< $file`

	if [[ $file = 'index.html' ]]
	then
		continue
	fi
	echo "<div class=\"nav-item\"><a href=\"$file\">$file</a></div>" >> index.html
done
