<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout />
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Введите сообщение" />
            <input type="text" name="tag" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${RequestParameters.filter!}">
        <button type="submit">Найти</button>
    </form>
    <#list messages as message>
        <div>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <b><a href="/messages/${message.id}">Delete</a></b>
        </div>
    <#else>
        No message
    </#list>
</@c.page>
