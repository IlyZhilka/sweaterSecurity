<#import "parts/common.ftl" as c>

<@c.page>
    List of users

    <table>

        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
        </tr>
        </thead>
        <tbody>
        <div>
            <form action="/user" method="get">
                <input type="text" name="filterRole" value="${RequestParameters.filterRole!}">
                <button type="submit">Найти</button>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
            </form>
        </div>
        </thead>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a> </td>
            </tr>
        </#list>
        </tbody>
    </table>


</@c.page>