<cfsilent>

<cfparam name="attributes.file" type="string"/>
<cfparam name="attributes.id" type="string" default=""/>
<cfparam name="attributes.run" type="boolean" default="false"/>

<cfscript>
	path = expandPath(attributes.file);
	contents = fileRead(path);
	contents = rereplaceNoCase(contents, "[\t]", "&nbsp;&nbsp;&nbsp;", "all");
	contents = replace(contents, "<", "&lt;", "all");
	contents = replace(contents, ">", "&gt;", "all");

	if(attributes.run && !Len(attributes.id))
	{
		attributes.id = "code-#createUUID()#";
	}
</cfscript>

</cfsilent>
<cfif thisTag.executionMode eq "start">
<cfoutput>
<div class="code-wrapper" <cfif Len(attributes.id)> id="#attributes.id#"</cfif>>
<pre class="prettyprint">
#contents#
</pre>
<cfif attributes.run>
	<button onclick="doCodeRun('#jsStringFormat(attributes.file)#', '#attributes.id#-result');">Run Code</button>
</cfif>

<div class="result" id="#attributes.id#-result">
</div>
</div>
</cfoutput>
</cfif>