<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Shravan's Money Transfer</title>
</head>
<body>
<div class="row">
    <div class="col-xs-12 center-align login-box">
        <br/><p>Find out our best exchange rate</p>
        <p>(Base USD)</p>
        <br/><g:select id="currencyFrom" onchange="updateRates()" from="${data}" optionKey="${{ it.value }}" optionValue="${{ it.key }}" class="selection-drop-down-menu input-large col-xs-12" noSelection="['':'Please select your currency']" name="from" placeholder="From"/><br>
        <p id="rateCheck"></p>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 login-box">
        <hr>
        <h2 class="login-panel">Login</h2>

        <form action='/transaction/index' method='POST' id='loginForm' class='form-horizontal' autocomplete='off' novalidate="novalidate">
            <fieldset>

                <input class="input-large col-xs-12" name="username" type="email" placeholder="type username"/><br/>
                <input class="input-large col-xs-12" name="password" type="password" placeholder="type password"/>

                <div class="clearfix"></div>

                <div class="clearfix"></div>

                <button type="submit" id="submit" class="btn btn-primary col-xs-12">Login</button>

            </fieldset>
        </form>
        <hr>
        <a class="login-panel" href="${createLink(uri: '/register/register')}">Register with Facebook</a>
    </div>
</div>

<div class="row footer-alignment">
    <div class="col-xs-12">
        <div>&copy;<g:formatDate format="yyyy" date="${new Date()}"/>&nbsp;Shravan Kumar Madaan</div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        alert("heyyyy");
    });

    function updateRates() {
        $("#rateCheck").text("1 USD = "+ $("#currencyFrom").val() + " " + $("#currencyFrom option:selected").text());
    }
</script>
</body>
</html>
