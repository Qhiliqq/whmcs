<div id="tabsEasyWi">
    <ul class="nav nav-tabs" data-tabs="tabs">
        <li id="tab1nav" class="active"><a href="#tab-easy-wi-1" data-toggle="tab">{$vars['_lang']['information'];}</a></li>
        <li id="tab2nav"><a href="#tab-easy-wi-2" data-toggle="tab">{$vars['_lang']['login'];}</a></li>
        <li id="tab3nav"><a href="#tab-easy-wi-3" data-toggle="tab">{$vars['_lang']['rlogin'];}</a></li>
    </ul>
</div>
<br>
<div id="tab-easy-wi-1" class="tab-content-easy-wi">
    {foreach name=outer item=customField from=$customFields}
        <div class="form-group text-left">
            <div class="col-sm-6">
                <label class="control-label" for="customfield{$customfield.id}">{$customField.description}</label>
            </div>
            {$customField.value}
        </div>
    {/foreach}
</div>
<div id="tab-easy-wi-2" class="tab-content-easy-wi">
    <div class="form-group text-left">
        <div class="col-sm-7">
            <label class="control-label" for="customfield{$customfield.id}">{$vars['_lang']['loginurl'];}</label>
        </div>
        <div>
            <a href="{$EasyWiLink}" target="_blank">{$EasyWiLink}</a>
        </div>
        <div class="col-sm-6">
            <label class="control-label" for="customfield{$customfield.id}">{$vars['_lang']['user'];}</label>
        </div>
        {$vars.clientsdetails.email}
    </div>
</div>
<div id="tab-easy-wi-3" class="tab-content-easy-wi">
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
</div>
{literal}
<script>

    jQuery(document).ready(function(){

        // Tabs Changer
        // ===============================
        //Default Action
        jQuery(".tab-content-easy-wi").hide(); //Hide all content
        if (jQuery(location).attr('hash').substr(1)!="") {
            var activeTab = jQuery(location).attr('hash');
            jQuery("ul").find('li').removeClass('open');
            jQuery("ul.nav li").removeClass("active"); //Remove any "active" class
            jQuery(activeTab+"nav").addClass("active");
            jQuery(activeTab).show();
        } else {
            jQuery("#tabsEasyWi ul.nav .nav-tabs li:first").addClass("active").show(); //Activate first tab
            jQuery(".tab-content-easy-wi:first").show(); //Show first tab content
        }

        //On Click Event
        jQuery("#tabsEasyWi ul.nav li").click(function() {
            jQuery("ul").find('li').removeClass('open');
            jQuery("ul.nav li").removeClass("active"); //Remove any "active" class
            jQuery(this).addClass("active"); //Add "active" class to selected tab
            var activeTab = jQuery(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
            if (activeTab.substr(0,1)=="#" && activeTab.substr(1)!="") { //Determine if a tab or link
                jQuery(".tab-content-easy-wi").hide(); //Hide all tab content
                jQuery(activeTab).fadeIn(); //Fade in the active content
                return false;
            } else {
                return true; // If link allow redirect
            }
        });

    });
</script>
{/literal}
