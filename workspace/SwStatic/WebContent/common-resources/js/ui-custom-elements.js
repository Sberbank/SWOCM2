 $(function() {
     /* UI Tabs*/
     $( ".ui-tabs" ).tabs();

     /* UI Collapse */
     var uiCollapseIcon = $('.collapse-header');

     uiCollapseIcon.click(function () {
         var el = $(this);
         el.parent('.b-collapse').toggleClass('collapse-show');
     });

     /* UI Select from Chosen jQuery Plugin */
     $(".ui-select").chosen({max_selected_options: 2, no_results_text: "нет результатов в поиске"});

 });