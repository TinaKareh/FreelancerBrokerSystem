$(function () {
    $('#table').on('check.bs.table', function (row, elem) {

        if (elem.status === "Pending") {
            document.getElementById('app_link').href = "/admin/approve/ac_trip?applicationId=" + elem.app_id;
            $('#app_link').show();
        }
    });
});

$(function () {
    $('#table').on('uncheck.bs.table', function (row, elem) {
        $('#app_link').hide();
    });
});