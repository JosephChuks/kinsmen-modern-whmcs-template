                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-lg-none sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <footer id="footer" class="footer">
        <div class="admin-content-padding">
            <div class="d-flex flex-column flex-lg-row align-items-center justify-content-between">
                <ul class="nav justify-content-center justify-content-lg-start mb-lg-0 mt-1">
                    {include file="$template/includes/social-accounts.tpl"}

                    {if $languagechangeenabled && count($locales) > 1 || $currencies}
                        <li class="list-inline-item">
                            <button type="button" class="btn" data-toggle="modal" data-target="#modalChooseLanguage">
                                <div class="d-inline-block align-middle">
                                    <div class="iti-flag {if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}"></div>
                                </div>
                                {$activeLocale.localisedName}
                                /
                                {$activeCurrency.prefix}
                                {$activeCurrency.code}
                            </button>
                        </li>
                    {/if}
                    
                </ul>
<small class="p-2"><a href="https://github.com/JosephChuks/kinsmen-modern-whmcs-template" target="_blank" class="themeInfo"> Kinsmen Modern v1.0.0</a></small>
                <ul class="list-inline text-center mt-2">
                <li class="nav-item">
                       <span class="copyright text-center">
                            {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
                        </span>
                        
                    </li>
                    
                </ul>
            </div>
            
        </div>
    </footer>

</div>

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                                <input type="hidden" name="language" data-current="{$language}" value="{$language}" />
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" data-current="{$activeCurrency.id}" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}


    {$footeroutput}
<script>
window.addEventListener('load', function() {
     document.querySelectorAll('.fa-chevron-up.card-minimise.minimised').forEach(function(el) {
            el.click();
        });
        
        

 const path = window.location.pathname;
if (path.includes('mydomainsearch.php')) {
    const searchContainer = document.getElementById('domainSearchContainer');
    if (searchContainer) {
        searchContainer.querySelectorAll('*').forEach(function(el) {
            el.style.color = 'var(--accent-secondary)';
        });
        searchContainer.querySelectorAll('input').forEach(function(el) {
            el.style.background = 'var(--accent-secondary)';
        });
    }
}

});
</script>
<script type="text/javascript">
        (function() {

            var options = {
                call_to_action: "We are online",
                button_color: "#f48513",
                position: "left",
                pre_filled_message: "Hello Support, I need assistance",
                telegram: "KinsmenICT",
                order: "telegram",
            };
            const {
                proto,
                host
            } = document.location;
            var s = document.createElement("script");
            s.type = "text/javascript";
            s.async = true;
            s.src = "/getbutton.js";
            s.onload = function() {
                WhWidgetSendButton.init(host, proto, options);
            };
            var x = document.getElementsByTagName("script")[0];
            x.parentNode.insertBefore(s, x);
        })();
    </script>
    
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/617b9d0ff7c0440a592087d6/1fj5dr1kq';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</body>
</html>
