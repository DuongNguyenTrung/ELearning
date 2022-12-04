  // Worldwide Sales Chart
  var ctx1 = $("#trend_order").get(0).getContext("2d");
  var trendByDateMon = document.getElementById("trendByDateMon").value;
var trendByDateTue = document.getElementById("trendByDateTue").value;
var trendByDateFri = document.getElementById("trendByDateFri").value;
var trendByDateThu = document.getElementById("trendByDateThu").value;
var trendByDateSat = document.getElementById("trendByDateSat").value;
var trendByDateSun = document.getElementById("trendByDateSun").value;
var trendByDateWed = document.getElementById("trendByDateWed").value;
  var trendSucessByDateMon = document.getElementById("trendSucessByDateMon").value;
var trendSucessByDateTue = document.getElementById("trendSucessByDateTue").value;
var trendSucessByDateFri = document.getElementById("trendSucessByDateFri").value;
var trendSucessByDateThu = document.getElementById("trendSucessByDateThu").value;
var trendSucessByDateSat = document.getElementById("trendSucessByDateSat").value;
var trendSucessByDateSun = document.getElementById("trendSucessByDateSun").value;
var trendSucessByDateWed = document.getElementById("trendSucessByDateWed").value;
  var myChart1 = new Chart(ctx1, {
      type: "bar",
      data: {
          labels: ["","Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
          datasets: [{
                  label: "Total",
                  data: [0,parseInt(trendByDateMon), parseInt(trendByDateTue), parseInt(trendByDateWed)
                      , parseInt(trendByDateThu), parseInt(trendByDateFri), parseInt(trendByDateSat), parseInt(trendByDateSun)],
                  backgroundColor: "#06BBCC"
              },
              {
                  label: "Success",
                  data: [0,parseInt(trendSucessByDateMon), parseInt(trendSucessByDateTue), parseInt(trendSucessByDateWed)
                      , parseInt(trendSucessByDateThu), parseInt(trendSucessByDateFri), parseInt(trendSucessByDateSat), parseInt(trendSucessByDateSun)],
                  backgroundColor: "rgba(0, 156, 255, .5)"
              }
          ]
          },
      options: {
          responsive: true
      }
  });