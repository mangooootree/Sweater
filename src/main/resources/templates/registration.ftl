<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div class="mb-1">Registration page</div>
<br>
    ${message?ifExists}
<br>
    <@l.login "/registration" true/>
</@c.page>
