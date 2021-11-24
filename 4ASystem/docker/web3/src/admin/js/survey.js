$(function() {


    ceshis1();
    ceshis3();



    function ceshis1() {
        var myChart = echarts.init(document.getElementById('chart2'));

        var ydata = [{
                name: 'PHP',
                value: 18
            },
            {
                name: 'MySql',
                value: 16
            },
            {
                name: 'JAVA',
                value: 15
            },
            {
                name: 'C#',
                value: 14
            },
            {
                name: 'C++',
                value: 10
            },
            {
                name: 'Python',
                value: 7.9
            },
            {
                name: 'Linux',
                value: 6.7
            },
            {
                name: 'Html',
                value: 6
            },
            {
                name: 'CSS',
                value: 4.5
            },
            {
                name: 'Javascript',
                value: 3
            }
        ];
        var color = ["#8d7fec", "#5085f2", "#e75fc3", "#f87be2", "#f2719a", "#fca4bb", "#f59a8f", "#fdb301", "#57e7ec", "#cf9ef1"]
        var xdata = ['PHP', "MySql", "JAVA", "C#", 'C++', 'Python', 'Linux', 'Html', 'CSS', 'Javascript'];


        option = {
            /*backgroundColor: "rgba(255,255,255,1)",*/
            color: color,
            legend: {
                orient: "vartical",
                x: "left",
                top: "center",
                left: "53%",
                bottom: "0%",
                data: xdata,
                itemWidth: 8,
                itemHeight: 8,
                textStyle: {
                    color: '#000'
                },
                /*itemGap: 16,*/
                /*formatter:function(name){
                  var oa = option.series[0].data;
                  var num = oa[0].value + oa[1].value + oa[2].value + oa[3].value+oa[4].value + oa[5].value + oa[6].value + oa[7].value+oa[8].value + oa[9].value ;
                  for(var i = 0; i < option.series[0].data.length; i++){
                      if(name==oa[i].name){
                          return ' '+name + '    |    ' + oa[i].value + '    |    ' + (oa[i].value/num * 100).toFixed(2) + '%';
                      }
                  }
                }*/

                formatter: function(name) {
                    return '' + name
                }
            },
            series: [{
                type: 'pie',
                clockwise: false, //饼图的扇区是否是顺时针排布
                minAngle: 2, //最小的扇区角度（0 ~ 360）
                radius: ["20%", "60%"],
                center: ["30%", "45%"],
                avoidLabelOverlap: false,
                itemStyle: { //图形样式
                    normal: {
                        borderColor: '#ffffff',
                        borderWidth: 1,
                    },
                },
                label: {
                    normal: {
                        show: false,
                        position: 'center',
                        formatter: '{text|{b}}\n{c} ({d}%)',
                        rich: {
                            text: {
                                color: "#000",
                                fontSize: 14,
                                align: 'center',
                                verticalAlign: 'middle',
                                padding: 8
                            },
                            value: {
                                color: "#8693F3",
                                fontSize: 24,
                                align: 'center',
                                verticalAlign: 'middle',
                            },
                        }
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: 24,
                        }
                    }
                },
                data: ydata
            }]
        };
        myChart.setOption(option);

        setTimeout(function() {
            myChart.on('mouseover', function(params) {
                if (params.name == ydata[0].name) {
                    myChart.dispatchAction({
                        type: 'highlight',
                        seriesIndex: 0,
                        dataIndex: 0
                    });
                } else {
                    myChart.dispatchAction({
                        type: 'downplay',
                        seriesIndex: 0,
                        dataIndex: 0
                    });
                }
            });

            myChart.on('mouseout', function(params) {
                myChart.dispatchAction({
                    type: 'highlight',
                    seriesIndex: 0,
                    dataIndex: 0
                });
            });
            myChart.dispatchAction({
                type: 'highlight',
                seriesIndex: 0,
                dataIndex: 0
            });
        }, 1000);

        myChart.currentIndex = -1;

        setInterval(function() {
            var dataLen = option.series[0].data.length;

            // 取消之前高亮的图形
            myChart.dispatchAction({
                type: 'downplay',
                seriesIndex: 0,
                dataIndex: myChart.currentIndex
            });
            myChart.currentIndex = (myChart.currentIndex + 1) % dataLen;
            // 高亮当前图形
            myChart.dispatchAction({
                type: 'highlight',
                seriesIndex: 0,
                dataIndex: myChart.currentIndex
            });
        }, 1000);

        // 使用刚指定的配置项和数据显示图表。
        /*myChart.setOption(option);*/
        window.addEventListener("resize", function() {
            myChart.resize();
        });
    }

    function ceshis3() {
        var myChart = echarts.init(document.getElementById('chart4'));

        var option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    lineStyle: {
                        color: '#000'
                    }
                }
            },
            legend: {
                icon: 'rect',
                itemWidth: 14,
                itemHeight: 5,
                itemGap: 10,
                data: ['受理时长', '排队时长', '订单量', '客流量'],
                right: '10px',
                top: '0px',
                textStyle: {
                    fontSize: 12,
                    color: '#000'
                }
            },
            grid: {
                x: 40,
                y: 50,
                x2: 45,
                y2: 40
            },
            xAxis: [{
                type: 'category',
                boundaryGap: false,
                axisLine: {
                    lineStyle: {
                        color: '#57617B'
                    }
                },
                axisLabel: {
                    textStyle: {
                        color: '#000'
                    }
                },
                data: [
                    "12月\n01号",
                    "12月\n02号",
                    "12月\n03号",
                    "12月\n04号",
                    "12月\n05号",
                    "12月\n06号",
                    "12月\n07号",
                    "12月\n08号",
                    "12月\n09号",
                    "12月\n10号",
                    "12月\n11号",
                    "12月\n12号",
                    "12月\n13号",
                    "12月\n14号",
                    "12月\n15号",
                    "12月\n16号",
                    "12月\n17号",
                    "12月\n18号",
                    "12月\n19号",
                    "12月\n20号",
                    "12月\n21号",
                    "12月\n22号",
                    "12月\n23号",
                    "12月\n24号",
                    "12月\n25号",
                    "12月\n26号",
                    "12月\n27号",
                    "12月\n28号",
                    "12月\n29号",
                    "12月\n30号"
                ]
            }],
            yAxis: [{
                type: 'value',
                axisTick: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#57617B'
                    }
                },
                axisLabel: {
                    margin: 10,
                    textStyle: {
                        fontSize: 12
                    },
                    textStyle: {
                        color: '#000'
                    },
                    formatter: '{value}分'
                },
                splitLine: {
                    lineStyle: {
                        color: '#57617B'
                    }
                }
            }, {
                type: 'value',
                axisTick: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#57617B'
                    }
                },
                axisLabel: {
                    margin: 10,
                    textStyle: {
                        fontSize: 12
                    },
                    textStyle: {
                        color: '#fff'
                    },
                    formatter: '{value}个'
                },
                splitLine: {
                    show: false,
                    lineStyle: {
                        color: '#57617B'
                    }
                }
            }],
            series: [{
                name: '受理时长',
                type: 'line',
                smooth: true,
                lineStyle: {
                    normal: {
                        width: 2
                    }
                },
                yAxisIndex: 0,
                areaStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgba(185,150,248,0.3)'
                        }, {
                            offset: 0.8,
                            color: 'rgba(185,150,248,0)'
                        }], false),
                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                        shadowBlur: 10
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#B996F8'
                    }
                },
                data: [
                    "7.35",
                    "7.31",
                    "7.75",
                    "7.45",
                    "7.01",
                    "6.46",
                    "8.01",
                    "6.18",
                    "5.23",
                    "7.08",
                    "0.00",
                    "0.00",
                    "0.00",
                    "0.00",
                    "0.00",
                    "7.29",
                    "6.61",
                    "6.79",
                    "6.54",
                    "6.87",
                    "6.45",
                    "6.10",
                    "6.93",
                    "6.85",
                    "5.87",
                    "8.98",
                    "6.26",
                    "6.95",
                    "7.36",
                    "0.00"
                ],
            }, {
                name: '排队时长',
                type: 'line',
                smooth: true,
                lineStyle: {
                    normal: {
                        width: 2
                    }
                },
                yAxisIndex: 0,
                areaStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgba(3, 194, 236, 0.3)'
                        }, {
                            offset: 0.8,
                            color: 'rgba(3, 194, 236, 0)'
                        }], false),
                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                        shadowBlur: 10
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#03C2EC'
                    }
                },
                data: [
                    "2.00",
                    "1.50",
                    "2.98",
                    "2.01",
                    "1.39",
                    "2.09",
                    "5.99",
                    "3.02",
                    "2.51",
                    "4.61",
                    "2.44",
                    "1.51",
                    "3.88",
                    "7.67",
                    "0.25",
                    "5.70",
                    "1.76",
                    "3.78",
                    "4.10",
                    "6.02",
                    "3.93",
                    "1.93",
                    "5.10",
                    "3.89",
                    "2.78",
                    "5.30",
                    "6.67",
                    "5.65",
                    "12.59",
                    "0"
                ]
            }, {
                name: '订单量',
                type: 'line',
                smooth: true,
                lineStyle: {
                    normal: {
                        width: 2
                    }
                },
                yAxisIndex: 1,
                areaStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgba(218, 57, 20, 0.3)'
                        }, {
                            offset: 0.8,
                            color: 'rgba(218, 57, 20, 0)'
                        }], false),
                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                        shadowBlur: 10
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#DA3914'
                    }
                },
                data: [
                    "251",
                    "189",
                    "212",
                    "222",
                    "207",
                    "150",
                    "181",
                    "202",
                    "183",
                    "193",
                    "0",
                    "0",
                    "0",
                    "0",
                    "0",
                    "198",
                    "202",
                    "205",
                    "242",
                    "216",
                    "176",
                    "126",
                    "254",
                    "207",
                    "211",
                    "191",
                    "224",
                    "213",
                    "297",
                    "0"
                ]
            }, {
                name: '客流量',
                type: 'line',
                smooth: true,
                lineStyle: {
                    normal: {
                        width: 2
                    }
                },
                yAxisIndex: 1,
                areaStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgba(232, 190, 49, 0.3)'
                        }, {
                            offset: 0.8,
                            color: 'rgba(232, 190, 49, 0)'
                        }], false),
                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                        shadowBlur: 10
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#E8BE31'
                    }
                },
                data: [
                    "228",
                    "176",
                    "206",
                    "203",
                    "186",
                    "137",
                    "162",
                    "177",
                    "164",
                    "169",
                    "0",
                    "0",
                    "0",
                    "0",
                    "0",
                    "175",
                    "185",
                    "179",
                    "224",
                    "191",
                    "161",
                    "115",
                    "229",
                    "190",
                    "172",
                    "164",
                    "201",
                    "192",
                    "273",
                    "0"
                ]
            }]


        };
        /*var myChart = echarts.init(document.getElementById('channel_handle_detail'));
        myChart.clear();
        if(data.handleTimeData.length>0){
            myChart.setOption(option);
        }else{
            noDataTip($("#channel_handle_detail"));
        }*/
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize", function() {
            myChart.resize();
        });
    }



});