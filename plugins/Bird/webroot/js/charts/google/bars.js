// Bar chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawBar);

// Chart settings
function drawBar() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Year', 'Sales', 'Expenses'],
        ['2004',  1000,      400],
        ['2005',  1270,      460],
        ['2006',  660,       1220],
        ['2007',  1030,      540]
    ]);
    // Options
    var options_bar = {
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
                count: 10
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
    var bar = new google.visualization.BarChart($('#google-bar')[0]);
    bar.draw(data, options_bar);
}
// Resize chart
// ------------------------------
$(function () {
    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);
    // Resize function
    function resize() {
        drawBar();
    }
});


// Stacked bars
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawBarStacked);

// Chart settings
function drawBarStacked() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Genre', 'Fantasy & Sci Fi', 'Romance', 'Mystery/Crime', 'General', 'Western', 'Literature', { role: 'annotation' } ],
        ['2000', 20, 30, 35, 40, 45, 30, ''],
        ['2005', 14, 20, 25, 30, 48, 30, ''],
        ['2010', 10, 24, 20, 32, 18, 5, ''],
        ['2015', 15, 25, 30, 35, 20, 15, ''],
        ['2020', 16, 22, 23, 30, 16, 9, ''],
        ['2025', 12, 26, 20, 40, 20, 30, ''],
        ['2030', 28, 19, 29, 30, 12, 13, '']
    ]);


    // Options
    var options_bar_stacked = {
        fontName: 'tahoma',
        height: 400,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        isStacked: true,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        hAxis: {
            gridlines:{
                color: '#e5e5e5',
                count: 10
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
    var bar_stacked = new google.visualization.BarChart($('#google-bar-stacked')[0]);
    bar_stacked.draw(data, options_bar_stacked);
}

// Resize chart
// ------------------------------
$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawBarStacked();
    }
});


// Column chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawColumn);


// Chart settings
function drawColumn() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Year', 'Sales', 'Expenses'],
        ['2004',  1000,      400],
        ['2005',  1270,      460],
        ['2006',  660,       1220],
        ['2007',  1030,      540]
    ]);


    // Options
    var options_column = {
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
            title: 'Sales and Expenses',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 10
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
    var column = new google.visualization.ColumnChart($('#google-column')[0]);
    column.draw(data, options_column);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawColumn();
    }
});


// Stacked columns
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawColumnStacked);


// Chart settings
function drawColumnStacked() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Genre', 'Fantasy & Sci Fi', 'Romance', 'Mystery/Crime', 'General', 'Western', 'Literature', { role: 'annotation' } ],
        ['2000', 20, 30, 35, 40, 45, 30, ''],
        ['2005', 14, 20, 25, 30, 48, 30, ''],
        ['2010', 10, 24, 20, 32, 18, 5, ''],
        ['2015', 15, 25, 30, 35, 20, 15, ''],
        ['2020', 16, 22, 23, 30, 16, 9, ''],
        ['2025', 12, 26, 20, 40, 20, 30, ''],
        ['2030', 28, 19, 29, 30, 12, 13, '']
    ]);


    // Options
    var options_column_stacked = {
        fontName: 'tahoma',
        height: 400,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        isStacked: true,
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
                count: 10
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
    var column_stacked = new google.visualization.ColumnChart($('#google-column-stacked')[0]);
    column_stacked.draw(data, options_column_stacked);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawColumnStacked();
    }
});


// Combo chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawCombo);


// Chart settings
function drawCombo() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
        ['2004/05',  165,      938,         522,             998,           450,      614.6],
        ['2005/06',  135,      1220,        599,             1268,          288,      682],
        ['2006/07',  157,      1267,        587,             807,           397,      623],
        ['2007/08',  139,      1210,        615,             968,           215,      609.4],
        ['2008/09',  136,      691,         629,             1026,          366,      569.6]
    ]);


    // Options
    var options_combo = {
        fontName: 'tahoma',
        height: 400,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        seriesType: "bars",
        series: {
            5: {
                type: "line",
                pointSize: 5
            }
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
                count: 10
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
    var combo = new google.visualization.ComboChart($('#google-combo')[0]);
    combo.draw(data, options_combo);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawCombo();
    }
});


// Histogram
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawHistogram);


// Chart settings
function drawHistogram() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Dinosaur', 'Length'],
        ['Acrocanthosaurus (top-spined lizard)', 12.2],
        ['Albertosaurus (Alberta lizard)', 9.1],
        ['Allosaurus (other lizard)', 12.2],
        ['Apatosaurus (deceptive lizard)', 22.9],
        ['Archaeopteryx (ancient wing)', 0.9],
        ['Argentinosaurus (Argentina lizard)', 36.6],
        ['Baryonyx (heavy claws)', 9.1],
        ['Brachiosaurus (arm lizard)', 30.5],
        ['Ceratosaurus (horned lizard)', 6.1],
        ['Coelophysis (hollow form)', 2.7],
        ['Compsognathus (elegant jaw)', 0.9],
        ['Deinonychus (terrible claw)', 2.7],
        ['Diplodocus (double beam)', 27.1],
        ['Dromicelomimus (emu mimic)', 3.4],
        ['Gallimimus (fowl mimic)', 5.5],
        ['Mamenchisaurus (Mamenchi lizard)', 21.0],
        ['Megalosaurus (big lizard)', 7.9],
        ['Microvenator (small hunter)', 1.2],
        ['Ornithomimus (bird mimic)', 4.6],
        ['Oviraptor (egg robber)', 1.5],
        ['Plateosaurus (flat lizard)', 7.9],
        ['Sauronithoides (narrow-clawed lizard)', 2.0],
        ['Seismosaurus (tremor lizard)', 45.7],
        ['Spinosaurus (spiny lizard)', 12.2],
        ['Supersaurus (super lizard)', 30.5],
        ['Tyrannosaurus (tyrant lizard)', 15.2],
        ['Ultrasaurus (ultra lizard)', 30.5],
        ['Velociraptor (swift robber)', 1.8]]
    );


    // Options
    var options_histogram = {
        fontName: 'tahoma',
        height: 400,
        fontSize: 12,
        chartArea: {
            left: '10%',
            width: '100%',
            height: 360
        },
        isStacked: true,
        tooltip: {
            textStyle: {
                fontName: 'tahoma',
                fontSize: 12
            }
        },
        vAxis: {
            title: 'Dinosaur length',
            titleTextStyle: {
                fontSize: 12,
                italic: false
            },
            gridlines:{
                color: '#e5e5e5',
                count: 10
            },
            minValue: 0
        },
        hAxis: {
            gridlines:{
                color: '#e5e5e5'
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
    var histogram = new google.visualization.Histogram($('#google-histogram')[0]);
    histogram.draw(data, options_histogram);
}


// Resize chart
// ------------------------------

$(function () {

    // Resize chart on sidebar width change and window resize
    $(window).on('resize', resize);
    $(".sidebar-control").on('click', resize);

    // Resize function
    function resize() {
        drawHistogram();
    }
});
