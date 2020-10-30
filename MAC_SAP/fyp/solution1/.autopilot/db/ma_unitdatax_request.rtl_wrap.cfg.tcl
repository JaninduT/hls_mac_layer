set lang "C"
set moduleName "ma_unitdatax_request"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "source_addr"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set structMem0 ""
set PortName00 "mac"
set BitWidth00 "48"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list  6]
set Interface00 "wire"
set DataType00 "unsigned char"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "1"
set DataType0 [list "mac48" "struct " $structMem0 0 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "dest_addr"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "1"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set structMem1 ""
set PortName10 "mac"
set BitWidth10 "48"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list  6]
set Interface10 "wire"
set DataType10 "unsigned char"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set structParameter1 [list ]
set structArgument1 [list ]
set NameSpace1 [list ]
set structIsPacked1 "1"
set DataType1 [list "mac48" "struct " $structMem1 0 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "data"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 70]
set Interface2 "wire"
set DataType2 "unsigned char"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "up"
set BitWidth3 "4"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "uint4"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "s_class"
set BitWidth4 "1"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "[list service_class enum 1]"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "c_identifier"
set BitWidth5 "16"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set structMem5 ""
set PortName50 "operating_class"
set BitWidth50 "8"
set ArrayOpt50 ""
set Const50 "0"
set Volatile50 "0"
set Pointer50 "0"
set Reference50 "0"
set Dims50 [list 0]
set Interface50 "wire"
set DataType50 "unsigned char"
set Port50 [list $PortName50 $Interface50 $DataType50 $Pointer50 $Dims50 $Const50 $Volatile50 $ArrayOpt50]
lappend structMem5 $Port50
set PortName51 "channel_number"
set BitWidth51 "8"
set ArrayOpt51 ""
set Const51 "0"
set Volatile51 "0"
set Pointer51 "0"
set Reference51 "0"
set Dims51 [list 0]
set Interface51 "wire"
set DataType51 "unsigned char"
set Port51 [list $PortName51 $Interface51 $DataType51 $Pointer51 $Dims51 $Const51 $Volatile51 $ArrayOpt51]
lappend structMem5 $Port51
set structParameter5 [list ]
set structArgument5 [list ]
set NameSpace5 [list ]
set structIsPacked5 "0"
set DataType5 [list "channel_identifier" "struct " $structMem5 0 0 $structParameter5 $structArgument5 $NameSpace5 $structIsPacked5]
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "t_slot"
set BitWidth6 "64"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "1"
set Reference6 "0"
set Dims6 [list 0]
set Interface6 "wire"
set DataType6 "[list time_slot enum 1]"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set PortName7 "d_rate"
set BitWidth7 "64"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "1"
set Reference7 "0"
set Dims7 [list 0]
set Interface7 "wire"
set DataType7 "uint7"
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7]
lappend PortList $Port7
set PortName8 "tx_power_lvl"
set BitWidth8 "64"
set ArrayOpt8 ""
set Const8 "0"
set Volatile8 "0"
set Pointer8 "1"
set Reference8 "0"
set Dims8 [list 0]
set Interface8 "wire"
set DataType8 "uint4"
set Port8 [list $PortName8 $Interface8 $DataType8 $Pointer8 $Dims8 $Const8 $Volatile8 $ArrayOpt8]
lappend PortList $Port8
set PortName9 "expiry_time"
set BitWidth9 "64"
set ArrayOpt9 ""
set Const9 "0"
set Volatile9 "0"
set Pointer9 "1"
set Reference9 "0"
set Dims9 [list 0]
set Interface9 "wire"
set DataType9 "long long int"
set Port9 [list $PortName9 $Interface9 $DataType9 $Pointer9 $Dims9 $Const9 $Volatile9 $ArrayOpt9]
lappend PortList $Port9
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt [list  uint4 uint7 ]
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
