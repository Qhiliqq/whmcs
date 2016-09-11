<form method="post" action="clientarea.php?action=productdetails" class="form-horizontal">
    <input type="hidden" name="id" value={$serviceid}/>
    <input type="hidden" name="modop" value="custom" />
    <input type="hidden" name="a" value="pwreset" />
    <div class="form-group text-left">
        <div class="col-sm-6">
            <label class="control-label" for="inputPassword">{$vars['_lang']['pw'];}</label>
        </div>
        <div class="col-sm-6">
            <input type="password" id="inputPassword" name="password" class="form-control">
        </div>
    </div>
    <div class="form-group text-left">
        <div class="col-sm-6">
            <label class="control-label" for="inputPasswordRepeat">{$vars['_lang']['pwr'];}</label>
        </div>
        <div class="col-sm-6">
            <input type="password" id="inputPasswordRepeat" name="passwordRepeat" class="form-control">
        </div>
    </div>
    <div class="text-center">
        <input type="submit" name="msettings" value="Reset" class='btn btn-warning'>
    </div>
</form>
