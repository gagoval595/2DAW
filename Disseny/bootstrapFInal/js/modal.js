document.addEventListener("DOMContentLoaded", function () {
    var ctx = document.getElementById('estadistica').getContext('2d');
    var estadistica = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['Àfrica', 'Asia', 'Amèrica'],
            datasets: [{
                data: [3, 6, 1],
                backgroundColor: [
                    '#3E95CD',
                    '#8E5EA2',
                    '#3CBA9F'
                ]
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            }
        }
    });
});
