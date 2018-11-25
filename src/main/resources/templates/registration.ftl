<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
Registration page
<br>
${message?ifExists}
<br>
    <@l.login "/registration"/>
</@c.page>
