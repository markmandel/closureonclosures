/*
	Copyright 2012 Mark Mandel

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	   http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
*/

/**
 * Does the code run, and replaces the element with the given id
 * with the results
 *
 * @param path the relative URL path to hit.
 * @param replaceID the id of the element to replace.
 */
function doCodeRun(path, replaceID)
{
	//console.log(path);
	//console.log(replaceID);

	$.get(path, function(data)
		{
			//console.log(data);

			$("#" + replaceID).html(data).fadeIn();

		}
	);
}

function runActiveCode()
{
	$("div.active button").click();
}

//ready hander
$(function()
		{
			//keyboard shortcuts
			$(document).keypress(function(event)
				{
					console.log(event);
					switch(event.keyCode)
					{
						case 114: //'r' - for run current slide.
							runActiveCode();
						break;
						case 111: //'o' for overview
							impress().goto("overview");
						break;
					}
				});
		});

