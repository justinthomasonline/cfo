var OxO5294=["inp_width","inp_height","sel_align","sel_valign","inp_bgColor","inp_borderColor","inp_borderColorLight","inp_borderColorDark","inp_class","inp_id","inp_tooltip","value","bgColor","backgroundColor","style","id","borderColor","borderColorLight","borderColorDark","className","width","height","align","vAlign","title","[[ValidNumber]]","[[ValidID]]","","class","valign","cssText","border-image: none;","onclick"];var inp_width=Window_GetElement(window,OxO5294[0],true);var inp_height=Window_GetElement(window,OxO5294[1],true);var sel_align=Window_GetElement(window,OxO5294[2],true);var sel_valign=Window_GetElement(window,OxO5294[3],true);var inp_bgColor=Window_GetElement(window,OxO5294[4],true);var inp_borderColor=Window_GetElement(window,OxO5294[5],true);var inp_borderColorLight=Window_GetElement(window,OxO5294[6],true);var inp_borderColorDark=Window_GetElement(window,OxO5294[7],true);var inp_class=Window_GetElement(window,OxO5294[8],true);var inp_id=Window_GetElement(window,OxO5294[9],true);var inp_tooltip=Window_GetElement(window,OxO5294[10],true);SyncToView=function SyncToView_Tr(){inp_bgColor[OxO5294[11]]=element.getAttribute(OxO5294[12])||element[OxO5294[14]][OxO5294[13]];inp_id[OxO5294[11]]=element.getAttribute(OxO5294[15]);inp_bgColor[OxO5294[14]][OxO5294[13]]=inp_bgColor[OxO5294[11]];inp_borderColor[OxO5294[11]]=element.getAttribute(OxO5294[16]);inp_borderColor[OxO5294[14]][OxO5294[13]]=inp_borderColor[OxO5294[11]];inp_borderColorLight[OxO5294[11]]=element.getAttribute(OxO5294[17]);inp_borderColorLight[OxO5294[14]][OxO5294[13]]=inp_borderColorLight[OxO5294[11]];inp_borderColorDark[OxO5294[11]]=element.getAttribute(OxO5294[18]);inp_borderColorDark[OxO5294[14]][OxO5294[13]]=inp_borderColorDark[OxO5294[11]];inp_class[OxO5294[11]]=element[OxO5294[19]];inp_width[OxO5294[11]]=element.getAttribute(OxO5294[20])||element[OxO5294[14]][OxO5294[20]];inp_height[OxO5294[11]]=element.getAttribute(OxO5294[21])||element[OxO5294[14]][OxO5294[21]];sel_align[OxO5294[11]]=element.getAttribute(OxO5294[22]);sel_valign[OxO5294[11]]=element.getAttribute(OxO5294[23]);inp_tooltip[OxO5294[11]]=element.getAttribute(OxO5294[24]);} ;SyncTo=function SyncTo_Tr(element){if(inp_bgColor[OxO5294[11]]){if(element[OxO5294[14]][OxO5294[13]]){element[OxO5294[14]][OxO5294[13]]=inp_bgColor[OxO5294[11]];} else {element[OxO5294[12]]=inp_bgColor[OxO5294[11]];} ;} else {element.removeAttribute(OxO5294[12]);} ;element[OxO5294[16]]=inp_borderColor[OxO5294[11]];element[OxO5294[17]]=inp_borderColorLight[OxO5294[11]];element[OxO5294[18]]=inp_borderColorDark[OxO5294[11]];element[OxO5294[19]]=inp_class[OxO5294[11]];if(element[OxO5294[14]][OxO5294[20]]||element[OxO5294[14]][OxO5294[21]]){try{element[OxO5294[14]][OxO5294[20]]=inp_width[OxO5294[11]];element[OxO5294[14]][OxO5294[21]]=inp_height[OxO5294[11]];} catch(er){alert(OxO5294[25]);} ;} else {try{element[OxO5294[20]]=inp_width[OxO5294[11]];element[OxO5294[21]]=inp_height[OxO5294[11]];} catch(er){alert(OxO5294[25]);} ;} ;var Ox376=/[^a-z\d]/i;if(Ox376.test(inp_id.value)){alert(OxO5294[26]);return ;} ;element[OxO5294[22]]=sel_align[OxO5294[11]];element[OxO5294[15]]=inp_id[OxO5294[11]];element[OxO5294[23]]=sel_valign[OxO5294[11]];element[OxO5294[24]]=inp_tooltip[OxO5294[11]];if(element[OxO5294[15]]==OxO5294[27]){element.removeAttribute(OxO5294[15]);} ;if(element[OxO5294[12]]==OxO5294[27]){element.removeAttribute(OxO5294[12]);} ;if(element[OxO5294[16]]==OxO5294[27]){element.removeAttribute(OxO5294[16]);} ;if(element[OxO5294[17]]==OxO5294[27]){element.removeAttribute(OxO5294[17]);} ;if(element[OxO5294[18]]==OxO5294[27]){element.removeAttribute(OxO5294[18]);} ;if(element[OxO5294[19]]==OxO5294[27]){element.removeAttribute(OxO5294[19]);} ;if(element[OxO5294[19]]==OxO5294[27]){element.removeAttribute(OxO5294[28]);} ;if(element[OxO5294[22]]==OxO5294[27]){element.removeAttribute(OxO5294[22]);} ;if(element[OxO5294[23]]==OxO5294[27]){element.removeAttribute(OxO5294[29]);} ;if(element[OxO5294[24]]==OxO5294[27]){element.removeAttribute(OxO5294[24]);} ;if(element[OxO5294[20]]==OxO5294[27]){element.removeAttribute(OxO5294[20]);} ;if(element[OxO5294[21]]==OxO5294[27]){element.removeAttribute(OxO5294[21]);} ;if(element[OxO5294[14]][OxO5294[30]]==OxO5294[31]){element.removeAttribute(OxO5294[14]);} ;} ;inp_borderColor[OxO5294[32]]=function inp_borderColor_onclick(){SelectColor(inp_borderColor);} ;inp_bgColor[OxO5294[32]]=function inp_bgColor_onclick(){SelectColor(inp_bgColor);} ;inp_borderColorLight[OxO5294[32]]=function inp_borderColorLight_onclick(){SelectColor(inp_borderColorLight);} ;inp_borderColorDark[OxO5294[32]]=function inp_borderColorDark_onclick(){SelectColor(inp_borderColorDark);} ;