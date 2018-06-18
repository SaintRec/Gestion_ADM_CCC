$(document).ready(function () {
    showGraph();
    showGraph1();
});

function showGraph() {
    {
        $.post("/db_data/producto.php",
            function (data) {
                var name = [];
                var marks = [];

                for (var i in data) {
                    name.push(data[i].student_name);
                    marks.push(data[i].marks);
                }

                var chartdata = {
                    labels: name,
                    datasets: [
                        {
                            label: 'Student Marks',
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
function showGraph1() {
    {
        $.post("/db_data/data.php",
            function (data) {
                var name = [];
                var marks = [];

                for (var i in data) {
                    name.push(data[i].year);
                    marks.push(data[i].purchase);
                }

                var chartdata = {
                    labels: name,
                    datasets: [
                        {
                            label: 'Student Marks',
                            backgroundColor: '#86ac81',
                            borderColor: '#86ac81',
                            hoverBackgroundColor: '#2efc3e',
                            hoverBorderColor: '#666666',
                            data: marks
                        }
                    ]
                };

                var graphTarget = $("#graphCanvas1");

                var barGraph = new Chart(graphTarget, {
                    type: 'bar',
                    data: chartdata
                });
            });
    }
}
