<!-- Styling -->
{\WHMCS\View\Asset::fontCssInclude('open-sans-family.css')}
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="{assetPath file='custom.css'}?v=03{$versionHash}" rel="stylesheet">

<script src="{assetPath file='darkmode.js'}?v={$versionHash}"></script>



<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang|addslashes key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang|addslashes key="markdown.saved"}',
        saving = '{lang|addslashes key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang|addslashes key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";

        function togglePassword(input, icon) {
        const passwordInput = document.getElementById(input);
        const toggleIcon = document.getElementById(icon);
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            toggleIcon.classList.remove('fa-eye');
            toggleIcon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            toggleIcon.classList.remove('fa-eye-slash');
            toggleIcon.classList.add('fa-eye');
        }
    }

    function copyToClipboard(trigger, text) {
  const btn = document.getElementById(trigger);
  const data = document.getElementById(text);
  if (btn && data) {
    navigator.clipboard
      .writeText(data.value.trim())
      .then(() => {
        btn.innerHTML = "<i class='fas fa-clipboard'></i> copied";
        setTimeout(() => {
          btn.innerHTML = "<i class='fas fa-clipboard'></i> copy";
        }, 3000);
      })
      .catch((err) => {
        btn.textContent = "Failed to copy!";
        setTimeout(() => {
          btn.innerHTML = "<i class='fas fa-clipboard'></i> copy";
        }, 3000);
      });
  }
}
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}

<style>
.table-list>tbody>tr>td {
    background-color: var(--bg-card) !important;
}

.btn-danger {
    color: #fff !important
}

.md-editor>.md-preview,
.md-editor>textarea.markdown-editor {
    background-color: transparent !important
}

.md-editor .md-footer,
.md-editor>.md-header {
    background-color: transparent !important
}

.announcements .announcement article {
    background-color: transparent !important
}

tr.masspay-total td {
    background-color: transparent !important
}

.domain-renewals,
.service-renewals {
    background-color: transparent !important
}

.domain-renewals .domain-renewal:nth-child(even) {
    background-color: transparent !important
}

#order-standard_cart .summary-container {
    background-color: transparent !important
}

#order-standard_cart .view-cart-tabs .tab-content {
    background-color: transparent !important
}

#order-standard_cart .view-cart-items .item {
    background-color: transparent !important
}

.Box-backgroundColor-white_3LQ-e {
    background-color: transparent !important
}

label[for^="tab-"] {
    color: red !important;
}

.Box-backgroundColor-white_3LQ-e {
    background-color: transparent !important;
}

.themeInfo {
    color: #f48513 !important;
}

#order-standard_cart .product-info {
background-color: transparent !important;
}
</style>