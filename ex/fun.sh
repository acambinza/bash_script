#!/bin/bash

function hello() {
	echo "Hello!"
	# call the function now
	now
}


function now(){
	echo "It's $(date +%r)"
}

hello
