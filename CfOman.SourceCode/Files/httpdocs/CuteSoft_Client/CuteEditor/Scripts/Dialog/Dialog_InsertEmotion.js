var OxOf604=[""," ","=\x22","\x22","src","^[a-z]*:[/][/][^/]*","Edit","\x3CIMG border=\x220\x22 align=\x22absmiddle\x22 src=\x22","\x22 src_cetemp=\x22","\x22\x3E","ImageTable","IMG","length","className","dialogButton","onmouseover","CuteEditor_ColorPicker_ButtonOver(this)","onclick","insert(this)"];var editor=Window_GetDialogArguments(window);function attr(name,Ox4f){if(!Ox4f||Ox4f==OxOf604[0]){return OxOf604[0];} ;return OxOf604[1]+name+OxOf604[2]+Ox4f+OxOf604[3];} ;function insert(img){if(img){var src=img[OxOf604[4]];src=src.replace( new RegExp(OxOf604[5],OxOf604[0]),OxOf604[0]);var Ox2d=OxOf604[0];if(editor.GetActiveTab()==OxOf604[6]){Ox2d=OxOf604[7]+src+OxOf604[8]+src+OxOf604[9];} else {Ox2d=OxOf604[7]+src+OxOf604[9];} ;editor.PasteHTML(Ox2d);Window_CloseDialog(window);} ;} ;function do_Close(){Window_CloseDialog(window);} ;var ImageTable=Window_GetElement(window,OxOf604[10],true);var images=ImageTable.getElementsByTagName(OxOf604[11]);var len=images[OxOf604[12]];for(var i=0;i<len;i++){var img=images[i];img[OxOf604[13]]=OxOf604[14];img[OxOf604[15]]= new Function(OxOf604[16]);img[OxOf604[17]]= new Function(OxOf604[18]);} ;