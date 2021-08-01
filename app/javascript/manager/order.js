var orders = orders || {};

orders = (function($) {
  'use strict';

  function init() {
    changePositionCard();
  }

  function changePositionCard () {
    $("#sortable1, #sortable2" ).sortable({
      connectWith: ".connectedSortable",
      receive: function (ui, event) {
        changeStatusOrder($(this))
      }
    }).disableSelection();
  }

  function changeStatusOrder (element) {
    const statusReviced = element.data("status-item")
    const orderReviced = element.children(':first').data("order-id")

    $.ajax({
      type: 'PATCH',
      url: `/manager/orders/${orderReviced}`,
      beforeSend: function(xhr) {
        xhr.setRequestHeader(
          'X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')
        )
      },
      data: { order: { status: statusReviced } },

    });


  }
  return {
    init: init
  };
})(jQuery);

document.addEventListener("turbolinks:load", function() {
  orders.init()
})
