(function(){$(function(){return $("#batch_actions_selector li a").click(function(t){var e,c=this;return t.stopPropagation(),(e=$(this).data("confirm"))?ActiveAdmin.modal_dialog(e,$(this).data("inputs"),function(t){return $(c).trigger("confirm:complete",t)}):$(this).trigger("confirm:complete")}),$("#batch_actions_selector li a").on("confirm:complete",function(t,e){var c;return(c=JSON.stringify(e))?$("#batch_action_inputs").val(c):$("#batch_action_inputs").attr("disabled","disabled"),$("#batch_action").val($(this).data("action")),$("#collection_selection").submit()}),$("#batch_actions_selector").length&&$(":checkbox.toggle_all").length?($(".paginated_collection table.index_table").length?$(".paginated_collection table.index_table").tableCheckboxToggler():$(".paginated_collection").checkboxToggler(),$(document).on("change",".paginated_collection :checkbox",function(){return $(".paginated_collection :checkbox:checked").length?$("#batch_actions_selector").aaDropdownMenu("enable"):$("#batch_actions_selector").aaDropdownMenu("disable")})):void 0})}).call(this);