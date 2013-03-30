#!/bin/sh
TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=pacmind
img=/usr/share/pixmaps/pacmind.png

export TEXTDOMAINDIR=/usr/share/locale
export TEXTDOMAIN=pacmind

fuction_belong () {
	text=`zenity --title="$(gettext 'Belongs To Files') --entry --text="$(gettext 'Search package containing the file:') 'yaourt -Qo'"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Belongs To Files')" -e "yaourt -Qo $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

fuction_clear () {
	zenity --question --title="$(gettext 'Clear Cache')" --text="$(gettext 'Clear Cache'):
	'yaourt -Scc'" --ok-label="$(gettext 'Remove')" --cancel-label="$(gettext 'Exit')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Clear Cache')" -e "yaourt -Scc
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

fuction_db_upgrade () {
	xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "Pacman DB Upgrade" -e "sudo pacman-db-upgrade
	read -sp \"$(gettext 'Upgrade successfully').
	$(gettext 'Press Enter to close the window') \"
	"
}

fuction_dep () {
	zenity --question --title="$(gettext 'Remove Dependencies')" --text="$(gettext 'Remove Dependencies'):
	'yaourt -R $(yaourt -Qdtq)'" --ok-label="$(gettext 'Remove')" --cancel-label="$(gettext 'Exit')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm -bg black -fg white -T "$(gettext 'Remove Dependencies')" -e "yaourt -R $(yaourt -Qdtq)
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

fuction_force () {
	zenity --question --title="$(gettext 'Update force mode')" --text="$(gettext 'Force upgrade'): 'yaourt -Syuaf'" --ok-label="$(gettext 'Upgrade')" --cancel-label="Exit"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Update System')" -e "yaourt -Syuaf
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

fuction_info_pkg () {
	text=`zenity --title="$(gettext 'Search Packages')" --entry --text="$(gettext 'Search Packages') : 'yaourt -Qi'"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Info Packages')" -e "yaourt -Qi $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

fuction_info () {
	info_img=/usr/share/pixmaps/pacmind.png
	export MAIN_DIALOG='
	 <window title="$(gettext 'Informations')"  window_position="1">
	 <vbox>
	  <pixmap>
	      <input file>'$info_img'</input>
	    </pixmap>
	  <text use-markup="true">
	    <label>"<b>Pacmind 2.2</b>"</label>
	  </text>
	  <text wrap="true" width-chars="50">
	    <label>'$(gettext 'Pacmind is a Gtk Frontend for Yaourt, based on GTK-Dialog and inspired by Yaourt-Gui')'</label>
	  </text>
	  <hbox>
	   <button ok></button>
	  </hbox>
	 </vbox>
	</window>
	'
	gtkdialog --program=MAIN_DIALOG
}


fuction_install () {
	if text=`zenity --title="$(gettext 'Install Packages')" --entry --text="$(gettext 'Install one or more packages'): 'yaourt -S'
	$(gettext 'In case of multiple-choice enter a space between the one and the other --entry-text=Insert package/s name')"` 
	then echo $text
	xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Install Packages')" -e "yaourt -S $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
	fi
}

fuction_optimize () {
	xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "Optimizes Pacman" -e "sudo pacman-optimize
	read -sp \"
	$(gettext 'Press Enter to close the window') \"
	"
}

fuction_pacdiff () {
	xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "PacDiffViewer" -e "yaourt -C
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

fuction_remove () {
	if text=`zenity --title="$(gettext 'Remove Packages')" --entry --text="$(gettext 'Remove one or more packages'): 'yaourt -R'
	$(gettext 'In case of multiple-choice enter a space between the one and the other --entry-text=Insert package/s name')"` 
	then echo $text
	xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Remove Packages')" -e "yaourt -R $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
	fi
}

fuction_find_install () {
	text=`zenity --title="$(gettext 'Search e install packages')" --entry --text="$(gettext 'Search e install packages'): 'yaourt'"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Search e install package')" -e "yaourt $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

fuction_find () {
	text=`zenity --title="$(gettext 'Search Packages')" --entry --text="$(gettext 'Search packages by name or keyword'): 'yaourt -Ss'
	$(gettext 'For example, for search a pdf reader type pdf')" --entry-text="$(gettext 'Type keyword')"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Search Package')" -e "yaourt -Ss $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

fuction_update () {
	zenity --question --title="$(gettext 'Update System')" --text="$(gettext 'Upgrade packages'): 'yaourt -Syua'" --ok-label="$(gettext 'Update')" --cancel-label="$(gettext 'Exit')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Update System')" -e "yaourt -Syua
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

fuction_sync () {
	zenity --question --title="$(gettext 'Sync DB')" --text="$(gettext 'Update repo'): 'yaourt -Sy'" --ok-label="$(gettext 'Update')" --cancel-label="$(gettext 'Exit')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Update repo')" -e "yaourt -Sy
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

fuction_inman () {
	if text=`zenity --title="$(gettext 'Install Packages')" --file-selection="$(gettext 'Manually install one or more packages'): 'yaourt -U'
	$(gettext 'In case of multiple-choice enter a space between the one and the other --entry-text=Insert package/s name')"` 
	then echo $text
	xterm -fn *-*-fixed-medium-r-normal--*-140-*-*-*-*-iso8859-7 -bg black -fg white -T "$(gettext 'Manually install one or more packages')" -e "yaourt -U \"$text\"
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
	fi
}



case $1 in
	1)
		fuction_sync
	;;
	2)
		fuction_update
	;;
	3)
		fuction_force
	;;
	4)
		fuction_install
	;;
	5)
		fuction_remove
	;;
	6)
		fuction_find
	;;
	7)
		fuction_find_install
	;;
	8)
		fuction_belong
	;;
	9)
		fuction_info_pkg
	;;
	10)
		fuction_inman
	;;
	11)
		fuction_dep
	;;
	12)
		fuction_clear
	;;
	13)
		fuction_pacdiff
	;;
	14)
		fuction_db_upgrade
	;;
	15)
		fuction_optimize
	;;
	16)
		fuction_info
	;;
	17)
esac