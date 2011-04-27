<%@ include file="/WEB-INF/jsp/include.jsp" %>

<div id="home-top-left">
    <img alt="" src="${imagen0}" />
</div>
<div id="home-top-right">
    <div id="home-menu-first" class="home-menu"><a href="/estudia">${tituloLeccion}</a></div>
    <c:forEach items="${temasDialoga}" var="tema">
        <div class="home-menu"><a href="/dialoga">${tema.titulo}</a></div>
    </c:forEach>
    <c:forEach items="${temasComunica}" var="tema">
        <div class="home-menu"><a href="/comunica">${tema.titulo}</a></div>
    </c:forEach>
</div>
<div id="home-bottom-left" class="home-bottom">
    <p class="titulo"><liferay-ui:message key="inicio.estudia" /></p>
    <div class="inner-box">
        <a href="/estudia" class="titulo">${tituloLeccion}</a>
        <p>${contenidoLeccion}</p>
        <p class="liga">
            <a href="/estudia"><liferay-ui:message key="inicio.leerMas" /></a>
        </p>
        <a href="/estudia" class="titulo"><liferay-ui:message key="inicio.versiculo" /></a>
        ${versiculo}
    </div>
</div>
<div id="home-bottom-center" class="home-bottom">
    <p class="titulo"><liferay-ui:message key="inicio.dialoga" /></p>
    <div class="inner-box">
        <c:forEach items="${temasDialoga}" var="tema">
            <a href="/dialoga" class="titulo">${tema.titulo}</a>
            <p>${tema.contenido}</p>
            <p class="liga">
                <a href="/dialoga"><liferay-ui:message key="inicio.leerMas" /></a>
            </p>
        </c:forEach>
    </div>
</div>
<div id="home-bottom-right" class="home-bottom">
    <p class="titulo"><liferay-ui:message key="inicio.comunica" /></p>
    <div class="inner-box">
        <c:forEach items="${temasComunica}" var="tema">
            <a href="/comunica" class="titulo">${tema.titulo}</a>
            <p>${tema.contenido}</p>
            <p class="liga">
                <a href="/comunica"><liferay-ui:message key="inicio.leerMas" /></a>
            </p>
        </c:forEach>
    </div>
</div>