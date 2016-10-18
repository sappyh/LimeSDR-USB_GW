# TCL File Generated by Component Editor 15.1
# Tue Oct 18 15:06:45 EEST 2016
# DO NOT MODIFY


# 
# Av_FIFO_Int "Av_FIFO_Int" v1.0
# ZT 2016.10.18.15:06:45
# Avalon interface to onchip FIFO memory
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module Av_FIFO_Int
# 
set_module_property DESCRIPTION "Avalon interface to onchip FIFO memory"
set_module_property NAME Av_FIFO_Int
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP LMS_IPs
set_module_property AUTHOR ZT
set_module_property DISPLAY_NAME Av_FIFO_Int
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avfifo
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avfifo.vhd VHDL PATH ip/avfifo/avfifo.vhd TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter width INTEGER 32
set_parameter_property width DEFAULT_VALUE 32
set_parameter_property width DISPLAY_NAME width
set_parameter_property width TYPE INTEGER
set_parameter_property width ENABLED false
set_parameter_property width UNITS None
set_parameter_property width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property width HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 address address Input 2
add_interface_port avalon_slave_0 chipselect chipselect Input 1
add_interface_port avalon_slave_0 write write Input 1
add_interface_port avalon_slave_0 writedata writedata Input width
add_interface_port avalon_slave_0 read read Input 1
add_interface_port avalon_slave_0 readdata readdata Output width
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset rsi_nrst reset_n Input 1


# 
# connection point cnd_if_d
# 
add_interface cnd_if_d conduit end
set_interface_property cnd_if_d associatedClock clock
set_interface_property cnd_if_d associatedReset reset
set_interface_property cnd_if_d ENABLED true
set_interface_property cnd_if_d EXPORT_OF ""
set_interface_property cnd_if_d PORT_NAME_MAP ""
set_interface_property cnd_if_d CMSIS_SVD_VARIABLES ""
set_interface_property cnd_if_d SVD_ADDRESS_GROUP ""

add_interface_port cnd_if_d coe_if_d export Input 32


# 
# connection point cnd_if_rd
# 
add_interface cnd_if_rd conduit end
set_interface_property cnd_if_rd associatedClock clock
set_interface_property cnd_if_rd associatedReset reset
set_interface_property cnd_if_rd ENABLED true
set_interface_property cnd_if_rd EXPORT_OF ""
set_interface_property cnd_if_rd PORT_NAME_MAP ""
set_interface_property cnd_if_rd CMSIS_SVD_VARIABLES ""
set_interface_property cnd_if_rd SVD_ADDRESS_GROUP ""

add_interface_port cnd_if_rd coe_if_rd export Output 1


# 
# connection point cnd_of_wrfull
# 
add_interface cnd_of_wrfull conduit end
set_interface_property cnd_of_wrfull associatedClock clock
set_interface_property cnd_of_wrfull associatedReset reset
set_interface_property cnd_of_wrfull ENABLED true
set_interface_property cnd_of_wrfull EXPORT_OF ""
set_interface_property cnd_of_wrfull PORT_NAME_MAP ""
set_interface_property cnd_of_wrfull CMSIS_SVD_VARIABLES ""
set_interface_property cnd_of_wrfull SVD_ADDRESS_GROUP ""

add_interface_port cnd_of_wrfull coe_of_wrfull export Input 1


# 
# connection point cnd_of_wr
# 
add_interface cnd_of_wr conduit end
set_interface_property cnd_of_wr associatedClock clock
set_interface_property cnd_of_wr associatedReset reset
set_interface_property cnd_of_wr ENABLED true
set_interface_property cnd_of_wr EXPORT_OF ""
set_interface_property cnd_of_wr PORT_NAME_MAP ""
set_interface_property cnd_of_wr CMSIS_SVD_VARIABLES ""
set_interface_property cnd_of_wr SVD_ADDRESS_GROUP ""

add_interface_port cnd_of_wr coe_of_wr export Output 1


# 
# connection point cnd_of_d
# 
add_interface cnd_of_d conduit end
set_interface_property cnd_of_d associatedClock clock
set_interface_property cnd_of_d associatedReset reset
set_interface_property cnd_of_d ENABLED true
set_interface_property cnd_of_d EXPORT_OF ""
set_interface_property cnd_of_d PORT_NAME_MAP ""
set_interface_property cnd_of_d CMSIS_SVD_VARIABLES ""
set_interface_property cnd_of_d SVD_ADDRESS_GROUP ""

add_interface_port cnd_of_d coe_of_d export Output 32


# 
# connection point cnd_if_rdempty
# 
add_interface cnd_if_rdempty conduit end
set_interface_property cnd_if_rdempty associatedClock clock
set_interface_property cnd_if_rdempty associatedReset reset
set_interface_property cnd_if_rdempty ENABLED true
set_interface_property cnd_if_rdempty EXPORT_OF ""
set_interface_property cnd_if_rdempty PORT_NAME_MAP ""
set_interface_property cnd_if_rdempty CMSIS_SVD_VARIABLES ""
set_interface_property cnd_if_rdempty SVD_ADDRESS_GROUP ""

add_interface_port cnd_if_rdempty coe_if_rdempty export Input 1


# 
# connection point cnd_fifo_rst
# 
add_interface cnd_fifo_rst conduit end
set_interface_property cnd_fifo_rst associatedClock clock
set_interface_property cnd_fifo_rst associatedReset reset
set_interface_property cnd_fifo_rst ENABLED true
set_interface_property cnd_fifo_rst EXPORT_OF ""
set_interface_property cnd_fifo_rst PORT_NAME_MAP ""
set_interface_property cnd_fifo_rst CMSIS_SVD_VARIABLES ""
set_interface_property cnd_fifo_rst SVD_ADDRESS_GROUP ""

add_interface_port cnd_fifo_rst coe_fifo_rst export Output 1

