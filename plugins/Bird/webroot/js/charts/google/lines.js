// Simple line chart
// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawAreaChart);
// Chart settings
function drawAreaChart() {
    // Data
    var data = google.visualization.arrayToDataTable([
        ['Year', 'Sales', 'Expenses'],
        ['2004',  1000,      400],
        ['2005',  1270,      460],
        ['2006',  660,       1220],
        ['2007',  1030,      540]
    ]);
    // Options
    var options = {
        fontName: 'tahoma',
        height: 400,
        curveType: 'function',
        fontSize: 12,
        areaOpacity: 0.4,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        pointSize: 6,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        vAxis: {
            title: 'Sales and Expenses',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridarea:{
                color: '#e5e5e5',
                count: 8
            },
            minValue: 0
        },
        legend: {
            position: 'top',
            alignment: 'end',
            textStyle: {
                fontSize: 12
            }
        }
    };
    // Draw chart
    var area_chart = new google.visualization.AreaChart($('#google-area')[0]);
    area_chart.draw(data, options);
}
// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawAreaChart();
    }
});



// Area intervals
// ------------------------------
// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawAreaIntervals);
// Chart settings
function drawAreaIntervals() {
    // Data
    var data = new google.visualization.DataTable();
        data.addColumn('string', 'x');
        data.addColumn('number', 'values');
        data.addColumn({id:'i0', type:'number', role:'interval'});
        data.addColumn({id:'i1', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
    data.addRows([
        ['a', 100, 90, 120, 85, 96, 104, 120],
        ['b', 120, 95, 130, 90, 123, 124, 140],
        ['c', 130, 105, 140, 100, 127, 133, 139],
        ['d', 90, 85, 95, 85, 88, 92, 95],
        ['e', 70, 74, 63, 67, 69, 70, 72],
        ['f', 30, 39, 22, 21, 28, 34, 40],
        ['g', 80, 77, 83, 70, 77, 85, 90],
        ['h', 100, 90, 120, 85, 95, 102, 120]]);
    // The intervals data as areas
    var options_area_intervals = {
        fontName: 'tahoma',
        height: 400,
        curveType: 'function',
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 250
        },
        lineWidth: 2,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        series: [{'color': '#43A047'}],
        intervals: { 'style': 'area' }, // Use area intervals.
        pointSize: 6,
        vAxis: {
            title: 'Number values',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 12
            },
            minValue: 0
        },
        legend: 'none'
    };
    // Draw chart
    var area_intervals = new google.visualization.LineChart($('#google-area-intervals')[0]);
    area_intervals.draw(data, options_area_intervals);
}
// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawAreaIntervals();
    }
});


// Stacked area
// ------------------------------
// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawAreaStackedChart);
// Chart settings
function drawAreaStackedChart() {
    // Data
    var data = google.visualization.arrayToDataTable([
        ['Year', 'Cars', 'Trucks', 'Drones', 'Segways'],
        ['2013',  870,  460, 310, 220],
        ['2014',  460,   720, 220, 460],
        ['2015',  930,  640, 340, 330],
        ['2016',  1000,  400, 180, 500]
    ]);
    // Options
    var options_area_stacked = {
        fontName: 'tahoma',
        height: 400,
        curveType: 'function',
        fontSize: 12,
        areaOpacity: 0.4,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        isStacked: true,
        pointSize: 6,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        lineWidth: 1.5,
        vAxis: {
            title: 'Number values',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 8
            },
            minValue: 0
        },
        legend: {
            position: 'top',
            alignment: 'end',
            textStyle: {
                fontSize: 12
            }
        }
    };
    // Draw chart
    var area_stacked_chart = new google.visualization.AreaChart($('#google-area-stacked')[0]);
    area_stacked_chart.draw(data, options_area_stacked);
}
// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawAreaStackedChart();
    }
});


// Stepped area
// ------------------------------
// Initialize chart
google.load("visualization", "1", { packages:["corechart"] });
google.setOnLoadCallback(drawSteppedAreaChart);
// Chart settings
function drawSteppedAreaChart() {
    // Data
    var data = google.visualization.arrayToDataTable([
        ['Director (Year)',  'Rotten Tomatoes', 'IMDB'],
        ['Alfred Hitchcock (1935)', 8.4,         7.9],
        ['Ralph Thomas (1959)',     6.9,         6.5],
        ['Don Sharp (1978)',        6.5,         6.4],
        ['James Hawes (2008)',      4.4,         6.2]
    ]);
    // Options
    var options_stepped_area = {
        fontName: 'tahoma',
        height: 400,
        isStacked: true,
        fontSize: 12,
        areaOpacity: 0.4,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        lineWidth: 1,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        pointSize: 6,
        vAxis: {
            title: 'Accumulated Rating',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 8
            },
            minValue: 0
        },
        legend: {
            position: 'top',
            alignment: 'center',
            textStyle: {
                fontSize: 12
            }
        }
    };
    // Draw chart 
    var stepped_area_chart = new google.visualization.SteppedAreaChart($('#google-area-stepped')[0]);
    stepped_area_chart.draw(data, options_stepped_area);
}
// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawSteppedAreaChart();
    }
});


// Line intervals
// ------------------------------
// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawLineIntervals);
// Chart settings
function drawLineIntervals() {
    // Data
    var data = new google.visualization.DataTable();
        data.addColumn('string', 'x');
        data.addColumn('number', 'values');
        data.addColumn({id:'i0', type:'number', role:'interval'});
        data.addColumn({id:'i1', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
        data.addColumn({id:'i2', type:'number', role:'interval'});
    data.addRows([
        ['a', 100, 90, 120, 85, 96, 104, 120],
        ['b', 120, 95, 130, 90, 123, 124, 140],
        ['c', 130, 105, 140, 100, 127, 133, 139],
        ['d', 90, 85, 95, 85, 88, 92, 95],
        ['e', 70, 74, 63, 67, 69, 70, 72],
        ['f', 30, 39, 22, 21, 28, 34, 40],
        ['g', 80, 77, 83, 70, 77, 85, 90],
        ['h', 100, 90, 120, 85, 95, 102, 120]
    ]);
    // The intervals data as narrow lines (useful for showing raw source data)
    var options_line_intervals = {
        fontName: 'tahoma',
        height: 400,
        curveType: 'function',
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        lineWidth: 3,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        series: [{'color': '#EF5350'}],
        intervals: {'style': 'line'}, // Use line intervals.
        pointSize: 6,
        vAxis: {
            title: 'Number values',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 12
            },
            minValue: 0
        },
        legend: 'none'
    };
    // Draw chart
    var line_intervals = new google.visualization.LineChart($('#google-line-intervals')[0]);
    line_intervals.draw(data, options_line_intervals);
}
// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawLineIntervals();
    }
});


// Line chart
// ------------------------------
// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawLineChart);
// Chart settings
function drawLineChart() {
    // Data
    var data = google.visualization.arrayToDataTable([
        ['Year', 'Sales', 'Expenses'],
        ['2004',  1000,      400],
        ['2005',  1270,      460],
        ['2006',  660,       1220],
        ['2007',  1030,      540]
    ]);
    // Options
    var options = {
        fontName: 'tahoma',
        height: 400,
        curveType: 'function',
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        pointSize:6,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        vAxis: {
            title: 'Sales and Expenses',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 8
            },
            minValue: 0
        },
        legend: {
            position: 'top',
            alignment: 'center',
            textStyle: {
                fontSize: 12
            }
        }
    };
    // Draw chart
    var line_chart = new google.visualization.LineChart($('#google-line')[0]);
    line_chart.draw(data, options);
}

// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawLineChart();
    }
});