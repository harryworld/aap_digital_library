// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap-sprockets
//= require medium-editor
//= require handlebars
//= require jquery.sortable
//= require blueimp-file-upload/js/vendor/jquery.ui.widget
//= require blueimp-file-upload/js/jquery.iframe-transport
//= require blueimp-file-upload
//= require medium-editor-insert-plugin
//= require_tree .

$(document).ready(function() {

  var editor = new MediumEditor('.editable');
  $('.editable').mediumInsert({
      editor: editor,
      addons: {
        images: {
          fileUploadOptions: {
            url: '/upload'
          }
        }
      }
  });
  $('.edit_article').submit(function(e) {
    e.preventDefault();

    var contentObj = editor.serialize();
    $('#article_' + $('.editable').attr('data-field-id')).val(contentObj['element-0'].value);
    this.submit();
  });
});
