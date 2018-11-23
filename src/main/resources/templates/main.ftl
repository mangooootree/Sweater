<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div>
   <@l.logout />
    <span><a href="/users">User list</a></span>
</div>
<br>
<div>
    <form method="post" action="add">
        <input type="text" name="text"/>
        <input type="text" name="tag"/>
        <button type="submit">Add</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</div>
<br>
<div>Список сообщений:</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter!}">
    <button type="submit">Filter</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        ${message.text}
        ${message.tag}
        <i>${message.authorName}</i>
    </div>
<#else>
Mo messages
</#list>
</@c.page>