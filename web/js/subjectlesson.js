/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$("document").ready(function () {
    var domCfg = "<'row'<'col-sm-12 col-md-6'l><'col-sm-12 col-md-12'f>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>";
    $('#filterTable').DataTable({
        "sPaginationType": "full_numbers",
        "bJQueryUI": true,
        "searching": true,
        "info": false,
        "ordering": false,
        "lengthChange": false,
        dom: domCfg
    });
    var table = $('#filterTable').DataTable();
    $("#filterTable_filter.dataTables_filter").append($("#statusFilter"));
    var categoryIndex1 = 0;
    $("#filterTable th").each(function (i) {
        if ($($(this)).html() == "Status") {
            categoryIndex1 = i;
            return false;
        }
    });

    $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var selectedItem = $('#statusFilter').val()
                var category = data[categoryIndex1];
                if (selectedItem === "" || category.includes(selectedItem)) {
                    return true;
                }
                return false;
            }
    );

    $("#statusFilter").change(function (e) {
        table.draw();
    });
    table.draw();
    $("#filterTable_filter.dataTables_filter").append($("#typeFilter"));
    var categoryIndex2 = 0;
    $("#filterTable th").each(function (i) {
        if ($($(this)).html() == "Type") {
            categoryIndex2 = i;
            return false;
        }
    });

    $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var selectedItem = $('#typeFilter').val()
                var category = data[categoryIndex2];
                if (selectedItem === "" || category.includes(selectedItem)) {
                    return true;
                }
                return false;
            }
    );

    $("#typeFilter").change(function (e) {
        table.draw();
    });
    table.draw();
});

