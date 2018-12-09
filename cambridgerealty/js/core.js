
/*
    ==================================================
    Initiate Site-Wide jQuery Functions
    ==================================================
*/

$(document).ready(function () {
    
    /*==================================================
      _blank XHTML Fix
    ==================================================*/
    
    $('a[rel=external]').attr('target', '_blank');
    

    
    /*==================================================
      Handle Flight + Hotel and Hotel Only Forms
    ==================================================*/
    
    var quickBook = 
    {
        hotelDate: null,
        /*==================================================
          Initialize Form
        ==================================================*/
        init: function(){
            $('#quickBook_form').submit(function(e) {
                e.preventDefault();
                quickBook.quickBook_validate();
            });
            
            
            // Load Form(s) //
            quickBook.load();
        },
        /*==================================================
          Load Form / Activate DatePicker Plugin
        ==================================================*/
        load: function(){
            // Hotel Only //
            quickBook.hotelDate = new Date().asString();
            $('#quickBook_date')
                .datePicker(
                    {
                        clickInput : true,
                        startDate : quickBook.hotelDate
                    }
                ).val(
                    quickBook.hotelDate
                ).trigger(
                    'change'
                ).bind(
                    'dpClosed',
                    function(e, selected){ 
                        quickBook.hotelDate = new Date(selected[0]).asString();
                    }
                );
            
        },
        /*==================================================
          Validate Form
        ==================================================*/
        quickBook_validate: function(){
            if ($('#quickBook_date').val() == ''){
                alert('Please Complete All Booking Form Fields');
            }
            else {
                quickBook.quickBook_submit();
            }
        },
        /*==================================================
          Submit Form
        ==================================================*/
        quickBook_submit: function(){
        
            // Default Month Arrays //
            var monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
            var monthNumbers = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
            
            // Format Start Date //
            var startDate = $('#quickBook_date').val();
            var startDay = startDate.substr(0,2);
            var startMonth = startDate.substr(3,3);
            var startYear = startDate.substr(7,4);
            
            for (var i=0; i<monthNames.length; i++) {
                if (startMonth == monthNames[i]) {
                    startMonth = monthNumbers[i];
                    break;
                } else {
                    // Do Nothing
                }
            }
            startDate = startMonth+'/'+startDay+'/'+startYear;
            
            // Format End Date //
            var n = $('#quickBook_nights').val();
            var nights = parseInt(n);
            var endDate = new Date(quickBook.hotelDate).addDays(nights).asString();
            var endDay = endDate.substr(0,2);
            var endMonth = endDate.substr(3,3);
            var endYear = endDate.substr(7,4);
            
            for (var i=0; i<monthNames.length; i++) {
                if (endMonth == monthNames[i]) {
                    endMonth = monthNumbers[i];
                    break;
                }
            }
            endDate = endMonth+'/'+endDay+'/'+endYear;
            
            // Update Form Variables //
            $('#checkin').val(startDate);
            $('#checkout').val(endDate);
            $('#nights').val($('#quickBook_nights').val());
            $('#adults').val($('#quickBook_adults').val());
            $('#children').val($('#quickBook_children').val());
            $('#rooms').val($('#quickBook_rooms').val());
            $('#code').val($('#quickBook_code').val());
            
            // Submit Form to Reservation Page //
            $('#quickBook_submitForm').submit();
        }
    }
    
    // Initiate Quick Book Form(s) //
    if ($('#quickBook_wrapper').length){
        quickBook.init();
    }
    
});