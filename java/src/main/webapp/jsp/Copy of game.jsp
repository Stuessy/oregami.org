<%@ include file="/WEB-INF/taglibs.jspp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="${contextPath}/css/style.css" />
<script src="${contextPath}/js/jquery-1.7.1.min.js"></script>
<script src="${contextPath}/js/jquery.tools.min.js"></script>
<title>Game: ${actionBean.loadedGame.mainTitle}</title>
</head>

<body>
	<span class="game_header">${actionBean.loadedGame.mainTitle}</span>
	<span style="font-size: 60%;">${actionBean.loadedGame.description}</span>
	<br />
	<span class="game_subtitle"> <c:forEach
			items="${actionBean.loadedGame.titleList}" var="title"
			varStatus="status">
				${title.name}<c:if test="${not status.last}">, </c:if>
		</c:forEach> </span>
	<br />
	<span class="screenshots">Screenshots: <c:forEach
			items="${actionBean.loadedGame.screenshotList}" var="screenshot"
			varStatus="status">
			<img src="${contextPath}/images/screenshots/${screenshot.fileName}"
				title="${screenshot.description}" />
		</c:forEach> </span>

	<br />
	<br />

	<hr />

	<div id="accordion">

		<c:forEach items="${actionBean.loadedGame.systemToReleaseGroupMap}" var="mapEntry" varStatus="status">
			<h2 class="current">System: ${mapEntry.key}</h2>
			<div class="pane" style="display: block">... pane content ...</div>
		</c:forEach>
	</div>

	<hr />

	<c:forEach items="${actionBean.loadedGame.systemToReleaseGroupMap}"
		var="mapEntry">
		<b>System: ${mapEntry.key}</b>
		<br />
		<c:forEach items="${mapEntry.value}" var="releaseGroup">
			<table border="0" cellpadding="0" cellspacing="1"
				class="releaseGroup">
				<tr>
					<td class="game_subtitle">&nbsp;&nbsp;&nbsp;
						${releaseGroup.name} <span style="font-size: 80%;">${releaseGroup.releaseGroupType}</span>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 20px;">
						<table class="release" cellpadding="0" cellspacing="1">
							<c:forEach items="${releaseGroup.releaseList}" var="release">
								<tr>
									<td>${release.description}, ${release.distribution}</td>

									<c:forEach items="${release.countryReleaseList}" var="country" varStatus="status">
										<c:if test="${status.first}">
											<td style='padding-left: 10px;'>
										</c:if>
								${country.country}: ${country.yearOfRelease}
								<c:if test="${not status.last}">, </c:if>
										<c:if test="${status.last}">
											</td>
										</c:if>
									</c:forEach>
								</tr>
							</c:forEach>
						</table></td>
				</tr>
			</table>
		</c:forEach>
	</c:forEach>


	<hr />


	<span style="font-size: 8pt;"> Erschienen f�r:</span>
	<br />

	<c:forEach items="${actionBean.loadedGame.releaseGroupList}"
		var="releaseGroup">
		<div class="">
			<table border="0" cellpadding="0" cellspacing="1"
				class="releaseGroup">
				<tr>
					<td>${releaseGroup.system}</td>
				</tr>
				<tr>
					<td class="game_subtitle">&nbsp;&nbsp;&nbsp;
						${releaseGroup.name} <span style="font-size: 80%;">${releaseGroup.releaseGroupType}</span>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 20px;">
						<table class="release" cellpadding="0" cellspacing="1">
							<c:forEach items="${releaseGroup.releaseList}" var="release">
								<tr>
									<td>${release.description}, ${release.distribution}</td>

									<c:forEach items="${release.countryReleaseList}" var="country"
										varStatus="status">
										<c:if test="${status.first}">
											<td style='padding-left: 10px;'>
										</c:if>
								${country.country}: ${country.yearOfRelease}
								<c:if test="${not status.last}">, </c:if>
										<c:if test="${status.last}">
											</td>
										</c:if>
									</c:forEach>
								</tr>
							</c:forEach>
						</table></td>
				</tr>
			</table>
		</div>

	</c:forEach>

	<%@ include file="/loginbox.jsp"%>

</body>
</html>
