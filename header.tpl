<!doctype html>
<html lang="en">
<head>
 
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    
    {include file="$template/includes/head.tpl"}
    <link rel="shortcut icon" href="{$WEB_ROOT}/templates/{$template}/images/icon-dark.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Inter:wght@300;400;500;600;700&display=swap">
    {$headoutput}

</head>
<body class="primary-bg-color admin-layout" data-phone-cc-input="{$phoneNumberInputStyle}">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-53B5L25D"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div class="admin-header-output">{$headeroutput}</div>

<aside id="adminSidebar" class="admin-sidebar">
    <div class="admin-sidebar-header">
        <a class="admin-sidebar-brand" href="https://thekinsmen.net">
            {if $assetLogoPath}
                <img src="{$WEB_ROOT}/templates/{$template}/images/logo-white.png" alt="{$companyname}" class="logo-img" width="110px">
            {else}
                <span class="brand-text">{$companyname}</span>
            {/if}
        </a>
    </div>

    <div class="admin-sidebar-body">
        <ul class="admin-sidebar-nav">
            {foreach $primaryNavbar as $item}
                <li class="admin-sidebar-item{if $item->hasChildren()} has-submenu{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
                    <a href="{if $item->hasChildren()}javascript:void(0){else}{$item->getUri()}{/if}" class="admin-sidebar-link{if $item->hasChildren()} submenu-toggle{/if}"{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
                        {if $item->hasIcon()}<i class="{$item->getIcon()} admin-sidebar-icon"></i>{else}<i class="fas fa-circle admin-sidebar-icon" style="font-size:0.5rem"></i>{/if}
                        <span class="admin-sidebar-label text-white">{$item->getLabel()}</span>
                        {if $item->hasBadge()}<span class="badge admin-sidebar-badge">{$item->getBadge()}</span>{/if}
                        {if $item->hasChildren()}<i class="fas fa-chevron-right admin-sidebar-arrow"></i>{/if}
                    </a>
                    {if $item->hasChildren()}
                        <ul class="admin-sidebar-submenu">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                                {else}
                                    <li class="admin-sidebar-subitem" id="{$childItem->getId()}">
                                        <a href="{$childItem->getUri()}" class="admin-sidebar-sublink"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}" style="width:16px;text-align:center;margin-right:8px;font-size:0.75rem"></i>{/if}
                                            {$childItem->getLabel()}
                                            {if $childItem->hasBadge()}<span class="badge admin-sidebar-badge">{$childItem->getBadge()}</span>{/if}
                                        </a>
                                    </li>
                                {/if}
                            {/foreach}
                        </ul>
                    {/if}
                </li>
            {/foreach}
            <li class="admin-sidebar-item" id="Primary_Navbar-Digital_Product_Policy">
                <a class="admin-sidebar-link" target="_blank" href="https://thekinsmen.net/digital-product-terms">
                    <i class="fas fa-shield-alt admin-sidebar-icon"></i>
                    <span class="admin-sidebar-label text-white">Digital Product Policy</span>
                </a>
            </li>
            <li class="admin-sidebar-item" id="Primary_Navbar-Digital_Product_Policy">
                <a class="admin-sidebar-link" target="_blank" href="{$tosURL}">
                    <i class="fas fa-file-contract admin-sidebar-icon"></i>
                    <span class="admin-sidebar-label text-white">{lang key='ordertos'}</span>
                </a>
            </li>
        </ul>

        <div class="admin-sidebar-divider"></div>

        <ul class="admin-sidebar-nav">
            {foreach $secondaryNavbar as $item}
                <li class="admin-sidebar-item{if $item->hasChildren()} has-submenu{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
                    <a href="{if $item->hasChildren()}javascript:void(0){else}{$item->getUri()}{/if}" class="admin-sidebar-link{if $item->hasChildren()} submenu-toggle{/if}"{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
                        {if $item->hasIcon()}<i class="{$item->getIcon()} admin-sidebar-icon" style="color:var(--accent-gradient)"></i>{else}<i class="fas fa-user admin-sidebar-icon" style="color:var(--accent-gradient)"></i>{/if}
                        <span class="admin-sidebar-label" style="color:var(--accent-gradient)">{$item->getLabel()}</span>
                        {if $item->hasBadge()}<span class="badge admin-sidebar-badge">{$item->getBadge()}</span>{/if}
                        {if $item->hasChildren()}<i class="fas fa-chevron-right admin-sidebar-arrow"></i>{/if}
                    </a>
                    {if $item->hasChildren()}
                        <ul class="admin-sidebar-submenu">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                                {else}
                                    <li class="admin-sidebar-subitem" id="{$childItem->getId()}">
                                        <a href="{$childItem->getUri()}" class="admin-sidebar-sublink"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}" style="width:16px;text-align:center;margin-right:8px;font-size:0.75rem"></i>{/if}
                                            {$childItem->getLabel()}
                                            {if $childItem->hasBadge()}<span class="badge admin-sidebar-badge">{$childItem->getBadge()}</span>{/if}
                                        </a>
                                    </li>
                                {/if}
                            {/foreach}
                        </ul>
                    {/if}
                </li>
            {/foreach}
        </ul>
       
    </div>
