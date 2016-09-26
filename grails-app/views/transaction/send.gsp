<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Shravan's Money Transfer</title>
</head>

<body>
<div class="row">
    <div class="col-xs-12 login-box center-align">
        <h3>Thank you for using Shravan's Money Tranfer.</h3><br/><br/>
        <p>We have notified Mr ${name?:'Phil'} regarding your transaction through email/text message.</p><br/>
        <p>We will keep you updated for the progress of your money.</p><br/><br/>
        <hr>

        <div class="center-align">
            <g:link controller="login" action="index">
                <button type="button">Log out</button>
            </g:link>
        </div>
    </div>
</div>

</body>
</html>
