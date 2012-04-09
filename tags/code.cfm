<cfif thisTag.executionMode eq "start">
<cfsilent>

<cfparam name="attributes.file" type="string"/>
<cfparam name="attributes.id" type="string" default=""/>
<cfparam name="attributes.run" type="boolean" default="false"/>
<cfparam name="attributes.startLine" type="numeric" default="-1"/>
<cfparam name="attributes.lines" type="numeric" default="0"/>
<cfparam name="attributes.untab" type="numeric" default="0"/>
<cfparam name="attributes.lang" type="string" default=""/>

<cfinclude template="../sesame/all.cfm" />

<cfscript>
	path = expandPath(attributes.file);
	contents = fileRead(path);

	if(attributes.startLine != -1)
	{
		contents = contents.split("\n");
		contents = ArraySlice(contents, attributes.startLine, attributes.lines);

		_times(attributes.untab, function() 
		{
			contents = _collect(contents, function(line) { return rereplace(line, "\t", ""); });
		});

		contents = arrayToList(contents, "#chr(10)#");
	}

	contents = xmlFormat(contents);
	contents = rereplaceNoCase(contents, "[\t]", "&nbsp;&nbsp;&nbsp;", "all");

	if(attributes.run && !Len(attributes.id))
	{
		attributes.id = "code-#createUUID()#";
	}
</cfscript>

</cfsilent>
<cfoutput>
<div class="code-wrapper" <cfif Len(attributes.id)> id="#attributes.id#"</cfif>>
<pre class="prettyprint<cfif Len(attributes.lang)> lang-#attributes.lang#</cfif>">
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
