$(document).ready(function() {
  $('.js-load-xml').click(function() {
    $.get('/epp_test/load_xml', {obj: $(this).data('obj'), epp_action: $(this).data('epp-action')}, function(data) {
      $('textarea[name="payload"]').html(data);
    });
  });
});
