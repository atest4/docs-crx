#!/bin/bash

echo '<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">' > index.html
echo '<style> a { display: block; margin-top: 0.7em; } </style>' >> index.html

for file in `ls *.html | tr " " "\?"`
do
	file=`tr "\?" " " <<< $file`

	if [[ $file = 'index.html' ]]
	then
		continue
	fi
	echo "<a href=\"$file\">$file</a>" >> index.html
done
