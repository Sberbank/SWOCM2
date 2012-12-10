(function(){
var _1=false;
if(typeof wptheme==="undefined"||!wptheme){
wptheme={};
}
i$.mash(wptheme,{togglePageMode:function(_2,_3,_4,_5){
var _6=i$.byId("wpthemeModeToggle");
i$.addClass(_6,"wpthemeEditControlLoading");
return i$.modules.loadDeferred().then(function(){
var _7=i$.fromPath("com.ibm.mashups"),_8=_7?com.ibm.mashups.builder.model.Factory.getRuntimeModel():null,_9=_7?com.ibm.mashups.enabler.user.Factory.getUserModel():null,_6=i$.byId("wpthemeModeToggle"),_a=i$.byId("wpthemeModeToggleImg"),_b=i$.byId("wpthemeModeToggleAccess"),_c=i$.byId("wpthemeModeToggleAltText"),_d=document.getElementsByTagName("body")[0],_e=function(_f){
if(_7){
com.ibm.mashups.services.ServiceManager.getService("eventService").broadcastEvent("com.ibm.mashups.builder.changePageMode",_f);
_8.getCurrentPage().setPageMode(_f);
}
i$.fireEvent("wptheme/contextMenu/invalidate/all");
i$.removeClass(_6,"wpthemeEditControlLoading");
};
if((!_7&&!i$.hasClass(_d,"edit-mode"))||(_7&&_9.getAnonymousMode()!=com.ibm.mashups.enabler.user.AnonymousMode.ANONYMOUS&&_8.getCurrentPage().getPageMode()!="edit")){
_6.title=_a.alt=_3;
_b.innerHTML=_4;
_c.innerHTML=_3;
_e("edit");
i$.addClass(_d,"edit-mode");
if(!_1){
if(!i$.isIE&&!i$.isOpera&&_7){
window.onbeforeunload=function(){
if(com.ibm.mashups.builder.model.Factory.getRuntimeModel().getCurrentPage().isDirty()){
return com.ibm.mm.builder.coreWidgetsStrings.I_PAGE_SAVE_WARNING;
}
};
}
_1=true;
}
}else{
_6.title=_a.alt=_2;
_b.innerHTML=_5;
_c.innerHTML=_2;
_e("view");
i$.removeClass(_d,"edit-mode");
}
},function(err){
console.log("Error: "+err);
});
}});
})();

