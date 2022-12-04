<%-- 
    Document   : quizhandle
    Created on : Jul 15, 2022, 8:47:09 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <title>eLEARNING</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/quizreview.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <style>
            /* CSS */
            .button-64 {
                align-items: center;
                background-image: linear-gradient(144deg,#AF40FF, #5B42F3 50%,#00DDEB);
                border: 0;
                border-radius: 8px;
                box-shadow: rgba(151, 65, 252, 0.2) 0 15px 30px -5px;
                box-sizing: border-box;
                color: #FFFFFF;
                display: flex;
                font-family: Phantomsans, sans-serif;
                font-size: 14px;
                justify-content: center;
                line-height: 0.5em;
                max-width: 60px;
                min-width: 100px;
                padding: 3px;
                text-decoration: none;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
                white-space: nowrap;
                cursor: pointer;
                text-align: center;
            }

            .button-64:active,
            .button-64:hover {
                outline: 0;
            }

            .button-64 span {
                background-color: rgb(5, 6, 45);
                padding: 16px 10px;
                border-radius: 6px;
                width: 100%;
                height: 100%;
                transition: 300ms;
            }

            .button-64:hover span {
                background: none;
            }

            .number-question{
                margin-bottom: 15px;
            }

            @media (min-width: 768px) {
                .button-64 {
                    font-size: 20px;
                    min-width: 150px;
                }
            }

            #sub{
                padding: 8px;
                border-radius: 5px;
                border: none;
                background-image: linear-gradient(144deg,#AF40FF, #5B42F3 50%,#00DDEB);
                color: white;

            }
            #sub:hover{
                transform: scale(1.1);
            }
            .hidden {
                display: none;
                visibility: hidden;
            }
        </style>
    </head>
    <body>
        <c:set var="quiz" value="${requestScope.quiz}" />
        <c:set var="questions" value="${requestScope.questions}" />
        <c:set var="check" value="${requestScope.choose}" />
        <c:set var="alphabet" value="ABCDEFGHIJKLMNOPQRSTUVWXYZ" />
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <br>
                <br>
                <h2>Quiz Practice: ${quiz.name}</h2>
            <hr>
            <br>
            <br>

            <div class="row">
                <div class="col-lg-7 col-md-12 bg-light" style="padding: 30px">

                    <form id="quizForm" action="takequiz" method="post">
                        <input type="hidden" name="quiz" value="${quiz.id}">
                        <div class="index" ></div>
                        <div id="q1" class="">
                            <div class="info">
                                <br>
                                <h4 id="questionPos">Question: <span id="curQues">1</span></h4>
                                <div class="button">
                                    <c:if test="${questions.size()!=1}">
                                        <button class="button-36 hidden" id="previous" type="button" onclick="preQuestion(); autoSave()"> < Pre </button>
                                        <button class="button-36" id="next" type="button" onclick="nextQuestion(); autoSave()">Next ></button>
                                    </c:if>
                                </div>
                            </div>
                            <div class="content">
                                <c:forEach items="${questions}" var="i" varStatus="stt">
                                    <div class="">
                                        <div class="${stt.index == 0 ? 'quiz show' : 'quiz hidden'}">

                                            <div class="qtext">
                                                <input type="hidden" name="question${stt.index}" value="${i.id}" />
                                                ${i.content}
                                            </div>
                                            <hr>

                                            <ul class="">
                                                <c:if test="${i.answers.size()>0}">
                                                    <c:forEach begin="0" end="${i.answers.size()-1}" var="j">
                                                        <c:set var="flag"  value="${false}"/>

                                                        <c:if test="${check.size()>0}">
                                                            <c:forEach begin="0" end="${check.size()-1}" var="k">
                                                                <div style="display: none">${check.get(k).id==i.answers.get(j).id?(flag=true):""}</div>
                                                            </c:forEach>  
                                                        </c:if>

                                                        <li class="option-item" style="list-style-type: none">
                                                            <div class="cate-card">
                                                                <label class="cate-item">
                                                                    <input onclick="countcheck()" type="checkbox" id="option${i.answers.get(j).id}" ${flag?"checked":""} name="answer${stt.index}" value="${i.answers.get(j).id}"/>
                                                                    &nbsp;<span>${alphabet.charAt(j)}. ${i.answers.get(j).option}</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </c:forEach>
                                                </c:if>
                                            </ul>

                                        </div>
                                    </div>

                                </c:forEach>
                            </div>
                        </div>


                        <br/>
                        <br/>
                        <!--<div data-toggle="modal" data-target="#myModal" class="button-64 open-modal-btn" onclick="autoSave();" ><span>submit</span></div>-->


                    </form>

                </div>
                <div class="col-lg-1 col-md-12"></div>
                <div class="col-lg-4 col-md-12 bg-light" style="padding: 30px">
                    <!--<hr>-->
                    <h6>Quiz navigation</h6>
                    <br>
                    <div class="pagination-bx rounded-sm gray clearfix">
                        <ul class="pagination row">      
                            <c:forEach  items="${questions}" var="i" varStatus="stt">
                                <input id="${stt.index}" type="hidden" value="${stt.index}">
                                <li   class="col-sm-2 number-question page-item"><a id="k${stt.index}"  class="${stt.index == 0 ? 'pageI active-page' : 'pageI inactive-page'} page-link" onclick="chooseQuestion('${stt.index}'); autoSave()"> ${stt.index+1}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="quiz_timer">
                        <!--<i class="fa-solid fa-clock"></i>-->
                        <h5 id="TimeSpan"><i class="fa-solid fa-clock"></i> Time remaining: <span id="timeDisplay" ><span id="hour"></span>:<span id="min"></span>:<span id="sec"></span></span>  </h5>
                    </div>

                    <!--<a style="color: #fd647a;" onclick="autoSave(); myFunction()">Finish attempt...</a>-->
                    <!--<button onclick="autoSave(); myFunction()" style="color: ">Finish attemp...</button>-->
                    <!--<div data-toggle="modal" data-target="#myModal"--> 
                    <!--class="btn btn-secondary open-modal-btn" onclick="autoSave();" ><span>Finish attemp..</span></div>-->
                    <button type="button" class="btn btn-secondary" data-toggle="modal" 
                            data-target="#myModal" onclick="autoSave(); finish()">Finish attemp..</button>

                </div>
            </div>

        </div>



