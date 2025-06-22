# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LIMIT_MA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BITS_MA" -parent ${Page_0}


}

proc update_PARAM_VALUE.LIMIT_MA { PARAM_VALUE.LIMIT_MA } {
	# Procedure called to update LIMIT_MA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LIMIT_MA { PARAM_VALUE.LIMIT_MA } {
	# Procedure called to validate LIMIT_MA
	return true
}

proc update_PARAM_VALUE.NUM_BITS_MA { PARAM_VALUE.NUM_BITS_MA } {
	# Procedure called to update NUM_BITS_MA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BITS_MA { PARAM_VALUE.NUM_BITS_MA } {
	# Procedure called to validate NUM_BITS_MA
	return true
}


proc update_MODELPARAM_VALUE.NUM_BITS_MA { MODELPARAM_VALUE.NUM_BITS_MA PARAM_VALUE.NUM_BITS_MA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BITS_MA}] ${MODELPARAM_VALUE.NUM_BITS_MA}
}

proc update_MODELPARAM_VALUE.LIMIT_MA { MODELPARAM_VALUE.LIMIT_MA PARAM_VALUE.LIMIT_MA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LIMIT_MA}] ${MODELPARAM_VALUE.LIMIT_MA}
}

