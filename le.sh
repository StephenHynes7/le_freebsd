#!/bin/sh

# PROVIDE: le

. /etc/rc.subr

name="le"
python="/usr/local/bin/python"
le="/usr/bin/le"                                                          
monitor="monitor"
rcvar="enable_le"
start_cmd="le_start"
stop_cmd=":"

load_rc_config $name

le_start()
{
    if checkyesno ${rcvar}; then
        ${python} ${le} ${monitor}
    fi
}

run_rc_command "$1"
