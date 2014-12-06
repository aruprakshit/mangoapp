$(function () {
  // Sorting
  $('#users th a').live('click', function () {
    $.getScript(this.href);
    return false;
  });

  // Search form.
  $('#users_search input#search').keyup(function () {
    $.get($('#users_search').attr('action'),
      $('#users_search').serialize(), null, 'script');
    return false;
  });
});
