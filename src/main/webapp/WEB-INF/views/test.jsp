<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
	 display: flex;
	 align-items: center;
	 justify-content: center;
	 height: 100vh;
	}
	#chart{
		position: relative;
		width: 50vw;
		height: 50vh;
	}
</style>
</head>
<body>
	<div id="chart">
	  <canvas id="myChart"></canvas>
	</div>
	<div id="chart">
	  <canvas id="myChart2"></canvas>
	</div>
	<div id="chart">
	  <canvas id="myChart3"></canvas>
	</div>
	<div id="chart">
	  <canvas id="myChart4"></canvas>
	</div>
	
	
	
<%-- *********** chart.js cdn ******************** --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js" 
integrity="sha512-GMGzUEevhWh8Tc/njS0bDpwgxdCJLQBWG3Z2Ct+JGOpVnEmjvNx6ts4v6A2XJf1HOrtOsfhv3hBKpK9kE5z8AQ==" 
crossorigin="anonymous" 
referrerpolicy="no-referrer">
</script>
<script type="text/javascript">

	//차트가져오기
	const ctx = document.getElementById("myChart").getContext("2d");




	//그라디언트만들기
	let gradient = ctx.createLinearGradient(0,0,0,400);
    gradient.addColorStop(0,'rgba(58,123,213,1)');
	gradient.addColorStop(1,'rgba(0,210,255,0.3)');


	//차트에 들어갈 변수생성
	const labels = ["2012","2013","2014","2015","2016","2017","2018","2019","2020"];
	
	const data = {
			labels,
			datasets: [
				{
				//여기서 labels배열에 담긴 순서대로 데이터가담긴다. 배열갯수를 맞춰야함
				data: [211, 326, 165, 350, 420, 370, 500, 375, 415],
				label: "마인크래프트 판매량",
				fill: true,
				backgroundColor: gradient,
                borderColor: "#fff",
                pointBackgroundColor: "rgb(189,195,199)",
                tension: 0.1,
			},
		],
	};
	const config = {
			type: "line",
			data: data,
			options: {
                radius:5,
                hitRadius:30,
                hoverRadius:12,
				responsive: true,
                animation:{
                    onComplete: () =>{
                        delayed =true;
                    },
                    delay : (context) =>{
                        let delay = 0;
                        if(context.type === "data" && context.mode === "default"){
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
				scales: {
					y:{ // 왼쪽 좌표에서 표현하고 싶은값을 여기서 구현해야 됨
						ticks: {
							callback: function(value, index){
								return '$' + value + "m";
							},
						},
					},
				},
			},
	};
	
	const myChart = new Chart(ctx, config);
	// *****************************************************
	//차트가져오기
	const ctx2 = document.getElementById("myChart2").getContext("2d");


	const config2 = {
			type: "polarArea",
			data: data,
			options: {
                radius:5,
                hitRadius:30,
                hoverRadius:12,
				responsive: true,
                animation:{
                    onComplete: () =>{
                        delayed =true;
                    },
                    delay : (context) =>{
                        let delay = 0;
                        if(context.type === "data" && context.mode === "default"){
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
				scales: {
					y:{ // 왼쪽 좌표에서 표현하고 싶은값을 여기서 구현해야 됨
						ticks: {
							callback: function(value, index){
								return '$' + value + "m";
							},
						},
					},
				},
			},
	};
	
	const myChart2 = new Chart(ctx2, config2);
	
	// *****************************************************
	//차트가져오기
	const ctx3 = document.getElementById("myChart3").getContext("2d");


	const config3 = {
			type: "bar",
			data: data,
			options: {
                radius:5,
                hitRadius:30,
                hoverRadius:12,
				responsive: true,
                animation:{
                    onComplete: () =>{
                        delayed =true;
                    },
                    delay : (context) =>{
                        let delay = 0;
                        if(context.type === "data" && context.mode === "default"){
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
				scales: {
					y:{ // 왼쪽 좌표에서 표현하고 싶은값을 여기서 구현해야 됨
						ticks: {
							callback: function(value, index){
								return '$' + value + "m";
							},
						},
					},
				},
			},
	};
	
	const myChart3 = new Chart(ctx3, config3);
	/* ************************************************** */
            var context = document
                .getElementById('myChart4')
                .getContext('2d');
            var myChart4 = new Chart(context, {
                type: 'doughnut', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                        //x 축
                        '1','2','3','4','5','6','7'
                    ],
                    datasets: [
                        { //데이터
                            label: '나죽어..', //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [
                                21,19,25,20,23,26,25 //x축 label에 대응되는 데이터 값
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                //경계선 색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1 //경계선 굵기
                        } ,
                        {
                            label: 'test2',
                            fill: false,
                            data: [
                                8, 34, 12, 24
                            ],
                            backgroundColor: 'rgb(157, 109, 12)',
                            borderColor: 'rgb(157, 109, 12)'
                        } 
                    ]
                },
                options: {
                    scales: {
                        yAxes: [
                            {
                                ticks: {
                                    beginAtZero: true
                                }
                            }
                        ]
                    }
                }
            });
        </script>
    </body>
</html>