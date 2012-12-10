(function(){
var _1=ibmCfg.portalConfig.contentHandlerURI+"?uri=menu:${id}";
var _2=false;
var _3=function(){
return i$.hasClass(document.getElementsByTagName("body")[0],"edit-mode");
};
if(typeof wptheme==="undefined"||!wptheme){
wptheme={};
}
i$.mash(wptheme,{getWindowIDFromSkin:function(_4){
while((_4=_4.parentNode)!=null){
if(i$.hasClass(_4,"component-control")){
var m=_4&&(_4.className||"").match(/id-([\S]+)/);
return m&&m[1];
}
}
return null;
},getPortletState:function(_5){
var _6=i$.byId("portletState");
if(_6){
if(!_6._cache){
_6._cache=i$.fromJson(_6.innerHTML);
_6._cache._defaults={"windowState":"normal","portletMode":"view"};
}
if(_6._cache[_5]){
return _6._cache[_5];
}else{
return _6._cache._defaults;
}
}
return {};
},isValidOp:function(_7){
if(_7.visibility===false){
return false;
}
var _8=_7.metadata||{};
switch(_7.id){
case "ibm.portal.operations.changePortletMode":
return wptheme.getPortletState(_8.wid).portletMode!=_8.portletMode;
case "ibm.portal.operations.changeWindowState":
return wptheme.getPortletState(_8.wid).windowState!=_8.windowState;
default:
}
return true;
},operation:{changeToHelpMode:function(_9){
var _a=window.location.href;
if(_9.actionUrl){
if(_9.actionUrl.indexOf("?")==0){
var _b=_a.indexOf("#");
if(_b!=-1){
var _c=_a.substring(0,_b);
var _d=_a.substring(_b);
_a=_c+(_c.indexOf("?")==-1?"?":"&")+_9.actionUrl.substring(1);
_a+=_d;
}else{
_a+=(_a.indexOf("?")==-1?"?":"&")+_9.actionUrl.substring(1);
}
}else{
_a=_9.actionUrl;
}
}
window.open(_a,"","resizable=yes,scrollbars=yes,menubar=no,toolbar=no,status=no,width=800,height=600,screenX=10,screenY=10,top=10,left=10");
}},contextMenu:{cache:{},css:{focus:"wpthemeMenuFocus",disabled:"wpthemeMenuDisabled",show:"wpthemeMenuShow",error:"wpthemeMenuError",menuTemplate:"wpthemeTemplateMenu",submenuTemplate:"wpthemeTemplateSubmenu",loadingTemplate:"wpthemeTemplateLoading"},init:function(_e,_f,_10){
_e._contextMenu=_e._contextMenu||{};
_e._contextMenu.id=_e._contextMenu.id||Math.round(Math.random()*1000000000);
_e.setAttribute("id",_e._contextMenu.id);
_e._contextMenu.menuId=_f;
_e._contextMenu.jsonQuery=_10;
var _11=_e._contextMenu;
var _12=function(){
i$.addClass(i$.byId(_11.id),wptheme.contextMenu.css.show);
var _13=i$.byId(_11.id)._firstSelectable;
if(_13){
_13.focus();
i$.byId(_11.id)._currentSelected=_13;
}
i$.bindDomEvt(i$.byId(_11.id),"onmouseleave",function(){
var _14=i$.byId(_11.id);
i$.removeClass(_14,wptheme.contextMenu.css.show);
var _15=_14._currentSelected;
if(_15){
_15.blur();
}
var _16=wptheme.contextMenu._findFocusNode(_14);
((_16)?_16:_14).focus();
});
};
wptheme.contextMenu._initialize(_e).then(_12,_12);
_e=null;
},initSubmenu:function(_17,_18,_19){
_17._contextMenu=_17._contextMenu||{};
_17._contextMenu._submenu=true;
_17._contextMenu._menuitemTemplate=_19._menuitemTemplate;
_17._contextMenu._subMenuTemplate=_19._subMenuTemplate;
_17._contextMenu._loadingTemplate=_19._loadingTemplate;
wptheme.contextMenu.init(_17,_18,_19.jsonQuery);
},_findFocusNode:function(_1a){
var _1b,i,_1c;
var _1d=function(_1e,_1f){
var l=_1e.childNodes.length;
for(i=0;i<l;i++){
if(_1b){
break;
}
_1c=_1e.childNodes[i];
if(i$.hasClass(_1c,wptheme.contextMenu.css.focus)){
_1b=_1c;
break;
}
if(_1c.childNodes){
i=_1d(_1c,i);
}
}
return _1f;
};
_1d(_1a);
return _1b;
},_findNodes:function(_20){
var _21,_22,_23,i,_24;
var _25=function(_26,_27){
for(i=_26.childNodes.length-1;i>=0;i--){
_24=_26.childNodes[i];
if(i$.hasClass(_24,wptheme.contextMenu.css.menuTemplate)){
_21=_24;
continue;
}
if(i$.hasClass(_24,wptheme.contextMenu.css.submenuTemplate)){
_22=_24;
continue;
}
if(i$.hasClass(_24,wptheme.contextMenu.css.loadingTemplate)){
_23=_24;
continue;
}
if(_24.childNodes){
i=_25(_24,i);
}
}
return _27;
};
_25(_20);
return {"menu":_21,"submenu":_22,"loading":_23};
},_invalidateCallback:function(){
wptheme.contextMenu.cache={};
},_initialize:function(_28){
var _29=_28._contextMenu;
if(wptheme.contextMenu.cache[_29.id]||_29._inProgress){
return i$.promise.resolved(null);
}
_29._inProgress=true;
i$.addListener("wptheme/contextMenu/invalidate/all",wptheme.contextMenu._invalidateCallback);
var _2a,_2b,tmp=i$.createDom("div");
if(_29._submenu){
tmp.innerHTML=_29._subMenuTemplate.replace(/\$\{submenu-id\}/g,_29.id+"_menu");
_28.appendChild(tmp.firstChild);
_2a=i$.byId(_29.id+"_menu");
_2b=i$.createDom("div");
_2b.innerHTML=_29._loadingTemplate;
}else{
var _2c=wptheme.contextMenu._findNodes(_28);
_2a=_2c.menu;
if(!_29._menuitemTemplate){
_29._menuitemTemplate=i$.trim(_2a.innerHTML);
}
if(!_29._loadingTemplate){
_2b=i$.createDom("div");
_2b.appendChild(_2c.loading);
_29._loadingTemplate=i$.trim(_2b.innerHTML);
_2b=null;
}
_2b=i$.createDom("div");
_2b.innerHTML=_29._loadingTemplate;
tmp.appendChild(_2c.submenu.cloneNode(true));
if(!_29._subMenuTemplate){
_29._subMenuTemplate=i$.trim(tmp.innerHTML);
}
}
while(_2a.firstChild){
_2a.removeChild(_2a.firstChild);
}
_2a.appendChild(_2b);
i$.addClass(_28,wptheme.contextMenu.css.show);
return wptheme.contextMenu._load(_29).then(function(_2d){
var _2e=wptheme.contextMenu._parseData(_2d).then(function(_2f){
_2f=wptheme.contextMenu._filterMenu(_2f);
if(!_2f||_2f.length==0){
var tmp=i$.createDom("div");
tmp.innerHTML=wptheme.contextMenu._fromTemplate(_29._menuitemTemplate,wptheme.contextMenu.css.error,"No items to display.");
while(_2a.firstChild){
_2a.removeChild(_2a.firstChild);
}
_2a.appendChild(tmp);
}else{
wptheme.contextMenu._buildMenu(_29,_2a,_2f);
}
wptheme.contextMenu.cache[_29.id]=true;
});
_29._inProgress=false;
return _2e;
},function(){
var tmp=i$.createDom("div");
tmp.innerHTML=wptheme.contextMenu._fromTemplate(_29._menuitemTemplate,wptheme.contextMenu.css.error,"Error happened while loading the menu.");
while(_2a.firstChild){
_2a.removeChild(_2a.firstChild);
}
_2a.appendChild(tmp);
_29._inProgress=false;
wptheme.contextMenu.cache[_29.id]=true;
});
},_load:function(_30){
var _31=_1.replace(/\$\{id\}/g,_30.menuId);
if(_30.jsonQuery){
_31+=(_31.indexOf("?")==-1?"?":"&")+i$.toQuery(_30.jsonQuery);
}
return i$.xhrGet({url:_31,headers:{"X-IBM-XHR":"true"},responseType:"json"}).then(function(_32){
return _32.data;
},function(_33){
var _34=_33.xhr.getResponseHeader("Content-Type")||"";
if((_34.indexOf("text/html")==0)||(_33.xhr.status==401)){
window.setTimeout(function(){
document.location.reload();
},0);
}
console.log("Error trying to load the context menu feed for '"+_30.menuId+"': "+_33);
return null;
});
},_parseData:function(_35){
var _36=[];
i$.each(_35,function(_37){
var _38=i$.fromPath("moduleInfo.deferred",false,_37)?i$.modules.loadDeferred():i$.promise.resolved(true);
_36.push(_38.then(function(){
var _39=wptheme.contextMenu._checkFunction(_37,_37.visibilityFn,_37,(typeof _37.visibility!="undefined")?_37.visibility:true);
var _3a=wptheme.contextMenu._checkFunction(_37,_37.enableFn,_37,(typeof _37.enabled!="undefined")?_37.enabled:true);
return i$.whenAll(_39,_3a).then(function(_3b){
_37._visible=_3b[0];
_37._enabled=_3b[1];
return _37;
});
}));
});
return i$.whenAll.apply(i$,_36);
},_filterMenu:function(_3c){
var _3d=[],_3e,_3f={"type":"Separator"};
for(var i=_3c.length-1;i>=0;i--){
_3e=_3c[i];
if(!_3e._visible){
continue;
}
if(_3e.type=="Separator"){
if(_3f.type=="Separator"){
continue;
}
}else{
if(_3e.type=="Header"){
if((_3f.type=="Separator")||(_3f.type=="Header")){
continue;
}
}
}
_3f=_3e;
_3d.unshift(_3e);
}
while(_3d.length>0&&_3d[0].type=="Separator"){
_3d=_3d.slice(1);
}
return _3d;
},_buildMenu:function(_40,_41,_42){
var _43=document.createDocumentFragment(),tmp=i$.createDom("div"),_44,_45,_46,_47;
for(var i=0,l=_42.length;i<l;i++){
_44=_42[i];
tmp.innerHTML=wptheme.contextMenu._fromTemplate(_40._menuitemTemplate,_44);
while(_45=tmp.firstChild){
if(_45.nodeType==1){
if(_44.type=="Submenu"){
_45._menuitem=_44;
_45._jsonData=_40;
i$.bindDomEvt(_45,"onmouseover",wptheme.contextMenu._applySubmenu);
}else{
if(_44._enabled){
_45.links={previous:_46,next:null,sub:null};
if(_46){
_46.links.next=_45;
}
if(!_47&&_44.type!="Header"){
_47=_45;
}
_45._menuitem=_44;
_46=_45;
i$.bindDomEvt(_45,"onclick",function(evt){
wptheme.contextMenu._stopEventPropagation(evt);
wptheme.contextMenu._applyAction(evt);
setTimeout(function(){
i$.removeClass(i$.byId(_40.id),wptheme.contextMenu.css.show);
},0);
});
i$.bindDomEvt(_45,"onkeydown",function(evt){
return wptheme.contextMenu._applyKeyAction(evt);
});
i$.bindDomEvt(_45,"onmouseover",function(evt){
return wptheme.contextMenu._applyFocusAction(evt);
});
}
}
if((_44.title)&&(i$.isRTL(_44.title.lang))){
i$.addClass(_45,"rtl");
_45.setAttribute("dir","RTL");
}
}
_43.appendChild(_45);
}
}
while(_41.firstChild){
_41.removeChild(_41.firstChild);
}
_41.appendChild(_43);
i$.byId(_40.id)._firstSelectable=_47;
i$.byId(_40.id)._currentSelected=null;
},_fromTemplate:function(_48,_49,_4a){
var _4b,_4c,_4d;
if(typeof (_49)=="string"){
_4b=_49;
_4c=_4a;
_4d="";
}else{
_4b="type"+_49.type;
if(_49.itemClass){
_4b+=" "+_49.itemClass;
}
if(!_49._enabled){
_4b+=" "+wptheme.contextMenu.css.disabled;
}
_4c=(_49.title)?_49.title.value:"";
_4d=((_49.description)?_49.description.value:"");
}
return _48.replace(/\$\{title\}/g,_4c).replace(/"\$\{css-class\}"/g,"\""+(_4b)+"\"").replace(/\$\{css-class\}/g,"\""+(_4b)+"\"").replace(/"\$\{description\}"/g,"\""+_4d+"\"").replace(/\$\{description\}/g,"\""+_4d+"\"");
},_checkFunction:function(_4e,fn,arg,_4f){
if(fn){
if(!_4e.fromPath){
_4e.fromPath={};
}
var _50=_4e.fromPath[fn]||i$.fromPath(fn);
_4e.fromPath[fn]=_50;
if(i$.isFunction(_50)){
try{
return _50(arg);
}
catch(exc){
console.log("error executing function "+fn+" - "+exc);
}
}
}
return i$.promise.resolved(_4f);
},_stopEventPropagation:function(evt){
if(evt){
if(evt.stopPropagation){
evt.stopPropagation();
}else{
evt.cancelBubble=true;
}
}
},_applyKeyAction:function(evt){
var _51=evt.target||evt.srcElement;
var _52=_51;
var _53=null;
while(!_53){
_52=_52.parentNode;
if(_52._contextMenu){
_53=_52;
}
}
var _54=_53._contextMenu;
switch(evt.keyCode){
case 13:
wptheme.contextMenu._stopEventPropagation(evt);
i$.removeClass(i$.byId(_54.id),wptheme.contextMenu.css.show);
var _55=wptheme.contextMenu._findFocusNode(_53);
((_55)?_55:_53).focus();
window.setTimeout(function(){
wptheme.contextMenu._applyAction(evt);
},0);
return false;
case 9:
case 27:
i$.removeClass(i$.byId(_54.id),wptheme.contextMenu.css.show);
var _55=wptheme.contextMenu._findFocusNode(_53);
((_55)?_55:_53).focus();
break;
case 40:
wptheme.contextMenu._moveFocus(evt,_54,_51,"next");
return false;
case 38:
wptheme.contextMenu._moveFocus(evt,_54,_51,"previous");
return false;
}
return true;
},_moveFocus:function(evt,_56,_57,_58){
var _59=_57.links[_58];
if(_59&&(_59._menuitem.type=="Header"||_59._menuitem.type=="Separator")){
var _5a=false;
var _5b=null;
while(!_5b&&!_5a){
_59=_59.links[_58];
if(!_59){
_5a=true;
}else{
if(_59._menuitem.type!="Header"&&_59._menuitem.type!="Separator"){
_5b=_59;
}
}
}
_59=_5b;
}
if(_59){
var _5c=i$.byId(_56.id)._currentSelected;
if(_5c){
_5c.blur();
}
i$.byId(_56.id)._currentSelected=_59;
_59.focus();
}
if(evt.preventDefault){
evt.preventDefault();
}
},_applyFocusAction:function(evt){
var _5d=evt.target||evt.srcElement;
var _5e=_5d;
var _5f=null;
var _60=_5d._menuitem;
while(!_5f){
_5e=_5e.parentNode;
if(_5e._contextMenu){
_5f=_5e;
}
if(!_60){
_5d=_5d.parentNode;
_60=_5d._menuitem;
}
}
var _61=_5f._contextMenu;
var _62=i$.byId(_61.id)._currentSelected;
if(_62!=_5d){
if(_62){
_62.blur();
i$.byId(_61.id)._currentSelected=null;
}
if(_60.type!="Header"&&_60.type!="Separator"){
i$.byId(_61.id)._currentSelected=_5d;
_5d.focus();
}
}
return false;
},_applyAction:function(evt){
var _63=evt.target||evt.srcElement;
var _64=_63._menuitem;
while(!_64){
_63=_63.parentNode;
_64=_63._menuitem;
}
var p=wptheme.contextMenu._checkFunction(_64,_64.actionFn,_64,_64.actionUrl);
if(p){
p.then(function(_65){
if(_65&&i$.isString(_65)){
var _66=_64.actionHttpMethod||"GET";
if(_66!="GET"){
var _67=i$.createDom("form");
_67.setAttribute("action",_65);
_66=_66.toLowerCase();
switch(_66){
case "get":
_67.setAttribute("method","GET");
break;
case "delete":
case "put":
var _68=i$.createDom("input",{"type":"hidden","name":"x-method-override","value":_66.toUpperCase()});
_67.appendChild(_68);
case "post":
_67.setAttribute("method","POST");
_67.setAttribute("enctype","multipart/form-data");
break;
default:
}
document.body.appendChild(_67);
_67.submit();
}else{
window.location.href=_65;
}
}
});
}
},_applySubmenu:function(evt){
var _69=evt.target||evt.srcElement;
if(!_69._jsonData){
_69=_69.parentNode;
}
if(_69._jsonData){
_69.setAttribute("id",_69._jsonData.id+"_"+_69._menuitem.id);
wptheme.contextMenu.initSubmenu(_69,_69._menuitem.id,_69._jsonData);
}
}}});
})();

