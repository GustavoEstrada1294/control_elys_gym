window.addEventListener('load', function () {
  document.getElementById('payment_subscription_type_id').addEventListener('change', function () {
    console.log(this.value);

    if (this.value) {
      document.getElementById("payment_product_id").setAttribute("disabled", "disabled");
     

    }
    else {
      document.getElementById("payment_product_id").removeAttribute("disabled");

    }

  });


});

window.addEventListener('load', function () {
  document.getElementById('payment_product_id').addEventListener('change', function () {
    console.log(this.value);
  

    if (this.value) {
      document.getElementById("payment_subscription_type_id").setAttribute("disabled", "disabled");
     

    }
    else {
      document.getElementById("payment_subscription_type_id").removeAttribute("disabled");
    }

  });


});

//$( document ).ready(function() {
  //console.log( "ready!" );
//});

