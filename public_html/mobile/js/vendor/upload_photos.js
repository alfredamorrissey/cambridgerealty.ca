(function(){dust.register("uploadingImage",body_0);
function body_0(chk,ctx)
{
	return chk.w("<li id=\"").f(ctx.get(["imageId"], false),ctx,"h").w("\" data-image-id=\"").f(ctx.get(["imageId"], false),ctx,"h").w("\" class=\"uploading\"><a href=\"#\" class=\"remove kj-icon-cancel\"></a><div class=\"container\" style=\"display: block;\"><div class=\"ribbon\"><div class=\"spinner animate-spin kj-icon-spin4\"></div><div class=\"image-name\">").f(ctx.get(["imageName"], false),ctx,"h").w("</div></div></div></li>");}body_0.__dustBody=!0;return body_0;})();