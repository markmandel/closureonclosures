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
 * Application cfc for the presentation
 */
component
{
	this.name = "Getting Closure on Closures";

	/**
	 * on request start
	 */
	public boolean function onRequestStart(required string targetPage)
	{
		include "include/settings.cfm";
		return true;
	}
}
