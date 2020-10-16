# WABT

Repository for [wabt](https://github.com/WebAssembly/wabt) docker image

## Usage

It couldn't be simplier:

1. Go to the directory of your choice e.g:
```console
cd /mydir
```
2. Pull this image:
```console
docker pull thearqsz/wabt
```
3. Run it!
```console
docker run -it --rm -v $(pwd):/src -u  $(id -u):$(id -g) thearqsz/wabt <COMMAND>
```
>Replace \<COMMAND\> with command of your choice:
  > - wasm2wat
  > - wasm2c                                                    
  > - wasm2json
  > - wasm-decompile
  > - wasm-interp
  > - wat2wasm
