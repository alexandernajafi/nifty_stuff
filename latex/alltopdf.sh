#!/bin/bash

for i in $(ls "img/*.eps") do
	epstopdf $i;
done
