var OxO7084=["","sel_align","sel_valign","sel_justify","sel_letter","tb_letter","sel_letter_unit","sel_line","tb_line","sel_line_unit","tb_indent","sel_indent_unit","sel_direction","sel_writingmode","outer","div_demo","disabled","selectedIndex","cssText","style","value","textAlign","verticalAlign","textJustify","letterSpacing","length","options","lineHeight","textIndent","direction","writingMode"];function ParseFloatToString(Ox24){var Ox8=parseFloat(Ox24);if(isNaN(Ox8)){return OxO7084[0];} ;return Ox8+OxO7084[0];} ;var sel_align=Window_GetElement(window,OxO7084[1],true);var sel_valign=Window_GetElement(window,OxO7084[2],true);var sel_justify=Window_GetElement(window,OxO7084[3],true);var sel_letter=Window_GetElement(window,OxO7084[4],true);var tb_letter=Window_GetElement(window,OxO7084[5],true);var sel_letter_unit=Window_GetElement(window,OxO7084[6],true);var sel_line=Window_GetElement(window,OxO7084[7],true);var tb_line=Window_GetElement(window,OxO7084[8],true);var sel_line_unit=Window_GetElement(window,OxO7084[9],true);var tb_indent=Window_GetElement(window,OxO7084[10],true);var sel_indent_unit=Window_GetElement(window,OxO7084[11],true);var sel_direction=Window_GetElement(window,OxO7084[12],true);var sel_writingmode=Window_GetElement(window,OxO7084[13],true);var outer=Window_GetElement(window,OxO7084[14],true);var div_demo=Window_GetElement(window,OxO7084[15],true);UpdateState=function UpdateState_Text(){tb_letter[OxO7084[16]]=sel_letter_unit[OxO7084[16]]=(sel_letter[OxO7084[17]]>0);tb_line[OxO7084[16]]=sel_line_unit[OxO7084[16]]=(sel_line[OxO7084[17]]>0);div_demo[OxO7084[19]][OxO7084[18]]=element[OxO7084[19]][OxO7084[18]];} ;SyncToView=function SyncToView_Text(){sel_align[OxO7084[20]]=element[OxO7084[19]][OxO7084[21]];sel_valign[OxO7084[20]]=element[OxO7084[19]][OxO7084[22]];sel_justify[OxO7084[20]]=element[OxO7084[19]][OxO7084[23]];sel_letter[OxO7084[20]]=element[OxO7084[19]][OxO7084[24]];sel_letter_unit[OxO7084[17]]=0;if(sel_letter[OxO7084[17]]==-1){if(ParseFloatToString(element[OxO7084[19]].letterSpacing)){tb_letter[OxO7084[20]]=ParseFloatToString(element[OxO7084[19]].letterSpacing);for(var i=0;i<sel_letter_unit[OxO7084[26]][OxO7084[25]];i++){var Ox142=sel_letter_unit[OxO7084[26]][i][OxO7084[20]];if(Ox142&&element[OxO7084[19]][OxO7084[24]].indexOf(Ox142)!=-1){sel_letter_unit[OxO7084[17]]=i;break ;} ;} ;} ;} ;sel_line[OxO7084[20]]=element[OxO7084[19]][OxO7084[27]];sel_line_unit[OxO7084[17]]=0;if(sel_line[OxO7084[17]]==-1){if(ParseFloatToString(element[OxO7084[19]].lineHeight)){tb_line[OxO7084[20]]=ParseFloatToString(element[OxO7084[19]].lineHeight);for(var i=0;i<sel_line_unit[OxO7084[26]][OxO7084[25]];i++){var Ox142=sel_line_unit[OxO7084[26]][i][OxO7084[20]];if(Ox142&&element[OxO7084[19]][OxO7084[27]].indexOf(Ox142)!=-1){sel_line_unit[OxO7084[17]]=i;break ;} ;} ;} ;} ;sel_indent_unit[OxO7084[17]]=0;if(!isNaN(ParseFloatToString(element[OxO7084[19]].textIndent))){tb_indent[OxO7084[20]]=ParseFloatToString(element[OxO7084[19]].textIndent);for(var i=0;i<sel_indent_unit[OxO7084[26]][OxO7084[25]];i++){var Ox142=sel_indent_unit[OxO7084[26]][i][OxO7084[20]];if(Ox142&&element[OxO7084[19]][OxO7084[28]].indexOf(Ox142)!=-1){sel_indent_unit[OxO7084[17]]=i;break ;} ;} ;} ;sel_direction[OxO7084[20]]=element[OxO7084[19]][OxO7084[29]];sel_writingmode[OxO7084[20]]=element[OxO7084[19]][OxO7084[30]];} ;SyncTo=function SyncTo_Text(element){element[OxO7084[19]][OxO7084[21]]=sel_align[OxO7084[20]];element[OxO7084[19]][OxO7084[22]]=sel_valign[OxO7084[20]];element[OxO7084[19]][OxO7084[23]]=sel_justify[OxO7084[20]];if(sel_letter[OxO7084[17]]>0){element[OxO7084[19]][OxO7084[24]]=sel_letter[OxO7084[20]];} else {if(ParseFloatToString(tb_letter.value)){element[OxO7084[19]][OxO7084[24]]=ParseFloatToString(tb_letter.value)+sel_letter_unit[OxO7084[20]];} else {element[OxO7084[19]][OxO7084[24]]=OxO7084[0];} ;} ;if(sel_line[OxO7084[17]]>0){element[OxO7084[19]][OxO7084[27]]=sel_line[OxO7084[20]];} else {if(ParseFloatToString(tb_line.value)){element[OxO7084[19]][OxO7084[27]]=ParseFloatToString(tb_line.value)+sel_line_unit[OxO7084[20]];} else {element[OxO7084[19]][OxO7084[27]]=OxO7084[0];} ;} ;if(ParseFloatToString(tb_indent.value)){element[OxO7084[19]][OxO7084[28]]=ParseFloatToString(tb_indent.value)+sel_indent_unit[OxO7084[20]];} else {element[OxO7084[19]][OxO7084[28]]=OxO7084[0];} ;element[OxO7084[19]][OxO7084[29]]=sel_direction[OxO7084[20]]||OxO7084[0];element[OxO7084[19]][OxO7084[30]]=sel_writingmode[OxO7084[20]]||OxO7084[0];} ;