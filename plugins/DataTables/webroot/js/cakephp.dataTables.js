/**
 * Timer instance
 *
 */
var oFilterTimerId = null;

/**
 * Default filter delay to optimize performance
 * @type {number}
 */
var delay = 600;

/**
 * Add search behavior to all search fields in column footer
*/
function initSearch (table)
{
    table.api().columns().every( function () {
        var index = this.index();
        var lastValue = ''; // closure variable to prevent redundant AJAX calls
        $('input, select', this.header()).on('click keyup change', function (e) {
            e.preventDefault()
            e.stopPropagation()
            if (this.value != lastValue) {
                lastValue = this.value;
                // -- set search
                table.api().column(index).search(this.value);
                window.clearTimeout(oFilterTimerId);
                oFilterTimerId = window.setTimeout(function(){drawTable(table)}, delay);
            }
        });
    });
}

/**
 * Function reset
 *
 */
function reset(table)
{
    table.api().columns().every(function() {
        this.search('');
        $('input, select', this.header()).val('');
        drawTable();
    });
}

/**
 * Draw table again after changes
 *
 */
function drawTable(table) {
    table.api().draw();
}
