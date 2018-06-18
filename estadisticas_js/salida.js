$(document).ready(function () {
    $.ajax({
        url: "/db_data/data.php/",
        success: function (data) {
            var player = [];
            var score = [];

            for (var i in data) {
                player.push("Player " + data[i].year);
                score.push(data[i].purchase);
            }

            var chartdata = {
                labels: player,
                datasets: [
                    {
                        label: 'Player Score',
                        backgroundColor: '#49e2ff',
                        borderColor: '#46d5f1',
                        hoverBackgroundColor: '#CCCCCC',
                        hoverBorderColor: '#666666',
                        data: score
                    }
                ]
            };

            var ctx = $("#mycanvas");

            var barGraph = new Chart(ctx, {
                type: 'bar',
                data: chartdata
            });
        },
        error: function (data) {
            console.log(data);
        }
    });
});