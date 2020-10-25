<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>

    User Editor
    <form action="/user" method="post" xmlns="http://www.w3.org/1999/html">
        <input type="text" name="username" value="${user.username}">
        <#list roles as role>
            <div>
                <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}>
                ${role}</label>

            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Save</button>
    </form>



</@c.page>
