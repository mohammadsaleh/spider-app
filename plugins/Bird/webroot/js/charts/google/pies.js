// Sliced 3D donut chart
// ------------------------------
// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawExploded3d);


// Chart settings
function drawExploded3d() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Language', 'Speakers (in millions)'],
        ['Assamese', 13],
        ['Bengali', 83],
        ['Gujarati', 46],
        ['Hindi', 90],
        ['Kannada', 38],
        ['Maithili', 20],
        ['Malayalam', 33],
        ['Marathi', 72],
        ['Oriya', 33],
        ['Punjabi', 29],
        ['Tamil', 61],
        ['Telugu', 74],
        ['Urdu', 52]
    ]);


    // Options
    var options = {
        fontName: 'tahoma',
        height: 220,
        
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        },
        is3D: true,
        pieSliceText: 'label',
        slices: {  
            2: {offset: 0.15},
            8: {offset: 0.1},
            10: {offset: 0.15},
            11: {offset: 0.1}
        }
    };


    // Instantiate and draw our chart, passing in some options.
    var pie_3d_exploded = new google.visualization.PieChart($('#google-3d-exploded')[0]);
    pie_3d_exploded.draw(data, options);
}


// Donut chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawDonut);


// Chart settings
function drawDonut() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Work',     11],
        ['Eat',      2],
        ['Commute',  2],
        ['Watch TV', 2],
        ['Sleep',    7]
    ]);


    // Options
    var options_donut = {
        fontName: 'tahoma',
        pieHole: 0.55,
        height: 220,
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        }
    };
    

    // Instantiate and draw our chart, passing in some options.
    var donut = new google.visualization.PieChart($('#google-donut')[0]);
    donut.draw(data, options_donut);
}


// Sliced donut chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawExplodedDonut);


// Chart settings
function drawExplodedDonut() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Language', 'Speakers (in millions)'],
        ['Assamese', 13],
        ['Bengali', 83],
        ['Gujarati', 46],
        ['Hindi', 90],
        ['Kannada', 38],
        ['Maithili', 20],
        ['Malayalam', 33],
        ['Marathi', 72],
        ['Oriya', 33],
        ['Punjabi', 29],
        ['Tamil', 61],
        ['Telugu', 74],
        ['Urdu', 52]
    ]);


    // Options
    var options_donut_exploded = {
        fontName: 'tahoma',
        height: 220,
        
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        },
        pieHole: 0.5,
        pieSliceText: 'label',
        slices: {  
            2: {offset: 0.15},
            8: {offset: 0.1},
            10: {offset: 0.15},
            11: {offset: 0.1}
        }
    };


    // Instantiate and draw our chart, passing in some options.
    var donut_exploded = new google.visualization.PieChart($('#google-donut-exploded')[0]);
    donut_exploded.draw(data, options_donut_exploded);
}


// Rotated donut chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawDonutRotated);


// Chart settings
function drawDonutRotated() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Work',     11],
        ['Eat',      2],
        ['Commute',  2],
        ['Watch TV', 2],
        ['Sleep',    7]
    ]);


    // Options
    var options_donut_rotate = {
        fontName: 'tahoma',
        pieHole: 0.55,
        pieStartAngle: 180,
        height: 220,
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        }
    };


    // Instantiate and draw our chart, passing in some options.
    var donut_rotate = new google.visualization.PieChart($('#google-donut-rotate')[0]);
    donut_rotate.draw(data, options_donut_rotate);
}


// Pie chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawPie);


// Chart settings    
function drawPie() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Work',     11],
        ['Eat',      2],
        ['Commute',  2],
        ['Watch TV', 2],
        ['Sleep',    7]
    ]);

    // Options
    var options_pie = {
        fontName: 'tahoma',
        height: 220,
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        }
    };
    

    // Instantiate and draw our chart, passing in some options.
    var pie = new google.visualization.PieChart($('#google-pie')[0]);
    pie.draw(data, options_pie);
}


