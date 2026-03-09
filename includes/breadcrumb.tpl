<div style="display:flex;justify-content:space-between;align-items:center">
<ol class="breadcrumb">
<div id="loginBreadcrumb" class="d-flex"></div>
    {foreach $breadcrumb as $item}
        <li class="breadcrumb-item{if $item@last} active{/if}"{if $item@last} aria-current="page"{/if}>
            {if !$item@last}<a href="{$item.link}">{/if}
            {$item.label}
            {if !$item@last}</a>{/if}
        </li>
        
    {/foreach}
    
</ol>
{if $loggedin}
<ol class="breadcrumb">
            <li class="breadcrumb-item">
            <a href="/clientarea.php?action=addfunds" style="font-weight:600;color:var(--text-heading) !important;display:flex;align-items:center;gap:6px">
                <i class="fas fa-wallet" style="color:#10b981;font-size:0.8125rem"></i>
                Balance: <span class="text-success">{$clientsdetails.credit|formatCurrency}</span>
            </a>        
            </li>
        
</ol>
{/if}
</div>
<script>
const loginPath = window.location.pathname;
if(loginPath.includes('/login')){
    document.getElementById('loginBreadcrumb').innerHTML = 
    `<li class="breadcrumb-item"><a href="/index.php">Portal Home</a></li>
<li class="breadcrumb-item active" aria-current="page">Login</li>`;
}
</script>



            
        
