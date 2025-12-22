#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##

xfce_config_run_pre () {

	xfce_service_stop


	return 0

}

xfce_config_run_post () {

	xfce_service_start


	return 0

}

xfce_service_stop () {

	xfce_service_stop_xfconfd

	#xfce_service_stop_xfsettingsd


	return 0

}

xfce_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

xfce_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

xfce_service_start () {


	return 0

}

xfce_config_install () {

	echo
	echo "##"
	echo "## Config: xfce"
	echo "##"
	echo


	xfce_config_install_by_dir


	echo

}

xfce_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: xfce
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xfce_config_run_pre

	xfce_config_install

	xfce_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