</aside>

<div class="admin-sidebar-overlay" id="sidebarOverlay"></div>

<div class="admin-main-wrapper">
    <header id="header" class="header admin-topbar-header">
        {if $loggedin}
            <div class="topbar">
                <div class="admin-topbar-inner">
                    <div class="d-flex align-items-center">
                        <div class="mr-auto d-flex align-items-center">
                            <button type="button" class="btn admin-sidebar-toggle" id="sidebarToggle">
                                <i class="fas fa-bars"></i>
                            </button>
                            <button type="button" class="btn" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                                <i class="far fa-bell"></i>
                                {if count($clientAlerts) > 0}
                                    <span class="badge badge-info" style="font-size:0.625rem">{count($clientAlerts)}</span>
                                    <span class="d-none d-sm-inline">{lang key='notifications'}</span>
                                {else}
                                    <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
                                {/if}
                            </button>
                            <div id="accountNotificationsContent" class="w-hidden">
                                <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                    <li>
                                        <a href="{$alert->getLink()}">
                                            <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="message">{$alert->getMessage()}</div>
                                        </a>
                                    </li>
                                {foreachelse}
                                    <li class="none">
                                        {lang key='notificationsnone'}
                                    </li>
                                {/foreach}
                                </ul>
                            </div>
                        </div>

                        <div class="ml-auto d-flex align-items-center">
                            <form method="post" action="{routePath('knowledgebase-search')}" class="form-inline d-none d-md-flex mr-3">
                                <div class="input-group search topbar-search">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-search"></i></span>
                                    </div>
                                    <input class="form-control" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                                </div>
                            </form>

                            <a class="btn topbar-icon-btn" href="{$WEB_ROOT}/cart.php?a=view">
                                <i class="fas fa-shopping-cart"></i>
                                {if $cartitemcount > 0}<span class="topbar-badge">{$cartitemcount}</span>{/if}
                            </a>

                            <button type="button" id="darkModeToggle" class="btn topbar-icon-btn" aria-label="Toggle dark mode">
                                <i class="fas fa-moon"></i>
                            </button>

                            <div class="topbar-user-info d-none d-lg-flex">
                                <a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-active-client">
                                    <span>
                                        {if $client.companyname}
                                            {$client.companyname}
                                        {else}
                                            {$client.fullName}
                                        {/if}
                                    </span>
                                </a>
                                <a href="{routePath('user-accounts')}" class="btn topbar-icon-btn" data-toggle="tooltip" data-placement="bottom" title="Switch Account">
                                    <i class="fas fa-exchange-alt"></i>
                                </a>
                            </div>
                            {if $adminMasqueradingAsClient || $adminLoggedIn}
                                <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                                    <i class="fas fa-redo-alt"></i>
                                    <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                                </a>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        {else}
            <div class="topbar">
                <div class="admin-topbar-inner">
                    <div class="d-flex align-items-center">
                        <div class="mr-auto d-flex align-items-center">
                            <button type="button" class="btn admin-sidebar-toggle" id="sidebarToggle">
                                <i class="fas fa-bars"></i>
                            </button>
                        </div>
                        <div class="ml-auto d-flex align-items-center">
                            <form method="post" action="{routePath('knowledgebase-search')}" class="form-inline d-none d-md-flex mr-3">
                                <div class="input-group search topbar-search">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-search"></i></span>
                                    </div>
                                    <input class="form-control" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                                </div>
                            </form>

                            <a class="btn topbar-icon-btn" href="{$WEB_ROOT}/cart.php?a=view">
                                <i class="fas fa-shopping-cart"></i>
                                {if $cartitemcount > 0}<span class="topbar-badge">{$cartitemcount}</span>{/if}
                            </a>

                            <button type="button" id="darkModeToggle" class="btn topbar-icon-btn" aria-label="Toggle dark mode">
                                <i class="fas fa-moon"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}

    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="admin-content-padding">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>

    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}

    {if $templatefile == 'homepage'}
        {if $registerdomainenabled || $transferdomainenabled}
            {include file="$template/includes/domain-search.tpl"}
        {/if}
    {/if}

    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}admin-content-padding{/if}">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
            {/if}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
