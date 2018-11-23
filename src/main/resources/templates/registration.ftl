<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
Registration page
<br>
${message!}
<br>
    <@l.login "/registration"/>
</@c.page>
