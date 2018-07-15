$(document).ready(function () {
    showGraph();
    showGraph1();
});
function showGraph() {
    {
        $.post("../db_data/todos.php",
            function (data) {
                var name = [];
                var marks = [];

                for (var i in data) {
                    name.push(data[i].name_m);
                    marks.push(data[i].Total);
                }

                var chartdata = {
                    labels: name,
                    datasets: [
                        {
                            label: 'Todas las marcas',
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas0");

                var barGraph = new Chart(graphTarget, {
                    type: 'bar',
                    data: chartdata
                });
            });
    }
}
function showGraph1() {
    {
        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 18;
        $.post("../db_data/todos.php",

            function (data) {
                var name = [];
                var marks = [];

                for (var i in data) {
                    name.push(data[i].name_m);
                    marks.push(data[i].Total);
                }

                var chartdata = {
                    labels: name,
                    datasets: [
                        {
                            label: 'Student Marks',
                            backgroundColor: [
                                "#FF6384",
                                "#63FF84",
                                "#FE9A2E",
                                "#81F781",
                                "#61380B",
                                "#0404B4",
                                "#F2F5A9"
                            ],
                            borderColor: '#E6E6E6',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas1");

                var pieChart = new Chart(graphTarget, {
                    type: 'pie',
                    data: chartdata
                });
            });
    }
}