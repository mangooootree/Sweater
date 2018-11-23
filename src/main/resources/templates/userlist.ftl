<#import "parts/common.ftl" as c>

<@c.page>
List of users:
<table>
    <thead>
    <th>Name</th>
    <th>Role</th>
    </thead>
<tbody>
<#list users as user>
<tr>
    <td>${user.username}</td>
    <td><#list user.roles as role>${role}<#sep>, </#list></td>
    <td><a href="/users/${user.id}">edit</a></td>
</tr>
    </tbody>


</#list>
</table>
</@c.page>