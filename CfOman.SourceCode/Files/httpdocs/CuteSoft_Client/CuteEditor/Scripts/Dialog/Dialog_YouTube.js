var OxOa1f2=["idSource","TargetUrl","value","","$4","$5","\x26","wmode=\x22transparent\x22","allowfullscreen=\x22true\x22","\x3Cembed src=\x22","\x22 width=\x22","\x22 height=\x22","\x22 "," "," type=\x22application/x-shockwave-flash\x22 pluginspage=\x22http://www.macromedia.com/go/getflashplayer\x22 \x3E\x3C/embed\x3E\x0A","\x3Cobject xcodebase=","\x22http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab\x22"," height=\x22","\x22 classid=","\x22clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\x22 \x3E"," \x3Cparam name=\x22Movie\x22 value=\x22","\x22 /\x3E","\x3Cparam name=\x22wmode\x22 value=\x22transparent\x22/\x3E","\x3Cparam name=\x22allowFullScreen\x22 value=\x22true\x22/\x3E","\x3C/object\x3E"];var idSource=Window_GetElement(window,OxOa1f2[0],true);var TargetUrl=Window_GetElement(window,OxOa1f2[1],true);var editor=Window_GetDialogArguments(window);var oldWidth,OldHeight;function do_preview(){var Ox120=GetEmbed();if(Ox120){if(idSource[OxOa1f2[2]]!=Ox120&&idSource[OxOa1f2[2]]!=null){idSource[OxOa1f2[2]]=Ox120;} ;} ;} ;function do_insert(){var Ox120=GetEmbed();if(Ox120){editor.PasteHTML(Ox120);} ;Window_CloseDialog(window);} ;function do_Close(){Window_CloseDialog(window);} ;function GetEmbed(){if(idSource[OxOa1f2[2]]==OxOa1f2[3]||idSource[OxOa1f2[2]]==null){return ;} ;var Ox64c=OxOa1f2[3];Ox64c=idSource[OxOa1f2[2]];var Ox64d=/(<iframe[^\>]*?)(\ssrc=\s*)\s*("|')(.+?)\3([^>]*)(.*<\/iframe>)/gi;var Ox64e=/(<object[^\>]*>[\s|\S]*?)(<embed[^\>]*?)(\ssrc=\s*)\s*("|')(.+?)\4([^>]*)(.*<\/embed>)[\s|\S]*?<\/object>/gi;if(Ox64c.match(Ox64d)){Ox64c=Ox64c.replace(Ox64d,OxOa1f2[4]);TargetUrl[OxOa1f2[2]]=Ox64c;return idSource[OxOa1f2[2]];} else {if(Ox64c.match(Ox64e)){oldWidth=Ox64c.replace(/(<object[^\>]*>[\s|\S]*?)(<embed[^\>]*?)(\swidth=\s*)\s*("|')(.+?)\4([^>]*)(.*<\/embed>)[\s|\S]*?<\/object>/gi,OxOa1f2[5]);oldHeight=Ox64c.replace(/(<object[^\>]*>[\s|\S]*?)(<embed[^\>]*?)(\sheight=\s*)\s*("|')(.+?)\4([^>]*)(.*<\/embed>)[\s|\S]*?<\/object>/gi,OxOa1f2[5]);Ox64c=Ox64c.replace(Ox64e,OxOa1f2[5]);if(Ox64c.indexOf(OxOa1f2[6])!=-1){TargetUrl[OxOa1f2[2]]=Ox64c.substring(0,Ox64c.indexOf(OxOa1f2[6]));} ;var Ox64f=OxOa1f2[3];var Oxe1=425;var Ox2d=344;var Ox3e4,Ox3e5;oldWidth=parseInt(oldWidth);if(oldWidth){Oxe1=oldWidth;} ;oldHeight=parseInt(oldHeight);if(oldHeight){Ox2d=oldHeight;} ;Ox3e4=true;if(Ox64c==OxOa1f2[3]){return ;} ;var Ox3e8,Ox3ea;Ox3ea=OxOa1f2[3];Ox3e8=true?OxOa1f2[7]:OxOa1f2[3];Ox3ea=true?OxOa1f2[8]:OxOa1f2[3];var Ox3f0=OxOa1f2[9]+Ox64c+OxOa1f2[10]+Oxe1+OxOa1f2[11]+Ox2d+OxOa1f2[12]+Ox3ea+OxOa1f2[13]+Ox3e8+OxOa1f2[14];var Ox3f1=OxOa1f2[15]+OxOa1f2[16]+OxOa1f2[17]+Ox2d+OxOa1f2[10]+Oxe1+OxOa1f2[18]+OxOa1f2[19]+OxOa1f2[20]+Ox64c+OxOa1f2[21];if(true){Ox3f1=Ox3f1+OxOa1f2[22];} ;if(true){Ox3f1=Ox3f1+OxOa1f2[23];} ;Ox3f1=Ox3f1+Ox3f0+OxOa1f2[24];return Ox3f1;} ;} ;} ;