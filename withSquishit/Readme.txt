1.setup nuget under vistual studio 
	http://visualstudiogallery.msdn.microsoft.com/27077b70-9dad-4c64-adcf-c7cf6bc9970c

2.setup Squishit from nuget

3.
	SquishIt.Framework.Bundle.Css().Add("1.css").Add("2.css").Render("~/css/site_#.css")
	SquishIt.Framework.Bundle.JavaScript().Add("1.js").Add("2.js").Render("~/js/site_#.js")

4.update web.config
	<compilation debug="false"