/* ------------------------------------------------------------------------------
 *
 *  # Google Visualization - 3D pie
 *
 *  Google Visualization 3D pie chart demonstration
 *
 *  Version: 1.0
 *  Latest update: August 1, 2015
 *
 * ---------------------------------------------------------------------------- */


// 3D pie chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawPie3d);


// Chart settings
function drawPie3d() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Work',     11],
        ['Eat',      2],
        ['Commute',  2],
        ['Watch TV', 2],
        ['Sleep',    7]
    ]);


    // Options
    var options_pie_3d = {
        fontName: 'tahoma',
        is3D: true,
        height: 220,
        
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        }
    };


    // Instantiate and draw our chart, passing in some options.
    var pie_3d = new google.visualization.PieChart($('#google-pie-3d')[0]);
    pie_3d.draw(data, options_pie_3d);
}


// Diff pie chart
// ------------------------------

// Initialize chart
google.load("visualization", '1.1', {packages:['corechart']});
google.setOnLoadCallback(drawChart);


// Chart settings
function drawChart() {

    // Old data
    var oldData = google.visualization.arrayToDataTable([
        ['Major', 'Degrees'],
        ['Business', 256070], ['Education', 108034],
        ['Social Sciences & History', 127101], ['Health', 81863],
        ['Psychology', 74194]
    ]);

    // New data
    var newData = google.visualization.arrayToDataTable([
        ['Major', 'Degrees'],
        ['Business', 358293], ['Education', 101265],
        ['Social Sciences & History', 172780], ['Health', 129634],
        ['Psychology', 97216]
    ]);


    // Options
    var options = {
        fontName: 'tahoma',
        height: 220,
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        },
        diff: {
            innerCircle: {
                radiusFactor: 0.8
            }
        }
    };


    // Attach chart to the DOM element
    var chartRadius = new google.visualization.PieChart($('#google-pie-diff-radius')[0]);

    // Set data
    var diffData = chartRadius.computeDiff(oldData, newData);

    // Draw our chart, passing in some options
    chartRadius.draw(diffData, options);
}


// Sliced pie chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawExplodedPie);


// Chart settings
function drawExplodedPie() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Language', 'Speakers (in millions)'],
        ['Assamese', 13],
        ['Bengali', 83],
        ['Gujarati', 46],
        ['Hindi', 90],
        ['Kannada', 38],
        ['Maithili', 20],
        ['Malayalam', 33],
        ['Marathi', 72],
        ['Oriya', 33],
        ['Punjabi', 29],
        ['Tamil', 61],
        ['Telugu', 74],
        ['Urdu', 52]
    ]);


    // Options
    var options = {
        fontName: 'tahoma',
        height: 220,
        
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        },
        pieSliceText: 'label',
        slices: {
            2: {offset: 0.15},
            8: {offset: 0.1},
            10: {offset: 0.15},
            11: {offset: 0.1}
        }
    };


    // Instantiate and draw our chart, passing in some options.
    var pie_exploded = new google.visualization.PieChart($('#google-pie-exploded')[0]);
    pie_exploded.draw(data, options);
}


// Rotated pie chart
// ------------------------------

// Initialize chart
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawPieRotated);


// Chart settings
function drawPieRotated() {

    // Data
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Work',     11],
        ['Eat',      2],
        ['Commute',  2],
        ['Watch TV', 2],
        ['Sleep',    7]
    ]);


    // Options
    var options_pie_rotate = {
        fontName: 'tahoma',
        pieStartAngle: 180,
        height: 220,
        chartArea: {
            left: 50,
            width: '100%',
            height: '100%'
        }
    };


    // Instantiate and draw our chart, passing in some options.
    var pie_rotate = new google.visualization.PieChart($('#google-pie-rotate')[0]);
    pie_rotate.draw(data, options_pie_rotate);
}