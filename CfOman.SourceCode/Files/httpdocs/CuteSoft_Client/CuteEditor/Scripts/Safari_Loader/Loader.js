var OxOda3a=["ua","userAgent","isOpera","opera","isSafari","safari","isGecko","gecko","isWinIE","msie","compatMode","document","CSS1Compat","undefined","Microsoft.XMLHTTP","readyState","onreadystatechange","","length","all","childNodes","nodeType","\x0D\x0A","caller","onchange","oninitialized","command","commandui","commandvalue","returnValue","oncommand","string","_fireEventFunction","event","parentNode","_IsCuteEditor","True","readOnly","_IsRichDropDown","null","value","selectedIndex","nodeName","TR","cells","display","style","nextSibling","innerHTML","\x3Cimg src=\x22","/Load.ashx?type=image\x26file=t-minus.gif\x22\x3E","onclick","CuteEditor_CollapseTreeDropDownItem(this,\x22","\x22)","onmousedown","none","/Load.ashx?type=image\x26file=t-plus.gif\x22\x3E","CuteEditor_ExpandTreeDropDownItem(this,\x22","contains","UNSELECTABLE","on","tabIndex","-1","//TODO: event not found? throw error ?","contentWindow","contentDocument","parentWindow","id","frames","frameElement","//TODO:frame contentWindow not found?","preventDefault","arguments","parent","top","opener","srcElement","target","//TODO: srcElement not found? throw error ?","fromElement","relatedTarget","toElement","keyCode","clientX","clientY","offsetX","offsetY","button","ctrlKey","altKey","shiftKey","cancelBubble","stopPropagation","CuteEditor_GetEditor(this).ExecImageCommand(this.getAttribute(\x27Command\x27),this.getAttribute(\x27CommandUI\x27),this.getAttribute(\x27CommandArgument\x27),this)","CuteEditor_GetEditor(this).PostBack(this.getAttribute(\x27Command\x27))","this.onmouseout();CuteEditor_GetEditor(this).DropMenu(this.getAttribute(\x27Group\x27),this)","ResourceDir","Theme","/Load.ashx?type=theme\x26theme=","\x26file=all.png","/Images/blank2020.gif","IMG","alt","title","Command","Group","ThemeIndex","width","20px","height","src","backgroundImage","url(",")","backgroundPosition","0 -","px","onload","className","separator","CuteEditorButton","onmouseover","CuteEditor_ButtonCommandOver(this)","onmouseout","CuteEditor_ButtonCommandOut(this)","CuteEditor_ButtonCommandDown(this)","onmouseup","CuteEditor_ButtonCommandUp(this)","oncontextmenu","ondragstart","PostBack","ondblclick","_ToolBarID","_CodeViewToolBarID","_FrameID"," CuteEditorFrame"," CuteEditorToolbar","ActiveTab","Edit","Code","View","buttonInitialized","isover","CuteEditorButtonOver","CuteEditorButtonDown","CuteEditorDown","border","solid 1px #0A246A","backgroundColor","#b6bdd2","padding","1px","solid 1px #f5f5f4","inset 1px","IsCommandDisabled","CuteEditorButtonDisabled","IsCommandActive","CuteEditorButtonActive","cmd_fromfullpage","(","href","location",",DanaInfo=",",","+","scriptProperties","GetScriptProperty","/Load.ashx?type=scripts\x26file=Safar_Implementation\x26culture=","Culture","CuteEditorImplementation","function","POST","\x26getModified=1\x26_temp=","status","responseText","GET","\x26modified=","Failed to load impl code!","cursor","body","InitializeCode","block","contentEditable"," \x3Cbr /\x3E ","designMode","no-drop","CuteEditorInitialize"];var _Browser_TypeInfo=null;function Browser__InitType(){if(_Browser_TypeInfo!=null){return ;} ;var Ox4={};Ox4[OxOda3a[0]]=navigator[OxOda3a[1]].toLowerCase();Ox4[OxOda3a[2]]=(Ox4[OxOda3a[0]].indexOf(OxOda3a[3])>-1);Ox4[OxOda3a[4]]=(Ox4[OxOda3a[0]].indexOf(OxOda3a[5])>-1);Ox4[OxOda3a[6]]=(!Ox4[OxOda3a[2]]&&Ox4[OxOda3a[0]].indexOf(OxOda3a[7])>-1);Ox4[OxOda3a[8]]=(!Ox4[OxOda3a[2]]&&Ox4[OxOda3a[0]].indexOf(OxOda3a[9])>-1);_Browser_TypeInfo=Ox4;} ;Browser__InitType();function Browser_IsWinIE(){return _Browser_TypeInfo[OxOda3a[8]];} ;function Browser_IsGecko(){return _Browser_TypeInfo[OxOda3a[6]];} ;function Browser_IsOpera(){return _Browser_TypeInfo[OxOda3a[2]];} ;function Browser_IsSafari(){return _Browser_TypeInfo[OxOda3a[4]];} ;function Browser_UseIESelection(){return _Browser_TypeInfo[OxOda3a[8]];} ;function Browser_IsCSS1Compat(){return window[OxOda3a[11]][OxOda3a[10]]==OxOda3a[12];} ;function CreateXMLHttpRequest(){try{if( typeof (XMLHttpRequest)!=OxOda3a[13]){return  new XMLHttpRequest();} ;if( typeof (ActiveXObject)!=OxOda3a[13]){return  new ActiveXObject(OxOda3a[14]);} ;} catch(x){return null;} ;} ;function LoadXMLAsync(Oxa5d,Ox288,Ox235,Oxa5e){var Oxe7=CreateXMLHttpRequest();function Oxa5f(){if(Oxe7[OxOda3a[15]]!=4){return ;} ;Oxe7[OxOda3a[16]]= new Function();var Ox290=Oxe7;Oxe7=null;Ox235(Ox290);} ;Oxe7[OxOda3a[16]]=Oxa5f;Oxe7.open(Oxa5d,Ox288,true);Oxe7.send(Oxa5e||OxOda3a[17]);} ;function Element_GetAllElements(p){var arr=[];if(Browser_IsWinIE()){for(var i=0;i<p[OxOda3a[19]][OxOda3a[18]];i++){arr.push(p[OxOda3a[19]].item(i));} ;return arr;} ;Ox242(p);function Ox242(Ox29){var Ox217=Ox29[OxOda3a[20]];var Ox11=Ox217[OxOda3a[18]];for(var i=0;i<Ox11;i++){var Ox27=Ox217.item(i);if(Ox27[OxOda3a[21]]!=1){continue ;} ;arr.push(Ox27);Ox242(Ox27);} ;} ;return arr;} ;var __ISDEBUG=false;function Debug_Todo(msg){if(!__ISDEBUG){return ;} ;throw ( new Error(msg+OxOda3a[22]+Debug_Todo[OxOda3a[23]]));} ;function Window_GetElement(Ox1a8,Ox9a,Ox240){var Ox29=Ox1a8[OxOda3a[11]].getElementById(Ox9a);if(Ox29){return Ox29;} ;var Ox31=Ox1a8[OxOda3a[11]].getElementsByName(Ox9a);if(Ox31[OxOda3a[18]]>0){return Ox31.item(0);} ;return null;} ;function CuteEditor_AddMainMenuItems(Ox66a){} ;function CuteEditor_AddDropMenuItems(Ox66a,Ox671){} ;function CuteEditor_AddTagMenuItems(Ox66a,Ox673){} ;function CuteEditor_AddVerbMenuItems(Ox66a,Ox673){} ;function CuteEditor_OnInitialized(editor){} ;function CuteEditor_OnCommand(editor,Ox4d,Ox4e,Ox4f){} ;function CuteEditor_OnChange(editor){} ;function CuteEditor_FilterCode(editor,Ox26b){return Ox26b;} ;function CuteEditor_FilterHTML(editor,Ox283){return Ox283;} ;function CuteEditor_FireChange(editor){window.CuteEditor_OnChange(editor);CuteEditor_FireEvent(editor,OxOda3a[24],null);} ;function CuteEditor_FireInitialized(editor){window.CuteEditor_OnInitialized(editor);CuteEditor_FireEvent(editor,OxOda3a[25],null);} ;function CuteEditor_FireCommand(editor,Ox4d,Ox4e,Ox4f){var Ox13e=window.CuteEditor_OnCommand(editor,Ox4d,Ox4e,Ox4f);if(Ox13e==true){return true;} ;var Ox67c={};Ox67c[OxOda3a[26]]=Ox4d;Ox67c[OxOda3a[27]]=Ox4e;Ox67c[OxOda3a[28]]=Ox4f;Ox67c[OxOda3a[29]]=true;CuteEditor_FireEvent(editor,OxOda3a[30],Ox67c);if(Ox67c[OxOda3a[29]]==false){return true;} ;} ;function CuteEditor_FireEvent(editor,Ox67e,Ox67f){if(Ox67f==null){Ox67f={};} ;var Ox680=editor.getAttribute(Ox67e);if(Ox680){if( typeof (Ox680)==OxOda3a[31]){editor[OxOda3a[32]]= new Function(OxOda3a[33],Ox680);} else {editor[OxOda3a[32]]=Ox680;} ;editor._fireEventFunction(Ox67f);} ;} ;function CuteEditor_GetEditor(element){for(var Ox43=element;Ox43!=null;Ox43=Ox43[OxOda3a[34]]){if(Ox43.getAttribute(OxOda3a[35])==OxOda3a[36]){return Ox43;} ;} ;return null;} ;function CuteEditor_DropDownCommand(element,Oxa61){var editor=CuteEditor_GetEditor(element);if(editor[OxOda3a[37]]){return ;} ;if(element.getAttribute(OxOda3a[38])==OxOda3a[36]){var Ox142=element.GetValue();if(Ox142==OxOda3a[39]){Ox142=OxOda3a[17];} ;var Ox201=element.GetText();if(Ox201==OxOda3a[39]){Ox201=OxOda3a[17];} ;element.SetSelectedIndex(0);editor.ExecCommand(Oxa61,false,Ox142,Ox201);} else {if(element[OxOda3a[40]]){var Ox142=element[OxOda3a[40]];if(Ox142==OxOda3a[39]){Ox142=OxOda3a[17];} ;element[OxOda3a[41]]=0;editor.ExecCommand(Oxa61,false,Ox142,Ox201);} else {element[OxOda3a[41]]=0;} ;} ;editor.FocusDocument();} ;function CuteEditor_ExpandTreeDropDownItem(src,Ox740){var Oxba=null;while(src!=null){if(src[OxOda3a[42]]==OxOda3a[43]){Oxba=src;break ;} ;src=src[OxOda3a[34]];} ;var Ox1e4=Oxba[OxOda3a[44]].item(0);Oxba[OxOda3a[47]][OxOda3a[46]][OxOda3a[45]]=OxOda3a[17];Ox1e4[OxOda3a[48]]=OxOda3a[49]+Ox740+OxOda3a[50];Oxba[OxOda3a[51]]= new Function(OxOda3a[52]+Ox740+OxOda3a[53]);Oxba[OxOda3a[54]]= new Function(OxOda3a[52]+Ox740+OxOda3a[53]);} ;function CuteEditor_CollapseTreeDropDownItem(src,Ox740){var Oxba=null;while(src!=null){if(src[OxOda3a[42]]==OxOda3a[43]){Oxba=src;break ;} ;src=src[OxOda3a[34]];} ;var Ox1e4=Oxba[OxOda3a[44]].item(0);Oxba[OxOda3a[47]][OxOda3a[46]][OxOda3a[45]]=OxOda3a[55];Ox1e4[OxOda3a[48]]=OxOda3a[49]+Ox740+OxOda3a[56];Oxba[OxOda3a[51]]= new Function(OxOda3a[57]+Ox740+OxOda3a[53]);Oxba[OxOda3a[54]]= new Function(OxOda3a[57]+Ox740+OxOda3a[53]);} ;function Element_Contains(element,Ox183){if(!Browser_IsOpera()){if(element[OxOda3a[58]]){return element.contains(Ox183);} ;} ;for(;Ox183!=null;Ox183=Ox183[OxOda3a[34]]){if(element==Ox183){return true;} ;} ;return false;} ;function Element_SetUnselectable(element){element.setAttribute(OxOda3a[59],OxOda3a[60]);element.setAttribute(OxOda3a[61],OxOda3a[62]);var arr=Element_GetAllElements(element);var len=arr[OxOda3a[18]];if(!len){return ;} ;for(var i=0;i<len;i++){arr[i].setAttribute(OxOda3a[59],OxOda3a[60]);arr[i].setAttribute(OxOda3a[61],OxOda3a[62]);} ;} ;function Event_GetEvent(Ox245){Ox245=Event_FindEvent(Ox245);if(Ox245==null){Debug_Todo(OxOda3a[63]);} ;return Ox245;} ;function Frame_GetContentWindow(Ox349){if(Ox349[OxOda3a[64]]){return Ox349[OxOda3a[64]];} ;if(Ox349[OxOda3a[65]]){if(Ox349[OxOda3a[65]][OxOda3a[66]]){return Ox349[OxOda3a[65]][OxOda3a[66]];} ;} ;var Ox1a8;if(Ox349[OxOda3a[67]]){Ox1a8=window[OxOda3a[68]][Ox349[OxOda3a[67]]];if(Ox1a8){return Ox1a8;} ;} ;var len=window[OxOda3a[68]][OxOda3a[18]];for(var i=0;i<len;i++){Ox1a8=window[OxOda3a[68]][i];if(Ox1a8[OxOda3a[69]]==Ox349){return Ox1a8;} ;if(Ox1a8[OxOda3a[11]]==Ox349[OxOda3a[65]]){return Ox1a8;} ;} ;Debug_Todo(OxOda3a[70]);} ;function Array_IndexOf(arr,Ox247){for(var i=0;i<arr[OxOda3a[18]];i++){if(arr[i]==Ox247){return i;} ;} ;return -1;} ;function Array_Contains(arr,Ox247){return Array_IndexOf(arr,Ox247)!=-1;} ;function Event_FindEvent(Ox245){if(Ox245&&Ox245[OxOda3a[71]]){return Ox245;} ;if(Browser_IsGecko()){return Event_FindEvent_FindEventFromCallers();} else {if(window[OxOda3a[33]]){return window[OxOda3a[33]];} ;return Event_FindEvent_FindEventFromWindows();} ;return null;} ;function Event_FindEvent_FindEventFromCallers(){var Ox18f=Event_GetEvent[OxOda3a[23]];for(var i=0;i<100;i++){if(!Ox18f){break ;} ;var Ox245=Ox18f[OxOda3a[72]][0];if(Ox245&&Ox245[OxOda3a[71]]){return Ox245;} ;Ox18f=Ox18f[OxOda3a[23]];} ;} ;function Event_FindEvent_FindEventFromWindows(){var arr=[];return Ox24e(window);function Ox24e(Ox1a8){if(Ox1a8==null){return null;} ;if(Ox1a8[OxOda3a[33]]){return Ox1a8[OxOda3a[33]];} ;if(Array_Contains(arr,Ox1a8)){return null;} ;arr.push(Ox1a8);var Ox24f=[];if(Ox1a8[OxOda3a[73]]!=Ox1a8){Ox24f.push(Ox1a8.parent);} ;if(Ox1a8[OxOda3a[74]]!=Ox1a8[OxOda3a[73]]){Ox24f.push(Ox1a8.top);} ;if(Ox1a8[OxOda3a[75]]){Ox24f.push(Ox1a8.opener);} ;for(var i=0;i<Ox1a8[OxOda3a[68]][OxOda3a[18]];i++){Ox24f.push(Ox1a8[OxOda3a[68]][i]);} ;for(var i=0;i<Ox24f[OxOda3a[18]];i++){try{var Ox245=Ox24e(Ox24f[i]);if(Ox245){return Ox245;} ;} catch(x){} ;} ;return null;} ;} ;function Event_GetSrcElement(Ox245){Ox245=Event_GetEvent(Ox245);if(Ox245[OxOda3a[76]]){return Ox245[OxOda3a[76]];} ;if(Ox245[OxOda3a[77]]){return Ox245[OxOda3a[77]];} ;Debug_Todo(OxOda3a[78]);return null;} ;function Event_GetFromElement(Ox245){Ox245=Event_GetEvent(Ox245);if(Ox245[OxOda3a[79]]){return Ox245[OxOda3a[79]];} ;if(Ox245[OxOda3a[80]]){return Ox245[OxOda3a[80]];} ;return null;} ;function Event_GetToElement(Ox245){Ox245=Event_GetEvent(Ox245);if(Ox245[OxOda3a[81]]){return Ox245[OxOda3a[81]];} ;if(Ox245[OxOda3a[80]]){return Ox245[OxOda3a[80]];} ;return null;} ;function Event_GetKeyCode(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[82]];} ;function Event_GetClientX(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[83]];} ;function Event_GetClientY(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[84]];} ;function Event_GetOffsetX(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[85]];} ;function Event_GetOffsetY(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[86]];} ;function Event_IsLeftButton(Ox245){Ox245=Event_GetEvent(Ox245);if(Browser_IsWinIE()){return Ox245[OxOda3a[87]]==1;} ;if(Browser_IsGecko()){return Ox245[OxOda3a[87]]==0;} ;return Ox245[OxOda3a[87]]==0;} ;function Event_IsCtrlKey(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[88]];} ;function Event_IsAltKey(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[89]];} ;function Event_IsShiftKey(Ox245){Ox245=Event_GetEvent(Ox245);return Ox245[OxOda3a[90]];} ;function Event_PreventDefault(Ox245){Ox245=Event_GetEvent(Ox245);Ox245[OxOda3a[29]]=false;if(Ox245[OxOda3a[71]]){Ox245.preventDefault();} ;} ;function Event_CancelBubble(Ox245){Ox245=Event_GetEvent(Ox245);Ox245[OxOda3a[91]]=true;if(Ox245[OxOda3a[92]]){Ox245.stopPropagation();} ;return false;} ;function Event_CancelEvent(Ox245){Ox245=Event_GetEvent(Ox245);Event_PreventDefault(Ox245);return Event_CancelBubble(Ox245);} ;function CuteEditor_BasicInitialize(editor){var Ox158=Browser_IsOpera();var Ox709= new Function(OxOda3a[93]);var Oxa65= new Function(OxOda3a[94]);var Oxa66= new Function(OxOda3a[95]);var Oxa67=editor.GetScriptProperty(OxOda3a[96]);var Oxa68=editor.GetScriptProperty(OxOda3a[97]);var Oxa69=Oxa67+OxOda3a[98]+Oxa68+OxOda3a[99];var Oxa6a=Oxa67+OxOda3a[100];var images=editor.getElementsByTagName(OxOda3a[101]);var len=images[OxOda3a[18]];for(var i=0;i<len;i++){var img=images[i];if(img.getAttribute(OxOda3a[102])&&!img.getAttribute(OxOda3a[103])){img.setAttribute(OxOda3a[103],img.getAttribute(OxOda3a[102]));} ;var Ox135=img.getAttribute(OxOda3a[104]);var Ox671=img.getAttribute(OxOda3a[105]);var Oxa6b=img.getAttribute(OxOda3a[106]);if(parseInt(Oxa6b)>=0){img[OxOda3a[46]][OxOda3a[107]]=OxOda3a[108];img[OxOda3a[46]][OxOda3a[109]]=OxOda3a[108];img[OxOda3a[110]]=Oxa6a;img[OxOda3a[46]][OxOda3a[111]]=OxOda3a[112]+Oxa69+OxOda3a[113];img[OxOda3a[46]][OxOda3a[114]]=OxOda3a[115]+(Oxa6b*20)+OxOda3a[116];img[OxOda3a[46]][OxOda3a[45]]=OxOda3a[17];} ;if(!Ox135&&!Ox671){if(Ox158){img[OxOda3a[117]]=CuteEditor_OperaHandleImageLoaded;} ;continue ;} ;if(img[OxOda3a[118]]!=OxOda3a[119]){img[OxOda3a[118]]=OxOda3a[120];img[OxOda3a[121]]= new Function(OxOda3a[122]);img[OxOda3a[123]]= new Function(OxOda3a[124]);img[OxOda3a[54]]= new Function(OxOda3a[125]);img[OxOda3a[126]]= new Function(OxOda3a[127]);} ;if(!img[OxOda3a[128]]){img[OxOda3a[128]]=Event_CancelEvent;} ;if(!img[OxOda3a[129]]){img[OxOda3a[129]]=Event_CancelEvent;} ;if(Ox135){var Ox18f=img.getAttribute(OxOda3a[130])==OxOda3a[36]?Oxa65:Ox709;if(img[OxOda3a[51]]==null){img[OxOda3a[51]]=Ox18f;} ;if(img[OxOda3a[131]]==null){img[OxOda3a[131]]=Ox18f;} ;} else {if(Ox671){if(img[OxOda3a[51]]==null){img[OxOda3a[51]]=Oxa66;} ;} ;} ;} ;var Ox776=Window_GetElement(window,editor.GetScriptProperty(OxOda3a[132]),true);var Ox777=Window_GetElement(window,editor.GetScriptProperty(OxOda3a[133]),true);var Ox772=Window_GetElement(window,editor.GetScriptProperty(OxOda3a[134]),true);Ox772[OxOda3a[118]]+=OxOda3a[135];Ox776[OxOda3a[118]]+=OxOda3a[136];Ox777[OxOda3a[118]]+=OxOda3a[136];Element_SetUnselectable(Ox776);Element_SetUnselectable(Ox777);var Ox7ff=editor.GetScriptProperty(OxOda3a[137]);switch(Ox7ff){case OxOda3a[138]:Ox776[OxOda3a[46]][OxOda3a[45]]=OxOda3a[17];break ;;case OxOda3a[139]:Ox777[OxOda3a[46]][OxOda3a[45]]=OxOda3a[17];break ;;case OxOda3a[140]:break ;;} ;} ;function CuteEditor_OperaHandleImageLoaded(){var img=this;if(img[OxOda3a[46]][OxOda3a[45]]){img[OxOda3a[46]][OxOda3a[45]]=OxOda3a[55];setTimeout(function Oxa6d(){img[OxOda3a[46]][OxOda3a[45]]=OxOda3a[17];} ,1);} ;} ;function CuteEditor_ButtonOver(element){if(!element[OxOda3a[141]]){element[OxOda3a[128]]=Event_CancelEvent;element[OxOda3a[123]]=CuteEditor_ButtonOut;element[OxOda3a[54]]=CuteEditor_ButtonDown;element[OxOda3a[126]]=CuteEditor_ButtonUp;Element_SetUnselectable(element);element[OxOda3a[141]]=true;} ;element[OxOda3a[142]]=true;element[OxOda3a[118]]=OxOda3a[143];} ;function CuteEditor_ButtonOut(){var element=this;element[OxOda3a[118]]=OxOda3a[120];element[OxOda3a[142]]=false;} ;function CuteEditor_ButtonDown(){if(!Event_IsLeftButton()){return ;} ;var element=this;element[OxOda3a[118]]=OxOda3a[144];} ;function CuteEditor_ButtonUp(){if(!Event_IsLeftButton()){return ;} ;var element=this;if(element[OxOda3a[142]]){element[OxOda3a[118]]=OxOda3a[143];} else {element[OxOda3a[118]]=OxOda3a[145];} ;} ;function CuteEditor_ColorPicker_ButtonOver(element){if(!element[OxOda3a[141]]){element[OxOda3a[128]]=Event_CancelEvent;element[OxOda3a[123]]=CuteEditor_ColorPicker_ButtonOut;element[OxOda3a[54]]=CuteEditor_ColorPicker_ButtonDown;Element_SetUnselectable(element);element[OxOda3a[141]]=true;} ;element[OxOda3a[142]]=true;element[OxOda3a[46]][OxOda3a[146]]=OxOda3a[147];element[OxOda3a[46]][OxOda3a[148]]=OxOda3a[149];element[OxOda3a[46]][OxOda3a[150]]=OxOda3a[151];} ;function CuteEditor_ColorPicker_ButtonOut(){var element=this;element[OxOda3a[142]]=false;element[OxOda3a[46]][OxOda3a[146]]=OxOda3a[152];element[OxOda3a[46]][OxOda3a[148]]=OxOda3a[17];element[OxOda3a[46]][OxOda3a[150]]=OxOda3a[151];} ;function CuteEditor_ColorPicker_ButtonDown(){var element=this;element[OxOda3a[46]][OxOda3a[146]]=OxOda3a[153];element[OxOda3a[46]][OxOda3a[148]]=OxOda3a[17];element[OxOda3a[46]][OxOda3a[150]]=OxOda3a[151];} ;function CuteEditor_ButtonCommandOver(element){element[OxOda3a[142]]=true;if(element[OxOda3a[154]]){element[OxOda3a[118]]=OxOda3a[155];} else {element[OxOda3a[118]]=OxOda3a[143];} ;} ;function CuteEditor_ButtonCommandOut(element){element[OxOda3a[142]]=false;if(element[OxOda3a[156]]){element[OxOda3a[118]]=OxOda3a[157];} else {if(element[OxOda3a[154]]){element[OxOda3a[118]]=OxOda3a[155];} else {if(element[OxOda3a[67]]!=OxOda3a[158]){element[OxOda3a[118]]=OxOda3a[120];} ;} ;} ;} ;function CuteEditor_ButtonCommandDown(element){if(!Event_IsLeftButton()){return ;} ;element[OxOda3a[118]]=OxOda3a[144];} ;function CuteEditor_ButtonCommandUp(element){if(!Event_IsLeftButton()){return ;} ;if(element[OxOda3a[154]]){element[OxOda3a[118]]=OxOda3a[155];return ;} ;if(element[OxOda3a[142]]){element[OxOda3a[118]]=OxOda3a[143];} else {if(element[OxOda3a[156]]){element[OxOda3a[118]]=OxOda3a[157];} else {element[OxOda3a[118]]=OxOda3a[120];} ;} ;} ;var CuteEditorGlobalFunctions=[CuteEditor_GetEditor,CuteEditor_ButtonOver,CuteEditor_ButtonOut,CuteEditor_ButtonDown,CuteEditor_ButtonUp,CuteEditor_ColorPicker_ButtonOver,CuteEditor_ColorPicker_ButtonOut,CuteEditor_ColorPicker_ButtonDown,CuteEditor_ButtonCommandOver,CuteEditor_ButtonCommandOut,CuteEditor_ButtonCommandDown,CuteEditor_ButtonCommandUp,CuteEditor_DropDownCommand,CuteEditor_ExpandTreeDropDownItem,CuteEditor_CollapseTreeDropDownItem,CuteEditor_OnInitialized,CuteEditor_OnCommand,CuteEditor_OnChange,CuteEditor_AddVerbMenuItems,CuteEditor_AddTagMenuItems,CuteEditor_AddMainMenuItems,CuteEditor_AddDropMenuItems,CuteEditor_FilterCode,CuteEditor_FilterHTML];function SetupCuteEditorGlobalFunctions(){for(var i=0;i<CuteEditorGlobalFunctions[OxOda3a[18]];i++){var Ox18f=CuteEditorGlobalFunctions[i];var name=Ox18f+OxOda3a[17];name=name.substr(8,name.indexOf(OxOda3a[159])-8).replace(/\s/g,OxOda3a[17]);if(!window[name]){window[name]=Ox18f;} ;} ;} ;SetupCuteEditorGlobalFunctions();var __danainfo=null;var danaurl=window[OxOda3a[161]][OxOda3a[160]];var danapos=danaurl.indexOf(OxOda3a[162]);if(danapos!=-1){var pluspos1=danaurl.indexOf(OxOda3a[163],danapos+10);var pluspos2=danaurl.indexOf(OxOda3a[164],danapos+10);if(pluspos1!=-1&&pluspos1<pluspos2){pluspos2=pluspos1;} ;__danainfo=danaurl.substring(danapos,pluspos2)+OxOda3a[164];} ;function CuteEditor_GetScriptProperty(name){var Ox142=this[OxOda3a[165]][name];if(Ox142&&__danainfo){if(name==OxOda3a[96]){return Ox142+__danainfo;} ;var Ox382=this[OxOda3a[165]][OxOda3a[96]];if(Ox142.substr(0,Ox382.length)==Ox382){return Ox382+__danainfo+Ox142.substring(Ox382.length);} ;} ;return Ox142;} ;function CuteEditor_SetScriptProperty(name,Ox142){if(Ox142==null){this[OxOda3a[165]][name]=null;} else {this[OxOda3a[165]][name]=String(Ox142);} ;} ;function CuteEditorInitialize(Oxa78,Oxa79){var editor=Window_GetElement(window,Oxa78,true);editor[OxOda3a[165]]=Oxa79;editor[OxOda3a[166]]=CuteEditor_GetScriptProperty;var Ox772=Window_GetElement(window,editor.GetScriptProperty(OxOda3a[134]),true);var editwin,editdoc;try{editwin=Frame_GetContentWindow(Ox772);editdoc=editwin[OxOda3a[11]];} catch(x){} ;var Oxa7a=false;var Oxa7b;var Oxa7c=false;var Oxa7d=editor.GetScriptProperty(OxOda3a[96])+OxOda3a[167]+editor.GetScriptProperty(OxOda3a[168]);function Oxa7e(){if( typeof (window[OxOda3a[169]])==OxOda3a[170]){return ;} ;LoadXMLAsync(OxOda3a[171],Oxa7d+OxOda3a[172]+ new Date().getTime(),Oxa7f);} ;function Oxa7f(Ox290){var Ox889= new Date().getTime();if(Ox290[OxOda3a[173]]!=200){} else {Ox889=Ox290[OxOda3a[174]];} ;LoadXMLAsync(OxOda3a[175],Oxa7d+OxOda3a[176]+Ox889,Oxa80);} ;function Oxa80(Ox290){if(Ox290[OxOda3a[173]]!=200){if(Ox290[OxOda3a[173]]==0){return ;} ;alert(OxOda3a[177]);return ;} ;CuteEditorInstallScriptCode(Ox290.responseText,OxOda3a[169]);if(Oxa7a){Oxa81();} ;} ;function Oxa81(){if(Oxa7c){return ;} ;Oxa7c=true;try{window.CuteEditorImplementation(editor);} catch(x){alert(x);} ;try{editor[OxOda3a[46]][OxOda3a[178]]=OxOda3a[17];} catch(x){} ;try{editdoc[OxOda3a[179]][OxOda3a[46]][OxOda3a[178]]=OxOda3a[17];} catch(x){} ;var Oxa82=editor.GetScriptProperty(OxOda3a[180]);if(Oxa82){editor.Eval(Oxa82);} ;} ;function Oxa83(){if(!Element_Contains(window[OxOda3a[11]].body,editor)){return ;} ;try{Ox772=Window_GetElement(window,editor.GetScriptProperty(OxOda3a[134]),true);editwin=Frame_GetContentWindow(Ox772);editdoc=editwin[OxOda3a[11]];var y=editdoc[OxOda3a[179]];} catch(x){if(Ox772!=null){Ox772.setAttribute(OxOda3a[110],Ox772.src);} ;setTimeout(Oxa83,100);return ;} ;if(!editdoc[OxOda3a[179]]){setTimeout(Oxa83,100);return ;} ;if(!Oxa7a){Ox772[OxOda3a[46]][OxOda3a[45]]=OxOda3a[181];if(Browser_IsOpera()){editdoc[OxOda3a[179]][OxOda3a[182]]=true;} else {if(Browser_IsGecko()){editdoc[OxOda3a[179]][OxOda3a[48]]=OxOda3a[183];} ;editdoc[OxOda3a[184]]=OxOda3a[60];} ;Oxa7a=true;setTimeout(Oxa83,50);return ;} ;if( typeof (window[OxOda3a[169]])==OxOda3a[170]){Oxa81();} else {try{editdoc[OxOda3a[179]][OxOda3a[46]][OxOda3a[178]]=OxOda3a[185];} catch(x){} ;} ;} ;var Oxa84=0;var Ox43=CuteEditor_Find_DisplayNone(editor);if(Ox43){function Oxa85(){if(Ox43[OxOda3a[46]][OxOda3a[45]]!=OxOda3a[55]){window.clearInterval(Oxa84);Oxa84=OxOda3a[17];CuteEditorInitialize(Oxa78,Oxa79);} ;} ;Oxa84=setInterval(Oxa85,1000);} else {CuteEditor_BasicInitialize(editor);Oxa7e();Oxa83();} ;function CuteEditor_Find_DisplayNone(element){var Oxa87;for(var Ox43=element;Ox43!=null;Ox43=Ox43[OxOda3a[34]]){if(Ox43[OxOda3a[46]]&&Ox43[OxOda3a[46]][OxOda3a[45]]==OxOda3a[55]){Oxa87=Ox43;break ;} ;} ;return Oxa87;} ;} ;function CuteEditorInstallScriptCode(Ox9c3,Ox9c4){eval(Ox9c3);window[Ox9c4]=eval(Ox9c4);} ;window[OxOda3a[186]]=CuteEditorInitialize;