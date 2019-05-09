
$(function () {
    $('#table').on('check.bs.table', function (row, elem) {
        $('#delBtn').show();
    });
});

$(function () {
    $('#table').on('uncheck.bs.table', function (row, elem) {
        $('#delBtn').hide();
    });
});

$(function () {
    $('#delBtn').click(function () {
        if (window.confirm("Are you sure you would like to delete this record?")) {
            // delete driver record
        } 
    });
});