<!--        <div style="top: 150px" class="modal fade" id="myModal">
            <div style="max-width: 500px"class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="columns">
                                <ul class="price">
                                    <li style="background-color: #D2691E; color: white;"> <span id="total"> </span> /<span> ${questions.size()} </span></li>
                                    <li class="grey">do you want submit</li>
                                    <li> <button id="sub" onclick="finish();">comfirm</button></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                     Modal footer 
                    <div class="modal-footer col-12">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>-->

        <!-- Modal -->
<!--        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Submit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Do you want to submit?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>                   -->


        <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
        <script>
                                        function color() {
                                            var ids = [];
                                            var inputs = document.querySelectorAll("input[type='checkbox']");
                                            for (let i = 0; i < inputs.length; i++) {
                                                if (inputs[i].checked == true) {
                                                    var name = inputs[i].name;
                                                    var id = name.replace("answer", "");
                                                    ids.push(parseInt(id));

                                                }
                                            }
                                            var checked = [];
                                            var j = 0;
                                            for (let i = 0; i < ids.length; i++) {
                                                if (checking(checked, ids[i])) {
                                                    checked[j] = ids[i];
                                                    console.log(ids[i]);
                                                    j++;
                                                }
                                            }
//              var inputs = document.querySelectorAll("input[type='checkbox']");
                                            for (let i = 0; i < size; i++) {
                                                if (!checking(checked, i)) {
                                                    var x = document.getElementById("k" + i);
                                                    x.style.backgroundColor = 'yellow';
                                                } else {
                                                    var note = document.getElementById("k" + i);

                                                    note.style.backgroundColor = '#f6f7f8';
                                                }
                                            }
                                            var total = checked.length.toString();
                                            return total;
                                        }

                                        function countcheck() {
                                            color();
                                            var number = document.getElementById("total");
                                            number.innerHTML = color();
                                        }

                                        function checking(arr, x) {
                                            for (let i = 0; i < arr.length; i++) {
                                                if (arr[i] === x) {
                                                    return false;
                                                }
                                            }
                                            return true;
                                        }

                                        var size = parseInt(${questions.size()});

                                        function autoSave() {
                                            var frm = $('#quizForm');

                                            $.ajax({
                                                type: frm.attr('method'),
                                                url: '/codeIter4/autosubmit',
                                                data: frm.serialize(),
                                                success: function (data) {
                                                    console.log("ok");
                                                }
                                            });
                                        }

                                        var questions = document.getElementsByClassName('quiz');
                                        var currentIndex;
                                        var activePage;
                                        var preButton = document.getElementById('previous');
                                        var nextButton = document.getElementById('next');
                                        var currentText = document.getElementById('curQues');
                                        var pages = document.getElementsByClassName('pageI');
                                        function chooseQuestion(id) {
                                            var currentQuestion = document.getElementsByClassName('show')[0];
                                            for (var i = 0; i < questions.length; i++) {
                                                if (questions[i] === currentQuestion) {
                                                    currentIndex = i;
                                                    break;
                                                }
                                            }
                                            pages[currentIndex].className = pages[currentIndex].className.replace('active-page', 'inactive-page');
                                            questions[currentIndex].className = questions[currentIndex].className.replace('show', 'hidden');
                                            var x = document.getElementById(id).value;
                                            currentIndex = parseInt(x);


                                            pages[currentIndex].className = pages[currentIndex].className.replace('inactive-page', 'active-page');
                                            questions[currentIndex].className = questions[currentIndex].className.replace('hidden', 'show');
                                            if (currentIndex === 0) {
                                                preButton.className = 'hidden';
                                                nextButton.className = 'show';
                                            } else if (currentIndex === questions.length - 1) {
                                                preButton.className = 'show';
                                                nextButton.className = 'hidden';
                                            } else {
                                                preButton.className = 'show';
                                                nextButton.className = 'show';
                                            }
                                            currentText.textContent = currentIndex + 1;
                                        }
                                        function nextQuestion() {
                                            var currentQuestion = document.getElementsByClassName('show')[0];
                                            for (var i = 0; i < questions.length; i++) {
                                                if (questions[i] === currentQuestion) {
                                                    currentIndex = i;
                                                    break;
                                                }
                                            }

                                            pages[currentIndex].className = pages[currentIndex].className.replace('active-page', 'inactive-page');
                                            questions[currentIndex].className = questions[currentIndex].className.replace('show', 'hidden');

                                            currentIndex = currentIndex + 1;
                                            pages[currentIndex].className = pages[currentIndex].className.replace('inactive-page', 'active-page');
                                            questions[currentIndex].className = questions[currentIndex].className.replace('hidden', 'show');
                                            if (currentIndex === 0) {
                                                preButton.className = 'hidden';
                                                nextButton.className = 'show';
                                            } else if (currentIndex === questions.length - 1) {
                                                preButton.className = 'show';
                                                nextButton.className = 'hidden';
                                            } else {
                                                preButton.className = 'show';
                                                nextButton.className = 'show';
                                            }
                                            currentText.textContent = currentIndex + 1;

                                        }

                                        function preQuestion() {
                                            var currentQuestion = document.getElementsByClassName('show')[0];
                                            for (var i = 0; i < questions.length; i++) {
                                                if (questions[i] === currentQuestion) {
                                                    currentIndex = i;
                                                    break;
                                                }
                                            }
                                            pages[currentIndex].className = pages[currentIndex].className.replace('active-page', 'inactive-page');
                                            questions[currentIndex].className = questions[currentIndex].className.replace('show', 'hidden');

                                            currentIndex = currentIndex - 1;
                                            pages[currentIndex].className = pages[currentIndex].className.replace('inactive-page', 'active-page');
                                            questions[currentIndex].className = questions[currentIndex].className.replace('hidden', 'show');
                                            if (currentIndex === 0) {
                                                preButton.className = 'hidden';
                                                nextButton.className = 'show';
                                            } else if (currentIndex === questions.length - 1) {
                                                preButton.className = 'show';
                                                nextButton.className = 'hidden';
                                            } else {
                                                preButton.className = 'show';
                                                nextButton.className = 'show';
                                            }
                                            currentText.textContent = currentIndex + 1;
                                        }
                                        function resetTime() {
                                            localStorage.clear();
                                        }
                                        function submitBtn() {
                                            resetTime();
                                            document.getElementById('quizForm').submit();
                                        }

                                        function finish() {
                                            resetTime();
                                            document.getElementById('quizForm').submit();
                                            resetTime();
                                        }
                                        var duration = parseInt(${sessionScope.doingQuiz.quiz.duration}) * 60;

                                        function resetTime() {
                                            localStorage.clear();
                                        }
                                        var today = new Date();
                                        var minutesLabel = document.getElementById("min");
                                        var secondsLabel = document.getElementById("sec");
                                        var hoursLabel = document.getElementById("hour");
                                        var totalSecond;

                                        var startMilisecond = parseInt(${sessionScope.doingQuiz.time});

                                        function setTime() {
                                            var today2 = new Date();
                                            var presentMilisecond = today2.getTime();
                                            totalSecond = duration - ((presentMilisecond - startMilisecond) / 1000);
                                            displayTime();
                                        }

                                        setInterval(autoSubmit, 1000);

                                        function autoSubmit() {
                                            if (totalSecond <= 0) {
                                                resetTime();
                                                document.getElementById('quizForm').submit();
                                                resetTime();
                                            }
                                        }

                                        function pad(val) {
                                            var valString = val + "";
                                            if (valString.length < 2) {
                                                return "0" + valString;
                                            } else {
                                                return valString;
                                            }
                                        }
                                        setInterval(setTime, 100);

                                        function displayTime() {
                                            var totalMinute = (totalSecond / 60) % 60;
                                            var totalHour = totalSecond / 60 / 60;
                                            var totalSec = totalSecond % 60;
                                            secondsLabel.innerHTML = pad(parseInt(totalSec));
                                            minutesLabel.innerHTML = pad(parseInt(totalMinute));
                                            hoursLabel.innerHTML = pad(parseInt(totalHour));

                                        }


                                        function confirmSubmit() {
                                            var result = confirm("Do you want to submit?");
                                            return result;
                                        }
        </script>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
