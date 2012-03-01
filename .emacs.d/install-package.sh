#! /bin/bash

pkg_name=$1
pkg_src_path=$2

mkdir $pkg_name
cp -rf $pkg_src_path $pkg_name/

