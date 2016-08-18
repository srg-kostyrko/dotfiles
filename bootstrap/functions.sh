#!/bin/sh

function info () { printf "\r  [ \033[00;34m..\033[0m ] $1\n" }
function user () { printf "\r  [ \033[0;33m??\033[0m ] $1\n" }
function header()   { echo -e "\n\033[1m$@\033[0m"; }
function success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function info()     { echo -e " \033[1;34m➜\033[0m  $@"; }
function ok()     { success 'Done' }
