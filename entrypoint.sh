#!/usr/bin/env sh
display_help() {
    	echo "To know how to use wabt module, simply follow instructions from: 				" >&2
	echo "	https://github.com/WebAssembly/wabt#running-wat2wasm					"
    	echo
	echo "To run this container use:								"
	echo "	docker run -it --rm -v \$(pwd):/src -u \$(id -u):\$(id -g) thearqsz/wabt <COMMAND>	"
	echo 
	echo "Available commands:									"
    	echo "	wasm2wat 										"
	echo "	wasm2c		                                                			"
	echo "	wasm2json	                                                    			"
	echo "	wasm-decompile		                                               			"
	echo "	wasm-interp										"
	echo "	wat2wasm	                                                			"
    	echo
    	exit 1
}

display_help
