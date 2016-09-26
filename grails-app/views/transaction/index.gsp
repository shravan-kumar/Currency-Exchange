<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome Shravan's Money Transfer</title>
</head>

<body>
<div class="row">
    <div class="col-xs-12 login-box">

        <form action='/transaction/send' method='POST' id='loginForm'>
            <label>Currency From</label>
            <g:select id="currencyFrom" from="${data}" optionKey="${{ it.value }}" optionValue="${{ it.key }}"
                      class="selection-drop-down-menu input-large col-xs-12" name="from" placeholder="From"/><br><br>
            <label>Currency To</label>
            <g:select id="currencyTo" from="${data}" optionKey="${{ it.value }}" optionValue="${{ it.key }}"
                      class="selection-drop-down-menu input-large col-xs-12" name="to" placeholder="To"/><br><br>
            <label>Amount</label>
            <input class="input-large col-xs-12" onkeyup="checkForUrlText()" id="amount" name="howMuch" placeholder="How Much"/><br><br>
            <div id="amountReceived" style="display: none;">
                <label>Amount to be Received</label>
                <input id="amountToBeRecieved" class="input-large col-xs-12" disabled="true" name="howMuch" placeholder="How Much"/><br><br>
            </div>
            <br><br><label>Recipient Details</label><br>
            <label>Full Name</label>
            <input class="input-large col-xs-12" name="name" placeholder="Receiver Full Name"/><br>
            <label>Email</label>
            <input class="input-large col-xs-12" name="email" placeholder="Receiver Email"/><br>
            <label>Phone Number</label>
            <input class="input-large col-xs-12" name="phoneNumber" placeholder="Receiver Phone Number"/><br>

            <div class="clearfix"></div></br>
            <button type="submit" id="submit" class="btn btn-primary col-xs-12">Send</button>
        </form>
    </div>
</div>
<script>
    function checkForUrlText() {
        if ($("#amount").val() == '') {
            $("#amountReceived").css('display', 'none');
        } else {
            var amount = $("#amount").val();
            var rateOfCurrencyFrom = $("#currencyFrom").val();
            var rateOfCurrencyTo = $("#currencyTo").val();

            var amountToBeSend = (amount * rateOfCurrencyFrom);
            var amountToBeRecieved = (amountToBeSend * rateOfCurrencyTo);
            $("#amountToBeRecieved").val(amountToBeRecieved);
            $("#amountReceived").css('display', 'block');
        }
    }
</script>
</body>
</html>