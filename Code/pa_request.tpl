<head>
   <!-- The line below includes stupid.css -->
   <link href="/css/bootstrap-3.3.1.min.css" rel="stylesheet" type="text/css"/>
   <link href="/css/bootstrap-3.3.1-datetimepicker.min.css" rel="stylesheet" type="text/css"/>
   <link href="/css/customer.css" rel="stylesheet" type="text/css"/>
   <script type="text/javascript" src="/js/jquery.min.js"></script>
   <script type="text/javascript" src="/js/moment.min.js"></script>
   <script type="text/javascript" src="js/bootstrap-3.3.1.min.js"></script>
   <script type="text/javascript" src="js/bootstrap-3.3.1-datetimepicker.min.js"></script>
   <script type="text/javascript" src="js/customer.js"></script>
   <link rel="shortcut icon" href="images/icons8_cab_stand_50_fDM_icon.ico" type="image/x-icon" />
   <title>New Ride</title>
   <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
   <meta charset="utf-8">
</head>
<body class="p-3 mb-2 bg-dark">
   <nav class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">

      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="images/icons8-customer-64.png" style="width: 28px; height: 28px;">{{logged_username}}<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/profile">Profile</a>
            <li class="divider"></li>
            <li><a href="/">Log off</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
   <div class ="login_text text-white"><img src="/images/icons8-taxi-booking-office-64.png"> New Ride</div>
   <div class="newrider_container">
      <div class="newrider_container_left" id = "newrider_container_left">
         <form action="/new_request" method="post">
            <div class="newrider_row_container">
               <div class="newrider_row_container_label text-white">Rider Type: </div>
               <div class="newrider_row_container_input">
                  <select id="rider_type_id" name="ride_status" class="form-control newrider_btn_width">
                     <option selected>Single Ride</option>
                     <option>Long Period</option>
                  </select>
               </div>
            </div>
            <div class="newrider_row_container">
               <div class="newrider_row_container_label text-white">Start Time: </div>
               <div class="newrider_row_container_input">
                  <div class="form-group datetime_select_width">
                     <div class='input-group date' id='datetimepicker1'>
                        <input type='text' class="form-control" name="input_start_time"/>
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                     </div>
                  </div>
               </div>
            </div>
            <div class="newrider_row_container">
               <div class="newrider_row_container_label text-white">End Time: </div>
               <div class="newrider_row_container_input">
                  <div class="form-group datetime_select_width">
                     <div class='input-group date' id='datetimepicker2'>
                        <input type='text' class="form-control" name="input_end_time"/>
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                     </div>
                  </div>
               </div>
            </div>
            <div id="riderType" class="newrider_checkbox_area">
               <div class="custom-control1 custom-checkbox1">
                  <div class = "nerrider_checkbox_group_label text-white text-right">Repeat: </div>
                  <div class = "nerrider_checkbox_group">
                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_1" name="ck_1">
                        <label class="custom-control-label1 text-white" for="ck_1" >Monday</label>
                     </div>
                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_2" name="ck_2">
                        <label class="custom-control-label1 text-white" for="ck_2">Tuesday</label>
                     </div>
                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_3" name="ck_3">
                        <label class="custom-control-label1 text-white" for="ck_3">Wednesday</label>
                     </div>
                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_4" name="ck_4">
                        <label class="custom-control-label1 text-white" for="ck_4">Thursday</label>
                     </div>
                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_5" name="ck_5">
                        <label class="custom-control-label1 text-white" for="ck_5">Friday</label>
                     </div>
                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_6" name="ck_6">
                        <label class="custom-control-label1 text-white" for="ck_5">Saturday</label>
                     </div>

                     <div class="newrider_checkbox_row_container">
                        <input type="checkbox" class="custom-control-input1" id="ck_7" name="ck_7">
                        <label class="custom-control-label1 text-white" for="ck_5">Sunday</label>
                     </div>
                  </div>
               </div>
            </div>
            <div class="newrider_row_container">
               <div class="newrider_row_container_label text-white">Starting Point: </div>
               <div class="newrider_row_container_input">
                  <!--<input id="origin-input" class="controls" type="text" placeholder="Enter an origin location">-->
                  <input id="origin-input" class="form-control newrider_btn_width" type="text" placeholder="Enter an origin location" name="input_staring_point"/>
               </div>
            </div>
            <div class="newrider_row_container">
               <div class="newrider_row_container_label text-white">Destination: </div>
               <div class="newrider_row_container_input">
                  <!--<input id="destination-input" class="controls" type="text" placeholder="Enter a destination location">-->
                  <input id="destination-input" class="form-control newrider_btn_width" type="text" placeholder="Enter a destination location" name="input_destination"/>
               </div>
            </div>
            <div class="newrider_row_container">
               <div class="newrider_row_container_label"></div>
               <div class="newrider_row_container_input">
                  <button type ="submit" class="btn btn-info request_btn_width">Submit</button>
               </div>
            </div>
             <div class="newrider_row_container">
                <div class="newrider_row_container_label"></div>
             <div class="newrider_row_container_input">
                  <button type ="reset" class="btn btn-info request_btn_width" id="request_btn">Reset</button>
               </div>
             </div>
               <div class="newrider_row_container">
               <div class="newrider_row_container_label"></div>
               <div class="newrider_row_container_input">
                  <a href="/history"><button type ="button" class="btn btn-info request_btn_width">Back</button></a>
               </div>
            </div>
         </form>
      </div>
      <div class="newrider_container_right text-white" id ="newrider_container_right">
         <!--<div id="mode-selector" class="controls">-->
         <!--<input type="radio" name="type" id="changemode-walking">-->
         <!--<label for="changemode-walking">Walking</label>-->
         <!--<input type="radio" name="type" id="changemode-transit">-->
         <!--<label for="changemode-transit">Transit</label>-->
         <!--<input type="radio" name="type" id="changemode-driving" checked="checked">-->
         <!--<label for="changemode-driving">Driving</label>-->
         <!--</div>-->
         <div id="map"></div>
      </div>
   </div>
   <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          mapTypeControl: false,
          center: {lat: 36.9916, lng: -122.0583},
          zoom: 13
        });

        new AutocompleteDirectionsHandler(map);
      }

       /**
        * @constructor
       */
      function AutocompleteDirectionsHandler(map) {
        this.map = map;
        this.originPlaceId = null;
        this.destinationPlaceId = null;
        this.travelMode = 'DRIVING';
        var originInput = document.getElementById('origin-input');
        var destinationInput = document.getElementById('destination-input');
        //var modeSelector = document.getElementById('mode-selector');
        this.directionsService = new google.maps.DirectionsService;
        this.directionsDisplay = new google.maps.DirectionsRenderer;
        this.directionsDisplay.setMap(map);

        var originAutocomplete = new google.maps.places.Autocomplete(
            originInput, {placeIdOnly: true});
        var destinationAutocomplete = new google.maps.places.Autocomplete(
            destinationInput, {placeIdOnly: true});

        //this.setupClickListener('changemode-walking', 'WALKING');
        //this.setupClickListener('changemode-transit', 'TRANSIT');
        //this.setupClickListener('changemode-driving', 'DRIVING');

        this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
        this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

        //this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
        //this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
        //this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
      }

      // Sets a listener on a radio button to change the filter type on Places
      // Autocomplete.
      AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) {
        var radioButton = document.getElementById(id);
        var me = this;
        radioButton.addEventListener('click', function() {
          me.travelMode = mode;
          me.route();
        });
      };

      AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) {
        var me = this;
        autocomplete.bindTo('bounds', this.map);
        autocomplete.addListener('place_changed', function() {
          var place = autocomplete.getPlace();
          if (!place.place_id) {
            window.alert("Please select an option from the dropdown list.");
            return;
          }
          if (mode === 'ORIG') {
            me.originPlaceId = place.place_id;
          } else {
            me.destinationPlaceId = place.place_id;
          }
          me.route();
        });

      };

      AutocompleteDirectionsHandler.prototype.route = function() {
        if (!this.originPlaceId || !this.destinationPlaceId) {
          return;
        }
        var me = this;

        this.directionsService.route({
          origin: {'placeId': this.originPlaceId},
          destination: {'placeId': this.destinationPlaceId},
          travelMode: this.travelMode
        }, function(response, status) {
          if (status === 'OK') {
            me.directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      };

   </script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDL1YkEcCMEebnwcML3AaISv0i0L0fAqX0&libraries=places&callback=initMap"
      async defer></script>
</body>