$(document).ready(function() {
    $('.table').on('init.dt', function(e){
        // Enable Select2 select for the length option
        $('.dataTables_length select').select2({
            minimumResultsForSearch: Infinity,
            width: 'auto'
        });
    });
});
