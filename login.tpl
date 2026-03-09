<div class="providerLinkingFeedback"></div>

<form method="post" action="{routePath('login-validate')}" class="login-form" role="form">

    <div class="card mw-540 mb-md-4 mt-md-4" style="margin: 0 auto;">
        <div class="card-body px-sm-5 py-5">
            <div class="mb-4 text-center">
                <div style="width:56px;height:56px;background:var(--accent-gradient);border-radius:var(--radius-lg);display:flex;align-items:center;justify-content:center;margin:0 auto 16px;">
                    <i class="fas fa-lock" style="color:#fff;font-size:1.25rem"></i>
                </div>
                <h6 class="h3">{lang key='loginbutton'}</h6>
                <p class="text-muted mb-0">{lang key='userLogin.signInToContinue'}</p>
            </div>
            {include file="$template/includes/flashmessage.tpl"}
            <div class="form-group">
                <label for="inputEmail" class="form-control-label">{lang key='clientareaemail'}</label>
                <div class="input-group input-group-merge">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="email" class="form-control" name="username" id="inputEmail" placeholder="name@example.com" autofocus>
                </div>
            </div>
            <div class="form-group mb-4 focused">
                <div class="d-flex align-items-center justify-content-between">
                    <label for="inputPassword" class="form-control-label">{lang key='clientareapassword'}</label>
                    <div class="mb-2">
                        <a href="{routePath('password-reset-begin')}" class="small text-muted" tabindex="-1">{lang key='forgotpw'}</a>
                    </div>
                </div>
                <div class="input-group input-group-merge">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                    </div>
                    <input type="password" class="form-control pw-input" name="password" id="inputPassword" placeholder="{lang key='clientareapassword'}" autocomplete="off">
                    <div class="input-group-append">
                        <button class="btn btn-default btn-reveal-pw" type="button" tabindex="-1">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
            </div>
            {if $captcha->isEnabled()}
                {include file="$template/includes/captcha.tpl"}
            {/if}
            <div class="mb-3">
                <button id="login" type="submit" class="btn btn-primary btn-block{$captcha->getButtonClass($captchaForm)}" style="padding:12px 20px !important">
                    {lang key='loginbutton'}
                </button>
            </div>
            <div class="text-center">
                <label style="font-size:0.875rem;font-weight:400 !important;color:var(--text-secondary) !important">
                    <input type="checkbox" class="form-check-input" name="rememberme" />
                    {lang key='loginrememberme'}
                </label>
            </div>
        </div>
        <div class="card-footer text-center">
            <small style="color:var(--text-secondary)">{lang key='userLogin.notRegistered'}</small>
            <a href="{$WEB_ROOT}/register.php" class="small font-weight-bold">{lang key='userLogin.createAccount'}</a>
        </div>
    </div>
</form>

{include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
