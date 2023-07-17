$(document).ready(function() {
    $('#search-input').on('input', function() {
      $.ajax({
        url: "/contacts",
        data: { search: $('#search-input').val() },
        dataType: "script"
      });
    });


    $(document).on('click', '.delete-link', function(e) {
      e.preventDefault();

      var contactId = $(this).data('contact-id');
      $('#deleteForm').attr('action', '/contacts/' + contactId);

      $('#confirmModal').removeClass('d-none');  // Muestra la modal
    });
    
    $(document).on('click', '#confirmDelete, .btn-secondary, .close', function(e) {
      $('#confirmModal').addClass('d-none');  // Oculta la modal
    });
});

  