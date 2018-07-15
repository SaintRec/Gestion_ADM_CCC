$(document).ready(function () {
    showGraph2();
    showGraph3();
    showGraph4();
});

function showGraph2() {
    {
        $.post("../db_data/entradas.php",
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
                            label: 'Fanta',
                            backgroundColor: '#F99500',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas2");

                var barGraph = new Chart(graphTarget, {
                    type: 'bar',
                    data: chartdata
                });
            });
    }
}
function showGraph3() {
    {
        $.post("../db_data/delvalle.php",
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
                            label: 'Del Vallle',
                            backgroundColor: '#6EC13A',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas3");

                var barGraph = new Chart(graphTarget, {
                    type: 'bar',
                    data: chartdata
                });
            });
    }
}
function showGraph4() {
    {
        $.post("../db_data/cocac.php",
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
                            label: 'Coca Cola',
                            backgroundColor: '#fe001a',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas4");

                var barGraph = new Chart(graphTarget, {
                    type: 'bar',
                    data: chartdata
                });
            });
    }
}
