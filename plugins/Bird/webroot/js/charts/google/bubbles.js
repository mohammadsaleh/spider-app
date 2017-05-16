// Bubble chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawBubbleChart);


// Chart settings
function drawBubbleChart() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['ID', 'Life Expectancy', 'Fertility Rate', 'Region'],
        ['CAN',    82.66,              1.67,      'North America'],
        ['DEU',    79.84,              1.36,      'Europe'],
        ['DNK',    70.6,               1.84,      'Europe'],
        ['EGY',    72.73,              2.78,      'Middle East'],
        ['GBR',    75.05,              2,         'Europe'],
        ['IRN',    72.49,              0.7,       'Middle East'],
        ['IRQ',    68.09,              4.77,      'Middle East'],
        ['ISR',    81.55,              3.96,      'Middle East'],
        ['RUS',    68.6,               1.54,      'Europe'],
        ['USA',    78.09,              3.05,      'North America']
    ]);

    // Options
    var options = {
        fontName: 'tahoma',
        height: 400,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        vAxis: {
            title: 'Fertility Rate',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 15
            },
            minValue: 0
        },
        bubble: {
          textStyle: {
            auraColor: 'none',
            color: '#fff'
          },
          stroke: '#fff'
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
    var bubble = new google.visualization.BubbleChart($('#google-bubble')[0]);
    bubble.draw(data, options);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawBubbleChart();
    }
});


// Bubble chart with color scale
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawBubbleGradientChart);


// Chart settings
function drawBubbleGradientChart() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['ID', 'X', 'Y', 'Temperature'],
        ['',   80,  167,      120],
        ['',   79,  136,      130],
        ['',   78,  184,      50],
        ['',   72,  278,      230],
        ['',   81,  200,      210],
        ['',   72,  170,      100],
        ['',   68,  477,      80]
    ]);


    // Optinos
    var options = {
        fontName: 'tahoma',
        height: 400,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        vAxis: {
            gridlines:{
                color: '#e5e5e5',
                count: 15
            },
            minValue: 0
        },
        bubble: {
          textStyle: {
            fontSize: 12
          },
          stroke: '#fff'
        }
    };


    // Draw chart
    var gradient_bubble = new google.visualization.BubbleChart($('#google-bubble-gradient')[0]);
    gradient_bubble.draw(data, options);
}

// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawBubbleGradientChart();
    }
});


// Scatter chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawScatter);


// Chart settings
function drawScatter() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Age', 'Weight'],
        [ 8,      12],
        [ 4,      6],
        [ 12,     14],
        [ 4,      5],
        [ 3,      3.5],
        [ 6.5,    7],
        [ 7,    10],
        [ 6.5,    12],
        [ 6,    13],
        [ 8,    16],
        [ 12,    17],
        [ 18,    8],
        [ 18,    9],
        [ 16,    12]
    ]);


    // Options
    var options = {
        fontName: 'tahoma',
        height: 250,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 200
        },
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        hAxis: {
            minValue: 0,
            maxValue: 15
        },
        vAxis: {
            title: 'Weight',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 10
            },
            minValue: 0,
            maxValue: 15
        },
        legend: 'none',
        pointSize: 6,
        colors: ['#E53935']
    };


    // Draw chart
    var scatter = new google.visualization.ScatterChart($('#google-scatter')[0]);
    scatter.draw(data, options);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawScatter();
    }
});


// Diff scatter chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawScatterDiff);


// Chart settings
function drawScatterDiff() {

    // Old data
    var oldData = google.visualization.arrayToDataTable([
        ['', 'Medicine 1', 'Medicine 2'],
        [23, null, 12], [9, null, 39], [15, null, 28],
        [37, null, 30], [21, null, 14], [12, null, 18],
        [29, null, 34], [ 8, null, 12], [38, null, 28],
        [35, null, 12], [26, null, 10], [10, null, 29],
        [12, null, 10], [27, null, 38], [39, null, 17],
        [34, null, 20], [38, null,  5], [33, null, 27],
        [23, null, 39], [12, null, 10], [ 8, 15, null],
        [39, 15, null], [27, 31, null], [30, 24, null],
        [31, 39, null], [35,  6, null], [ 5,  5, null],
        [19, 39, null], [22,  8, null], [19, 23, null],
        [27, 20, null], [12,  6, null], [34, 33, null],
        [38,  8, null], [39, 29, null], [13, 23, null],
        [13, 36, null], [39,  6, null], [14, 37, null], [13, 39, null]
    ]);

    // New data
    var newData = google.visualization.arrayToDataTable([
        ['', 'Medicine 1', 'Medicine 2'],
        [22, null, 12], [7, null, 40], [14, null, 31],
        [37, null, 30], [18, null, 17], [9, null, 20],
        [26, null, 36], [5, null, 13], [36, null, 30],
        [35, null, 15], [24, null, 12], [7, null, 31],
        [10, null, 12], [24, null, 40], [37, null, 18],
        [32, null, 21], [35, null, 7], [31, null, 30],
        [21, null, 42], [12, null, 10], [10, 13, null],
        [40, 12, null], [28, 29, null], [32, 22, null],
        [31, 37, null], [38, 5, null], [6, 4, null],
        [21, 36, null], [22, 8, null], [21, 22, null],
        [28, 17, null], [12, 5, null], [37, 30, null],
        [41, 7, null], [41, 27, null], [15, 20, null],
        [14, 36, null], [42, 3, null], [14, 37, null], [15, 36, null]
    ]);


    // Options
    var options = {
        fontName: 'tahoma',
        height: 250,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 200
        },
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        hAxis: {
            minValue: 0
        },
        vAxis: {
            gridlines: {
                color: '#e5e5e5',
                count: 5
            },
            minValue: 0
        },
        legend: {
        position: 'top',
        alignment: 'center',
            textStyle: {
                fontSize: 12
            }
        },
        pointSize: 6,
        diff: {
            oldData: {
                opacity: 0.5
            }
        },
    };

    // Attach chart to the DOM element
    var chartOldOpacity = new google.visualization.ScatterChart($('#google-scatter-diff')[0]);

    // Set data
    var diffData = chartOldOpacity.computeDiff(oldData, newData);

    // Draw our chart, passing in some options
    chartOldOpacity.draw(diffData, options);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawScatterDiff();
    }
});