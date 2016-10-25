package com.try4.sitemesh.controller;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class MySiteMeshFilter extends ConfigurableSiteMeshFilter {

	  @Override
	  protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
	           // Map default decorator. This shall be applied to all paths if no other paths match.
	    builder.addDecoratorPath("/*", "/default-decorator.html") 
	           // Map decorators to path patterns. 
	           .addDecoratorPath("/admin/*", "/another-decorator.html")
	           .addDecoratorPath("/*.special.jsp", "/special-decorator.html")
	           // Map multiple decorators to the a single path.
	           .addDecoratorPaths("/articles/*", "/decorators/article.html",
	                                             "/decoratos/two-page-layout.html", 
	                                             "/decorators/common.html")
	           // Exclude path from decoration.
	           .addExcludedPath("/javadoc/*")
	           .addExcludedPath("/brochures/*");
	  }

	}
/*
<sitemesh>
  <!-- Map default decorator. This shall be applied to all paths if no other paths match. -->
  <mapping decorator="/default-decorator.html"/>

  <!-- Map decorators to path patterns. -->
  <mapping path="/admin/*" decorator="/another-decorator.html"/>
  <mapping path="/*.special.jsp" decorator="/special-decorator.html"/>

  <!-- Alternative convention. This is more verbose but allows multiple decorators
       to be applied to a single path. -->
  <mapping>
    <path>/articles/*</path>
    <decorator>/decorators/article.html</decorator>
    <decorator>/decorators/two-page-layout.html</decorator>
    <decorator>/decorators/common.html</decorator>
  </mapping>

  <!-- Exclude path from decoration. -->
  <mapping path="/javadoc/*" exclue="true"/>
  <mapping path="/brochures/*" exclue="true"/>

</sitemesh>
*/