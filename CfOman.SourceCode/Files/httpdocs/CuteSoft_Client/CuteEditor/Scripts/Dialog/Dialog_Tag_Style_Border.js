var OxOfa87=["SetStyle","length","","GetStyle","GetText",":",";","cssText","div_selector_event","div_selector","sel_part","tb_margin","sel_margin_unit","tb_padding","sel_padding_unit","tb_border","sel_border_unit","sel_border","sel_style","inp_color","inp_color_Preview","outer","div_demo","offsetWidth","offsetHeight","Top","Left","Bottom","Right","onmousemove","runtimeStyle","border","4px solid red","style","onmouseout","onclick","value","onchange","disabled","selectedIndex","4px solid blue","-","Color"," ","#7f7c75","backgroundColor","Style","Width","options","margin","padding"];function pause(Ox4a3){var Oxa8= new Date();var Ox4a4=Oxa8.getTime()+Ox4a3;while(true){Oxa8= new Date();if(Oxa8.getTime()>Ox4a4){return ;} ;} ;} ;function StyleClass(Ox201){var Ox4a6=[];var Ox4a7={};if(Ox201){Ox4ac();} ;this[OxOfa87[0]]=function SetStyle(name,Ox4f,Ox4a9){name=name.toLowerCase();for(var i=0;i<Ox4a6[OxOfa87[1]];i++){if(Ox4a6[i]==name){break ;} ;} ;Ox4a6[i]=name;Ox4a7[name]=Ox4f?(Ox4f+(Ox4a9||OxOfa87[2])):OxOfa87[2];} ;this[OxOfa87[3]]=function GetStyle(name){name=name.toLowerCase();return Ox4a7[name]||OxOfa87[2];} ;this[OxOfa87[4]]=function Ox4ab(){var Ox201=OxOfa87[2];for(var i=0;i<Ox4a6[OxOfa87[1]];i++){var Ox27=Ox4a6[i];var p=Ox4a7[Ox27];if(p){Ox201+=Ox27+OxOfa87[5]+p+OxOfa87[6];} ;} ;return Ox201;} ;function Ox4ac(){var arr=Ox201.split(OxOfa87[6]);for(var i=0;i<arr[OxOfa87[1]];i++){var p=arr[i].split(OxOfa87[5]);var Ox27=p[0].replace(/^\s+/g,OxOfa87[2]).replace(/\s+$/g,OxOfa87[2]).toLowerCase();Ox4a6[Ox4a6[OxOfa87[1]]]=Ox27;Ox4a7[Ox27]=p[1];} ;} ;} ;function GetStyle(Ox137,name){return  new StyleClass(Ox137.cssText).GetStyle(name);} ;function SetStyle(Ox137,name,Ox4f,Ox4ad){var Ox4ae= new StyleClass(Ox137.cssText);Ox4ae.SetStyle(name,Ox4f,Ox4ad);Ox137[OxOfa87[7]]=Ox4ae.GetText();} ;function ParseFloatToString(Ox24){var Ox8=parseFloat(Ox24);if(isNaN(Ox8)){return OxOfa87[2];} ;return Ox8+OxOfa87[2];} ;var div_selector_event=Window_GetElement(window,OxOfa87[8],true);var div_selector=Window_GetElement(window,OxOfa87[9],true);var sel_part=Window_GetElement(window,OxOfa87[10],true);var tb_margin=Window_GetElement(window,OxOfa87[11],true);var sel_margin_unit=Window_GetElement(window,OxOfa87[12],true);var tb_padding=Window_GetElement(window,OxOfa87[13],true);var sel_padding_unit=Window_GetElement(window,OxOfa87[14],true);var tb_border=Window_GetElement(window,OxOfa87[15],true);var sel_border_unit=Window_GetElement(window,OxOfa87[16],true);var sel_border=Window_GetElement(window,OxOfa87[17],true);var sel_style=Window_GetElement(window,OxOfa87[18],true);var inp_color=Window_GetElement(window,OxOfa87[19],true);var inp_color_Preview=Window_GetElement(window,OxOfa87[20],true);var outer=Window_GetElement(window,OxOfa87[21],true);var div_demo=Window_GetElement(window,OxOfa87[22],true);function GetPartFromEvent(){var src=Event_GetSrcElement();var x=Event_GetOffsetX();var y=Event_GetOffsetY();if(src==div_selector){x+=10;y+=10;} ;var Ox11=15-x;var Oxa=x-(div_selector_event[OxOfa87[23]]-15);var Ox12=15-y;var b=y-(div_selector_event[OxOfa87[24]]-15);if(Ox11>0){if(Ox12>0){return Ox11>Ox12?OxOfa87[25]:OxOfa87[26];} ;if(b>0){return Ox11>b?OxOfa87[27]:OxOfa87[26];} ;return OxOfa87[26];} ;if(Oxa>0){if(Ox12>0){return Oxa>Ox12?OxOfa87[25]:OxOfa87[28];} ;if(b>0){return Oxa>b?OxOfa87[27]:OxOfa87[28];} ;return OxOfa87[28];} ;if(Ox12>0){return OxOfa87[25];} ;if(b>0){return OxOfa87[27];} ;return OxOfa87[2];} ;div_selector_event[OxOfa87[29]]=function div_selector_event_onmousemove(){var Ox4c6=GetPartFromEvent();if(Browser_IsWinIE()){div_selector[OxOfa87[30]][OxOfa87[7]]=OxOfa87[2];div_selector[OxOfa87[30]][OxOfa87[31]+Ox4c6]=OxOfa87[32];} else {div_selector[OxOfa87[33]][OxOfa87[7]]=OxOfa87[2];div_selector[OxOfa87[33]][OxOfa87[31]+Ox4c6]=OxOfa87[32];} ;} ;div_selector_event[OxOfa87[34]]=function div_selector_event_onmouseout(){if(Browser_IsWinIE()){div_selector[OxOfa87[30]][OxOfa87[7]]=OxOfa87[2];} else {div_selector[OxOfa87[33]][OxOfa87[7]]=OxOfa87[2];} ;} ;div_selector_event[OxOfa87[35]]=function div_selector_event_onclick(){sel_part[OxOfa87[36]]=GetPartFromEvent();SyncToViewInternal();UpdateState();} ;sel_part[OxOfa87[37]]=function sel_part_onchange(){SyncToViewInternal();UpdateState();} ;UpdateState=function UpdateState_Border(){tb_border[OxOfa87[38]]=sel_border_unit[OxOfa87[38]]=(sel_border[OxOfa87[39]]>0);div_demo[OxOfa87[33]][OxOfa87[7]]=element[OxOfa87[33]][OxOfa87[7]];div_selector[OxOfa87[33]][OxOfa87[7]]=OxOfa87[2];div_selector[OxOfa87[33]][OxOfa87[31]+(sel_part[OxOfa87[36]]||OxOfa87[2])]=OxOfa87[40];} ;SyncToView=function SyncToView_Border(){var Ox4c6=sel_part[OxOfa87[36]];var Ox4c7=Ox4c6?OxOfa87[41]+Ox4c6:Ox4c6;if(Browser_IsWinIE()){inp_color[OxOfa87[36]]=element[OxOfa87[33]][OxOfa87[31]+Ox4c6+OxOfa87[42]];} else {var arr=revertColor(element[OxOfa87[33]][OxOfa87[31]+Ox4c6+OxOfa87[42]]).split(OxOfa87[43]);if(arr[0]!=OxOfa87[44]){inp_color[OxOfa87[36]]=arr[0];} ;} ;inp_color[OxOfa87[33]][OxOfa87[45]]=inp_color[OxOfa87[36]];sel_style[OxOfa87[36]]=element[OxOfa87[33]][OxOfa87[31]+Ox4c6+OxOfa87[46]];sel_border[OxOfa87[36]]=element[OxOfa87[33]][OxOfa87[31]+Ox4c6+OxOfa87[47]];var Ox5d1=element[OxOfa87[33]][OxOfa87[31]+Ox4c6+OxOfa87[47]];tb_border[OxOfa87[36]]=ParseFloatToString(Ox5d1);if(tb_border[OxOfa87[36]]){for(var i=0;i<sel_border_unit[OxOfa87[48]][OxOfa87[1]];i++){var Ox142=sel_border_unit[OxOfa87[48]][i][OxOfa87[36]];if(Ox142&&Ox5d1.indexOf(Ox142)!=-1){sel_border_unit[OxOfa87[39]]=i;break ;} ;} ;} ;var Ox5d2=element[OxOfa87[33]][OxOfa87[49]+Ox4c6];tb_margin[OxOfa87[36]]=ParseFloatToString(Ox5d2);if(tb_margin[OxOfa87[36]]){for(var i=0;i<sel_margin_unit[OxOfa87[48]][OxOfa87[1]];i++){var Ox142=sel_margin_unit[OxOfa87[48]][i][OxOfa87[36]];if(Ox142&&Ox5d2.indexOf(Ox142)!=-1){sel_margin_unit[OxOfa87[39]]=i;break ;} ;} ;} ;var Ox5d3=element[OxOfa87[33]][OxOfa87[50]+Ox4c6];tb_padding[OxOfa87[36]]=ParseFloatToString(Ox5d3);if(tb_padding[OxOfa87[36]]){for(var i=0;i<sel_padding_unit[OxOfa87[48]][OxOfa87[1]];i++){var Ox142=sel_padding_unit[OxOfa87[48]][i][OxOfa87[36]];if(Ox142&&Ox5d3.indexOf(Ox142)!=-1){sel_padding_unit[OxOfa87[39]]=i;break ;} ;} ;} ;} ;SyncTo=function SyncTo_Border(element){var Ox4c6=sel_part[OxOfa87[36]];var Ox4c7=Ox4c6?OxOfa87[41]+Ox4c6:Ox4c6;var Ox4c8=OxOfa87[2];if(sel_border[OxOfa87[39]]>0){Ox4c8=sel_border[OxOfa87[36]];} else {if(ParseFloatToString(tb_border.value)){Ox4c8=ParseFloatToString(tb_border.value)+sel_border_unit[OxOfa87[36]];} else {Ox4c8=OxOfa87[2];} ;} ;var Oxdc=inp_color[OxOfa87[36]]||OxOfa87[2];var Ox137=sel_style[OxOfa87[36]]||OxOfa87[2];if(Ox4c8||Ox137){SetStyle(element.style,OxOfa87[31]+Ox4c7,Ox4c8+OxOfa87[43]+Ox137+OxOfa87[43]+Oxdc);} else {SetStyle(element.style,OxOfa87[31]+Ox4c7,OxOfa87[2]);} ;SetStyle(element.style,OxOfa87[49]+Ox4c7,ParseFloatToString(tb_margin.value),sel_margin_unit.value);SetStyle(element.style,OxOfa87[50]+Ox4c7,ParseFloatToString(tb_padding.value),sel_padding_unit.value);} ;inp_color[OxOfa87[35]]=inp_color_Preview[OxOfa87[35]]=function inp_color_onclick(){SelectColor(inp_color,inp_color_Preview);} ;