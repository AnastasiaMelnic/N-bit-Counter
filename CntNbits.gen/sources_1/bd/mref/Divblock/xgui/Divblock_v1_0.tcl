# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DIV_RATE1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIV_RATE2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIV_RATE3" -parent ${Page_0}


}

proc update_PARAM_VALUE.DIV_RATE1 { PARAM_VALUE.DIV_RATE1 } {
	# Procedure called to update DIV_RATE1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIV_RATE1 { PARAM_VALUE.DIV_RATE1 } {
	# Procedure called to validate DIV_RATE1
	return true
}

proc update_PARAM_VALUE.DIV_RATE2 { PARAM_VALUE.DIV_RATE2 } {
	# Procedure called to update DIV_RATE2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIV_RATE2 { PARAM_VALUE.DIV_RATE2 } {
	# Procedure called to validate DIV_RATE2
	return true
}

proc update_PARAM_VALUE.DIV_RATE3 { PARAM_VALUE.DIV_RATE3 } {
	# Procedure called to update DIV_RATE3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIV_RATE3 { PARAM_VALUE.DIV_RATE3 } {
	# Procedure called to validate DIV_RATE3
	return true
}


proc update_MODELPARAM_VALUE.DIV_RATE1 { MODELPARAM_VALUE.DIV_RATE1 PARAM_VALUE.DIV_RATE1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIV_RATE1}] ${MODELPARAM_VALUE.DIV_RATE1}
}

proc update_MODELPARAM_VALUE.DIV_RATE2 { MODELPARAM_VALUE.DIV_RATE2 PARAM_VALUE.DIV_RATE2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIV_RATE2}] ${MODELPARAM_VALUE.DIV_RATE2}
}

proc update_MODELPARAM_VALUE.DIV_RATE3 { MODELPARAM_VALUE.DIV_RATE3 PARAM_VALUE.DIV_RATE3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIV_RATE3}] ${MODELPARAM_VALUE.DIV_RATE3}
}

