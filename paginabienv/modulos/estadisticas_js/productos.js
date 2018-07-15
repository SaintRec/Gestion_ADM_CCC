$(document).ready(function () {
    showGraph();
    showGraph1();
});

function showGraph() {
    {
        $.post("../db_data/producto.php",
            function (data) {
                var name = [];
                var marks = [];

                for (var i in data) {
                    name.push(data[i].name_v);
                    marks.push(data[i].cantidad);
                }

                var chartdata = {
                    labels: name,
                    datasets: [
                        {
                            label: 'Powerade',
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas");

                var barGraph = new Chart(graphTarget, {
                    type: 'bar',
                    data: chartdata
                });
            });
    }
}

