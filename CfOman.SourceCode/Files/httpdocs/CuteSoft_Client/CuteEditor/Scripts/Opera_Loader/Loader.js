var OxObe39=["ua","userAgent","isOpera","opera","isSafari","safari","isGecko","gecko","isWinIE","msie","compatMode","document","CSS1Compat","undefined","Microsoft.XMLHTTP","readyState","onreadystatechange","","length","all","childNodes","nodeType","\x0D\x0A","caller","onchange","oninitialized","command","commandui","commandvalue","returnValue","oncommand","string","_fireEventFunction","event","parentNode","_IsCuteEditor","True","readOnly","_IsRichDropDown","null","value","selectedIndex","nodeName","TR","cells","display","style","nextSibling","innerHTML","\x3Cimg src=\x22","/Load.ashx?type=image\x26file=t-minus.gif\x22\x3E","onclick","CuteEditor_CollapseTreeDropDownItem(this,\x22","\x22)","onmousedown","none","/Load.ashx?type=image\x26file=t-plus.gif\x22\x3E","CuteEditor_ExpandTreeDropDownItem(this,\x22","contains","UNSELECTABLE","on","tabIndex","-1","//TODO: event not found? throw error ?","contentWindow","contentDocument","parentWindow","id","frames","frameElement","//TODO:frame contentWindow not found?","preventDefault","arguments","parent","top","opener","srcElement","target","//TODO: srcElement not found? throw error ?","fromElement","relatedTarget","toElement","keyCode","clientX","clientY","offsetX","offsetY","button","ctrlKey","altKey","shiftKey","cancelBubble","stopPropagation","CuteEditor_GetEditor(this).ExecImageCommand(this.getAttribute(\x27Command\x27),this.getAttribute(\x27CommandUI\x27),this.getAttribute(\x27CommandArgument\x27),this)","CuteEditor_GetEditor(this).PostBack(this.getAttribute(\x27Command\x27))","this.onmouseout();CuteEditor_GetEditor(this).DropMenu(this.getAttribute(\x27Group\x27),this)","ResourceDir","Theme","/Load.ashx?type=theme\x26theme=","\x26file=all.png","/Images/blank2020.gif","IMG","alt","title","Command","Group","ThemeIndex","width","20px","height","src","backgroundImage","url(",")","backgroundPosition","0 -","px","onload","className","separator","CuteEditorButton","onmouseover","CuteEditor_ButtonCommandOver(this)","onmouseout","CuteEditor_ButtonCommandOut(this)","CuteEditor_ButtonCommandDown(this)","onmouseup","CuteEditor_ButtonCommandUp(this)","oncontextmenu","ondragstart","PostBack","ondblclick","_ToolBarID","_CodeViewToolBarID","_FrameID"," CuteEditorFrame"," CuteEditorToolbar","ActiveTab","Edit","Code","View","buttonInitialized","isover","CuteEditorButtonOver","CuteEditorButtonDown","CuteEditorDown","border","solid 1px #0A246A","backgroundColor","#b6bdd2","padding","1px","solid 1px #f5f5f4","inset 1px","IsCommandDisabled","CuteEditorButtonDisabled","IsCommandActive","CuteEditorButtonActive","cmd_fromfullpage","(","href","location",",DanaInfo=",",","+","scriptProperties","GetScriptProperty","/Load.ashx?type=scripts\x26file=Opera_Implementation\x26culture=","Culture","CuteEditorImplementation","function","POST","\x26getModified=1\x26_temp=","status","responseText","GET","\x26modified=","Failed to load impl code!","block","contentEditable","body"," \x3Cbr /\x3E ","designMode","cursor","InitializeCode","CuteEditorInitialize"];var _Browser_TypeInfo=null;function Browser__InitType(){if(_Browser_TypeInfo!=null){return ;} ;var Ox4={};Ox4[OxObe39[0]]=navigator[OxObe39[1]].toLowerCase();Ox4[OxObe39[2]]=(Ox4[OxObe39[0]].indexOf(OxObe39[3])>-1);Ox4[OxObe39[4]]=(Ox4[OxObe39[0]].indexOf(OxObe39[5])>-1);Ox4[OxObe39[6]]=(!Ox4[OxObe39[2]]&&Ox4[OxObe39[0]].indexOf(OxObe39[7])>-1);Ox4[OxObe39[8]]=(!Ox4[OxObe39[2]]&&Ox4[OxObe39[0]].indexOf(OxObe39[9])>-1);_Browser_TypeInfo=Ox4;} ;Browser__InitType();function Browser_IsWinIE(){return _Browser_TypeInfo[OxObe39[8]];} ;function Browser_IsGecko(){return _Browser_TypeInfo[OxObe39[6]];} ;function Browser_IsOpera(){return _Browser_TypeInfo[OxObe39[2]];} ;function Browser_IsSafari(){return _Browser_TypeInfo[OxObe39[4]];} ;function Browser_UseIESelection(){return _Browser_TypeInfo[OxObe39[8]];} ;function Browser_IsCSS1Compat(){return window[OxObe39[11]][OxObe39[10]]==OxObe39[12];} ;function CreateXMLHttpRequest(){try{if( typeof (XMLHttpRequest)!=OxObe39[13]){return  new XMLHttpRequest();} ;if( typeof (ActiveXObject)!=OxObe39[13]){return  new ActiveXObject(OxObe39[14]);} ;} catch(x){return null;} ;} ;function LoadXMLAsync(Oxa5d,Ox288,Ox235,Oxa5e){var Oxe7=CreateXMLHttpRequest();function Oxa5f(){if(Oxe7[OxObe39[15]]!=4){return ;} ;Oxe7[OxObe39[16]]= new Function();var Ox290=Oxe7;Oxe7=null;Ox235(Ox290);} ;Oxe7[OxObe39[16]]=Oxa5f;Oxe7.open(Oxa5d,Ox288,true);Oxe7.send(Oxa5e||OxObe39[17]);} ;function Element_GetAllElements(p){var arr=[];if(Browser_IsWinIE()){for(var i=0;i<p[OxObe39[19]][OxObe39[18]];i++){arr.push(p[OxObe39[19]].item(i));} ;return arr;} ;Ox242(p);function Ox242(Ox29){var Ox217=Ox29[OxObe39[20]];var Ox11=Ox217[OxObe39[18]];for(var i=0;i<Ox11;i++){var Ox27=Ox217.item(i);if(Ox27[OxObe39[21]]!=1){continue ;} ;arr.push(Ox27);Ox242(Ox27);} ;} ;return arr;} ;var __ISDEBUG=false;function Debug_Todo(msg){if(!__ISDEBUG){return ;} ;throw ( new Error(msg+OxObe39[22]+Debug_Todo[OxObe39[23]]));} ;function Window_GetElement(Ox1a8,Ox9a,Ox240){var Ox29=Ox1a8[OxObe39[11]].getElementById(Ox9a);if(Ox29){return Ox29;} ;var Ox31=Ox1a8[OxObe39[11]].getElementsByName(Ox9a);if(Ox31[OxObe39[18]]>0){return Ox31.item(0);} ;return null;} ;function CuteEditor_AddMainMenuItems(Ox66a){} ;function CuteEditor_AddDropMenuItems(Ox66a,Ox671){} ;function CuteEditor_AddTagMenuItems(Ox66a,Ox673){} ;function CuteEditor_AddVerbMenuItems(Ox66a,Ox673){} ;function CuteEditor_OnInitialized(editor){} ;function CuteEditor_OnCommand(editor,Ox4d,Ox4e,Ox4f){} ;function CuteEditor_OnChange(editor){} ;function CuteEditor_FilterCode(editor,Ox26b){return Ox26b;} ;function CuteEditor_FilterHTML(editor,Ox283){return Ox283;} ;function CuteEditor_FireChange(editor){window.CuteEditor_OnChange(editor);CuteEditor_FireEvent(editor,OxObe39[24],null);} ;function CuteEditor_FireInitialized(editor){window.CuteEditor_OnInitialized(editor);CuteEditor_FireEvent(editor,OxObe39[25],null);} ;function CuteEditor_FireCommand(editor,Ox4d,Ox4e,Ox4f){var Ox13e=window.CuteEditor_OnCommand(editor,Ox4d,Ox4e,Ox4f);if(Ox13e==true){return true;} ;var Ox67c={};Ox67c[OxObe39[26]]=Ox4d;Ox67c[OxObe39[27]]=Ox4e;Ox67c[OxObe39[28]]=Ox4f;Ox67c[OxObe39[29]]=true;CuteEditor_FireEvent(editor,OxObe39[30],Ox67c);if(Ox67c[OxObe39[29]]==false){return true;} ;} ;function CuteEditor_FireEvent(editor,Ox67e,Ox67f){if(Ox67f==null){Ox67f={};} ;var Ox680=editor.getAttribute(Ox67e);if(Ox680){if( typeof (Ox680)==OxObe39[31]){editor[OxObe39[32]]= new Function(OxObe39[33],Ox680);} else {editor[OxObe39[32]]=Ox680;} ;editor._fireEventFunction(Ox67f);} ;} ;function CuteEditor_GetEditor(element){for(var Ox43=element;Ox43!=null;Ox43=Ox43[OxObe39[34]]){if(Ox43.getAttribute(OxObe39[35])==OxObe39[36]){return Ox43;} ;} ;return null;} ;function CuteEditor_DropDownCommand(element,Oxa61){var editor=CuteEditor_GetEditor(element);if(editor[OxObe39[37]]){return ;} ;if(element.getAttribute(OxObe39[38])==OxObe39[36]){var Ox142=element.GetValue();if(Ox142==OxObe39[39]){Ox142=OxObe39[17];} ;var Ox201=element.GetText();if(Ox201==OxObe39[39]){Ox201=OxObe39[17];} ;element.SetSelectedIndex(0);editor.ExecCommand(Oxa61,false,Ox142,Ox201);} else {if(element[OxObe39[40]]){var Ox142=element[OxObe39[40]];if(Ox142==OxObe39[39]){Ox142=OxObe39[17];} ;element[OxObe39[41]]=0;editor.ExecCommand(Oxa61,false,Ox142,Ox201);} else {element[OxObe39[41]]=0;} ;} ;editor.FocusDocument();} ;function CuteEditor_ExpandTreeDropDownItem(src,Ox740){var Oxba=null;while(src!=null){if(src[OxObe39[42]]==OxObe39[43]){Oxba=src;break ;} ;src=src[OxObe39[34]];} ;var Ox1e4=Oxba[OxObe39[44]].item(0);Oxba[OxObe39[47]][OxObe39[46]][OxObe39[45]]=OxObe39[17];Ox1e4[OxObe39[48]]=OxObe39[49]+Ox740+OxObe39[50];Oxba[OxObe39[51]]= new Function(OxObe39[52]+Ox740+OxObe39[53]);Oxba[OxObe39[54]]= new Function(OxObe39[52]+Ox740+OxObe39[53]);} ;function CuteEditor_CollapseTreeDropDownItem(src,Ox740){var Oxba=null;while(src!=null){if(src[OxObe39[42]]==OxObe39[43]){Oxba=src;break ;} ;src=src[OxObe39[34]];} ;var Ox1e4=Oxba[OxObe39[44]].item(0);Oxba[OxObe39[47]][OxObe39[46]][OxObe39[45]]=OxObe39[55];Ox1e4[OxObe39[48]]=OxObe39[49]+Ox740+OxObe39[56];Oxba[OxObe39[51]]= new Function(OxObe39[57]+Ox740+OxObe39[53]);Oxba[OxObe39[54]]= new Function(OxObe39[57]+Ox740+OxObe39[53]);} ;function Element_Contains(element,Ox183){if(!Browser_IsOpera()){if(element[OxObe39[58]]){return element.contains(Ox183);} ;} ;for(;Ox183!=null;Ox183=Ox183[OxObe39[34]]){if(element==Ox183){return true;} ;} ;return false;} ;function Element_SetUnselectable(element){element.setAttribute(OxObe39[59],OxObe39[60]);element.setAttribute(OxObe39[61],OxObe39[62]);var arr=Element_GetAllElements(element);var len=arr[OxObe39[18]];if(!len){return ;} ;for(var i=0;i<len;i++){arr[i].setAttribute(OxObe39[59],OxObe39[60]);arr[i].setAttribute(OxObe39[61],OxObe39[62]);} ;} ;function Event_GetEvent(Ox245){Ox245=Event_FindEvent(Ox245);if(Ox245==null){Debug_Todo(OxObe39[63]);} ;return Ox245;} ;function Frame_GetContentWindow(Ox349){if(Ox349[OxObe39[64]]){return Ox349[OxObe39[64]];} ;if(Ox349[OxObe39[65]]){if(Ox349[OxObe39[65]][OxObe39[66]]){return Ox349[OxObe39[65]][OxObe39[66]];} ;} ;var Ox1a8;if(Ox349[OxObe39[67]]){Ox1a8=window[OxObe39[68]][Ox349[OxObe39[67]]];if(Ox1a8){return Ox1a8;} ;} ;var len=window[OxObe39[68]][OxObe39[18]];for(var i=0;i<len;i++){Ox1a8=window[OxObe39[68]][i];if(Ox1a8[OxObe39[69]]==Ox349){return Ox1a8;} ;if(Ox1a8[OxObe39[11]]==Ox349[OxObe39[65]]){return Ox1a8;} ;} ;Debug_Todo(OxObe39[70]);} ;function Array_IndexOf(arr,Ox247){for(var i=0;i<arr[OxObe39[18]];i++){if(arr[i]==Ox247){return i;} ;} ;return -1;} ;function Array_Contains(arr,Ox247){return Array_IndexOf(arr,Ox247)!=-1;} ;function Event_FindEvent(Ox245){if(Ox245&&Ox245[OxObe39[71]]){return Ox245;} ;if(Browser_IsGecko()){return Event_FindEvent_FindEventFromCallers();} else {if(window[OxObe39[33]]){return window[OxObe39[33]];} ;return Event_FindEvent_FindEventFromWindows();} ;return null;} ;function Event_FindEvent_FindEventFromCallers(){var Ox18f=Event_GetEvent[OxObe39[23]];for(var i=0;i<100;i++){if(!Ox18f){break ;} ;var Ox245=Ox18f[OxObe39[72]][0];if(Ox245&&Ox245[OxObe39[71]]){return Ox245;} ;Ox18f=Ox18f[OxObe39[23]];} ;} ;function Event_FindEvent_FindEventFromWindows(){var arr=[];return Ox24e(window);function Ox24e(Ox1a8){if(Ox1a8==null){return null;} ;if(Ox1a8[OxObe39[33]]){return Ox1a8[OxObe39[33]];} ;if(Array_Contains(arr,Ox1a8)){return null;} ;arr.push(Ox1a8);var Ox24f=[];if(Ox1a8[OxObe39[73]]!=Ox1a8){Ox24f.push(Ox1a8.parent);} ;if(Ox1a8[OxObe39[74]]!=Ox1a8[OxObe39[73]]){Ox24f.push(Ox1a8.top);} ;if(Ox1a8[OxObe39[75]]){Ox24f.push(Ox1a8.opener);} ;for(var i=0;i<Ox1a8[OxObe39[68]][OxObe39[18]];i++){Ox24f.push(Ox1a8[OxObe39[68]][i]);} ;for(var i=0;i<Ox24f[OxObe39[18]];i++){try{var Ox245=Ox24e(Ox24f[i]);if(Ox245){return Ox245;} ;} catch(x){} ;} ;return null;} ;} ;function Event_GetSrcElement(Ox245){Ox245=Event_GetEvent(Ox245);if(Ox245[OxObe39[76]]){return Ox245[OxObe39[76]];} ;if(Ox245[OxObe39[77]]){return Ox245[OxObe39[77]];} ;Debug_Todo(OxObe39[78]);return null;} ;function Event_GetFromElement(Ox245){Ox245=Event_GetEvent(Ox245);if(Ox245[OxObe39[79]]){return Ox245[OxObe39[79]];} ;if(Ox245[OxObe39[80]]){return Ox245[OxObe39[80]];} ;return null;} ;function Event_GetToElement(Ox245){Ox245=Event_GetEvent(Ox245);if(Ox245[OxObe39[81]]){return Ox245[OxObe39[81]];} ;if(Ox245[OxObe39[80]]){return Ox245[OxObe39[80]];} ;return null;} ;function Event_GetKeyCode(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[82]];} ;function Event_GetClientX(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[83]];} ;function Event_GetClientY(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[84]];} ;function Event_GetOffsetX(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[85]];} ;function Event_GetOffsetY(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[86]];} ;function Event_IsLeftButton(Ox245){Ox245=Event_GetEvent(Ox245);if(Browser_IsWinIE()){return Ox245[OxObe39[87]]==1;} ;if(Browser_IsGecko()){return Ox245[OxObe39[87]]==0;} ;return Ox245[OxObe39[87]]==0;} ;function Event_IsCtrlKey(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[88]];} ;function Event_IsAltKey(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[89]];} ;function Event_IsShiftKey(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxObe39[90]];} ;function Event_PreventDefault(Ox245){Ox245=Event_GetEvent(Ox245);Ox245[OxObe39[29]]=false;if(Ox245[OxObe39[71]]){Ox245.preventDefault();} ;} ;function Event_CancelBubble(Ox245){Ox245=Event_GetEvent(Ox245);Ox245[OxObe39[91]]=true;if(Ox245[OxObe39[92]]){Ox245.stopPropagation();} ;return false;} ;function Event_CancelEvent(Ox245){Ox245=Event_GetEvent(Ox245);Event_PreventDefault(Ox245);return Event_CancelBubble(Ox245);} ;function CuteEditor_BasicInitialize(editor){var Ox158=Browser_IsOpera();var Ox709= new Function(OxObe39[93]);var Oxa65= new Function(OxObe39[94]);var Oxa66= new Function(OxObe39[95]);var Oxa67=editor.GetScriptProperty(OxObe39[96]);var Oxa68=editor.GetScriptProperty(OxObe39[97]);var Oxa69=Oxa67+OxObe39[98]+Oxa68+OxObe39[99];var Oxa6a=Oxa67+OxObe39[100];var images=editor.getElementsByTagName(OxObe39[101]);var len=images[OxObe39[18]];for(var i=0;i<len;i++){var img=images[i];if(img.getAttribute(OxObe39[102])&&!img.getAttribute(OxObe39[103])){img.setAttribute(OxObe39[103],img.getAttribute(OxObe39[102]));} ;var Ox135=img.getAttribute(OxObe39[104]);var Ox671=img.getAttribute(OxObe39[105]);var Oxa6b=img.getAttribute(OxObe39[106]);if(parseInt(Oxa6b)>=0){img[OxObe39[46]][OxObe39[107]]=OxObe39[108];img[OxObe39[46]][OxObe39[109]]=OxObe39[108];img[OxObe39[110]]=Oxa6a;img[OxObe39[46]][OxObe39[111]]=OxObe39[112]+Oxa69+OxObe39[113];img[OxObe39[46]][OxObe39[114]]=OxObe39[115]+(Oxa6b*20)+OxObe39[116];img[OxObe39[46]][OxObe39[45]]=OxObe39[17];} ;if(!Ox135&&!Ox671){if(Ox158){img[OxObe39[117]]=CuteEditor_OperaHandleImageLoaded;} ;continue ;} ;if(img[OxObe39[118]]!=OxObe39[119]){img[OxObe39[118]]=OxObe39[120];img[OxObe39[121]]= new Function(OxObe39[122]);img[OxObe39[123]]= new Function(OxObe39[124]);img[OxObe39[54]]= new Function(OxObe39[125]);img[OxObe39[126]]= new Function(OxObe39[127]);} ;if(!img[OxObe39[128]]){img[OxObe39[128]]=Event_CancelEvent;} ;if(!img[OxObe39[129]]){img[OxObe39[129]]=Event_CancelEvent;} ;if(Ox135){var Ox18f=img.getAttribute(OxObe39[130])==OxObe39[36]?Oxa65:Ox709;if(img[OxObe39[51]]==null){img[OxObe39[51]]=Ox18f;} ;if(img[OxObe39[131]]==null){img[OxObe39[131]]=Ox18f;} ;} else {if(Ox671){if(img[OxObe39[51]]==null){img[OxObe39[51]]=Oxa66;} ;} ;} ;} ;var Ox776=Window_GetElement(window,editor.GetScriptProperty(OxObe39[132]),true);var Ox777=Window_GetElement(window,editor.GetScriptProperty(OxObe39[133]),true);var Ox772=Window_GetElement(window,editor.GetScriptProperty(OxObe39[134]),true);Ox772[OxObe39[118]]+=OxObe39[135];Ox776[OxObe39[118]]+=OxObe39[136];Ox777[OxObe39[118]]+=OxObe39[136];Element_SetUnselectable(Ox776);Element_SetUnselectable(Ox777);var Ox7ff=editor.GetScriptProperty(OxObe39[137]);switch(Ox7ff){case OxObe39[138]:Ox776[OxObe39[46]][OxObe39[45]]=OxObe39[17];break ;;case OxObe39[139]:Ox777[OxObe39[46]][OxObe39[45]]=OxObe39[17];break ;;case OxObe39[140]:break ;;} ;} ;function CuteEditor_OperaHandleImageLoaded(){var img=this;if(img[OxObe39[46]][OxObe39[45]]){img[OxObe39[46]][OxObe39[45]]=OxObe39[55];setTimeout(function Oxa6d(){img[OxObe39[46]][OxObe39[45]]=OxObe39[17];} ,1);} ;} ;function CuteEditor_ButtonOver(element){if(!element[OxObe39[141]]){element[OxObe39[128]]=Event_CancelEvent;element[OxObe39[123]]=CuteEditor_ButtonOut;element[OxObe39[54]]=CuteEditor_ButtonDown;element[OxObe39[126]]=CuteEditor_ButtonUp;Element_SetUnselectable(element);element[OxObe39[141]]=true;} ;element[OxObe39[142]]=true;element[OxObe39[118]]=OxObe39[143];} ;function CuteEditor_ButtonOut(){var element=this;element[OxObe39[118]]=OxObe39[120];element[OxObe39[142]]=false;} ;function CuteEditor_ButtonDown(){if(!Event_IsLeftButton()){return ;} ;var element=this;element[OxObe39[118]]=OxObe39[144];} ;function CuteEditor_ButtonUp(){if(!Event_IsLeftButton()){return ;} ;var element=this;if(element[OxObe39[142]]){element[OxObe39[118]]=OxObe39[143];} else {element[OxObe39[118]]=OxObe39[145];} ;} ;function CuteEditor_ColorPicker_ButtonOver(element){if(!element[OxObe39[141]]){element[OxObe39[128]]=Event_CancelEvent;element[OxObe39[123]]=CuteEditor_ColorPicker_ButtonOut;element[OxObe39[54]]=CuteEditor_ColorPicker_ButtonDown;Element_SetUnselectable(element);element[OxObe39[141]]=true;} ;element[OxObe39[142]]=true;element[OxObe39[46]][OxObe39[146]]=OxObe39[147];element[OxObe39[46]][OxObe39[148]]=OxObe39[149];element[OxObe39[46]][OxObe39[150]]=OxObe39[151];} ;function CuteEditor_ColorPicker_ButtonOut(){var element=this;element[OxObe39[142]]=false;element[OxObe39[46]][OxObe39[146]]=OxObe39[152];element[OxObe39[46]][OxObe39[148]]=OxObe39[17];element[OxObe39[46]][OxObe39[150]]=OxObe39[151];} ;function CuteEditor_ColorPicker_ButtonDown(){var element=this;element[OxObe39[46]][OxObe39[146]]=OxObe39[153];element[OxObe39[46]][OxObe39[148]]=OxObe39[17];element[OxObe39[46]][OxObe39[150]]=OxObe39[151];} ;function CuteEditor_ButtonCommandOver(element){element[OxObe39[142]]=true;if(element[OxObe39[154]]){element[OxObe39[118]]=OxObe39[155];} else {element[OxObe39[118]]=OxObe39[143];} ;} ;function CuteEditor_ButtonCommandOut(element){element[OxObe39[142]]=false;if(element[OxObe39[156]]){element[OxObe39[118]]=OxObe39[157];} else {if(element[OxObe39[154]]){element[OxObe39[118]]=OxObe39[155];} else {if(element[OxObe39[67]]!=OxObe39[158]){element[OxObe39[118]]=OxObe39[120];} ;} ;} ;} ;function CuteEditor_ButtonCommandDown(element){if(!Event_IsLeftButton()){return ;} ;element[OxObe39[118]]=OxObe39[144];} ;function CuteEditor_ButtonCommandUp(element){if(!Event_IsLeftButton()){return ;} ;if(element[OxObe39[154]]){element[OxObe39[118]]=OxObe39[155];return ;} ;if(element[OxObe39[142]]){element[OxObe39[118]]=OxObe39[143];} else {if(element[OxObe39[156]]){element[OxObe39[118]]=OxObe39[157];} else {element[OxObe39[118]]=OxObe39[120];} ;} ;} ;var CuteEditorGlobalFunctions=[CuteEditor_GetEditor,CuteEditor_ButtonOver,CuteEditor_ButtonOut,CuteEditor_ButtonDown,CuteEditor_ButtonUp,CuteEditor_ColorPicker_ButtonOver,CuteEditor_ColorPicker_ButtonOut,CuteEditor_ColorPicker_ButtonDown,CuteEditor_ButtonCommandOver,CuteEditor_ButtonCommandOut,CuteEditor_ButtonCommandDown,CuteEditor_ButtonCommandUp,CuteEditor_DropDownCommand,CuteEditor_ExpandTreeDropDownItem,CuteEditor_CollapseTreeDropDownItem,CuteEditor_OnInitialized,CuteEditor_OnCommand,CuteEditor_OnChange,CuteEditor_AddVerbMenuItems,CuteEditor_AddTagMenuItems,CuteEditor_AddMainMenuItems,CuteEditor_AddDropMenuItems,CuteEditor_FilterCode,CuteEditor_FilterHTML];function SetupCuteEditorGlobalFunctions(){for(var i=0;i<CuteEditorGlobalFunctions[OxObe39[18]];i++){var Ox18f=CuteEditorGlobalFunctions[i];var name=Ox18f+OxObe39[17];name=name.substr(8,name.indexOf(OxObe39[159])-8).replace(/\s/g,OxObe39[17]);if(!window[name]){window[name]=Ox18f;} ;} ;} ;SetupCuteEditorGlobalFunctions();var __danainfo=null;var danaurl=window[OxObe39[161]][OxObe39[160]];var danapos=danaurl.indexOf(OxObe39[162]);if(danapos!=-1){var pluspos1=danaurl.indexOf(OxObe39[163],danapos+10);var pluspos2=danaurl.indexOf(OxObe39[164],danapos+10);if(pluspos1!=-1&&pluspos1<pluspos2){pluspos2=pluspos1;} ;__danainfo=danaurl.substring(danapos,pluspos2)+OxObe39[164];} ;function CuteEditor_GetScriptProperty(name){var Ox142=this[OxObe39[165]][name];if(Ox142&&__danainfo){if(name==OxObe39[96]){return Ox142+__danainfo;} ;var Ox382=this[OxObe39[165]][OxObe39[96]];if(Ox142.substr(0,Ox382.length)==Ox382){return Ox382+__danainfo+Ox142.substring(Ox382.length);} ;} ;return Ox142;} ;function CuteEditor_SetScriptProperty(name,Ox142){if(Ox142==null){this[OxObe39[165]][name]=null;} else {this[OxObe39[165]][name]=String(Ox142);} ;} ;function CuteEditorInitialize(Oxa78,Oxa79){var editor=Window_GetElement(window,Oxa78,true);editor[OxObe39[165]]=Oxa79;editor[OxObe39[166]]=CuteEditor_GetScriptProperty;var Ox772=Window_GetElement(window,editor.GetScriptProperty(OxObe39[134]),true);var editwin=Frame_GetContentWindow(Ox772);var editdoc=editwin[OxObe39[11]];var Oxa7a=false;var Oxa7b;var Oxa7c=false;var Oxa7d=editor.GetScriptProperty(OxObe39[96])+OxObe39[167]+editor.GetScriptProperty(OxObe39[168]);function Oxa7e(){if( typeof (window[OxObe39[169]])==OxObe39[170]){return ;} ;LoadXMLAsync(OxObe39[171],Oxa7d+OxObe39[172]+ new Date().getTime(),Oxa7f);} ;function Oxa7f(Ox290){var Ox889= new Date().getTime();if(Ox290[OxObe39[173]]!=200){} else {Ox889=Ox290[OxObe39[174]];} ;LoadXMLAsync(OxObe39[175],Oxa7d+OxObe39[176]+Ox889,Oxa80);} ;function Oxa80(Ox290){if(Ox290[OxObe39[173]]!=200){alert(OxObe39[177]);return ;} ;CuteEditorInstallScriptCode(Ox290.responseText,OxObe39[169]);if(Oxa7a){Oxa81();} ;} ;function Oxa81(){if(Oxa7c){return ;} ;Oxa7c=true;Ox772[OxObe39[46]][OxObe39[45]]=OxObe39[178];if(Browser_IsOpera()){editdoc[OxObe39[180]][OxObe39[179]]=true;} else {if(Browser_IsGecko()){editdoc[OxObe39[180]][OxObe39[48]]=OxObe39[181];} ;editdoc[OxObe39[182]]=OxObe39[60];} ;window.CuteEditorImplementation(editor);try{editor[OxObe39[46]][OxObe39[183]]=OxObe39[17];} catch(x){} ;try{editdoc[OxObe39[180]][OxObe39[46]][OxObe39[183]]=OxObe39[17];} catch(x){} ;var Oxa82=editor.GetScriptProperty(OxObe39[184]);if(Oxa82){editor.Eval(Oxa82);} ;} ;function Oxa83(){if(!Element_Contains(window[OxObe39[11]].body,editor)){return ;} ;try{Ox772=Window_GetElement(window,editor.GetScriptProperty(OxObe39[134]),true);editwin=Frame_GetContentWindow(Ox772);editdoc=editwin[OxObe39[11]];var y=editdoc[OxObe39[180]];} catch(x){setTimeout(Oxa83,100);return ;} ;if(!editdoc[OxObe39[180]]){setTimeout(Oxa83,100);return ;} ;if(!Oxa7a){Oxa7a=true;setTimeout(Oxa83,50);return ;} ;if( typeof (window[OxObe39[169]])==OxObe39[170]){Oxa81();} else {} ;} ;CuteEditor_BasicInitialize(editor);Oxa7e();Oxa83();} ;function CuteEditorInstallScriptCode(Ox9c3,Ox9c4){eval(Ox9c3);window[Ox9c4]=eval(Ox9c4);} ;window[OxObe39[185]]=CuteEditorInitialize;