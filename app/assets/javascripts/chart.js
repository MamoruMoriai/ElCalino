window.onload = function() {

//伝票別売上
var ctx = document.getElementById('sale_price').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: gon.date,
        datasets: [{
            label: "sale_price",
            data: gon.sale_price,
            borderColor: 'rgba(150, 250, 150, 1)',
            borderWidth: 5
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});

//日別売上
var ctx = document.getElementById('date_price').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: gon.date,
        datasets: [{
            label: "date_price",
            data: gon.date_price,
            borderColor: 'rgba(150, 250, 150, 1)',
            borderWidth: 5
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});

//テーブル別売上
var ctx = document.getElementById('table_price').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: gon.date,
        datasets: [{
            label: "table_price",
            data: gon.table_price,
            borderColor: 'rgba(150, 250, 150, 1)',
            borderWidth: 5
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});

};
