<h1><b><u>Cpp-Request</u></b></h1>

<h2>Introduction</h2>
<p>This library was created in order to allow for easy access to web API's utilizing the REST protocol.</p>

<h2>Dependencies</h2>
<p>
	<ol>
		<li>libcurl: <a href="https://curl.haxx.se/download.html">Link to libcurl download</a></li>
	</ol>
Libcurl is the only dependency for this library. With libcurl, the HTTP interaction is taken care of for us already.
All responses from libcurl and from our library is of datatype <b>char*</b> as the data is pulled directly from HTTP protocol.
</p>

<h2>Build</h2>
<p>
To build the project, simply type: <b>make</b> while inside the directory of Php-Request. This will build libcpprequests.so and libcpprequests.a,
which are the libraries needed to perform the functions.<br>
To install the project, simply type: <b>make install</b> while inside the directory of Php-Request. This will place the libraries in standard locations
on a linux file system so that your project can consume them.<br>

Note: You may need to include "sudo" in front of make commands in order to perform necessary actions.
</p>

<h2>Usage</h2>
<p>
There are 5 methods available to the user's disposal:
	<ul>
		<li>
			<b>request</b>
			<ul style="list-style-type: circle;">
				<li><u>Signature:</u><br>
				        &emsp;char* request(std::string method,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;std::string url,<br> 
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;const char* data,<br> 
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;struct curl_slist* headers,<br> 
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;std::tuple<std::string, std::string> auth = std::make_tuple("BASIC", "admin:admin"));
	                        </li><br>
                                <li><u>Parameter Explanation:</u><br>
                                    &emsp;<b>method:</b>&nbsp;                 The method to utilize for request. One of: GET, POST, PUT, or DELETE.<br>
                                    &emsp;<b>url:</b>&emsp;&emsp;&nbsp;        The composite url to make the request to.<br>
                                    &emsp;<b>data:</b>&emsp;&nbsp;&nbsp;&nbsp; The data to include with request. If GET or DELETE request, this field can be NULL.<br>
                                    &emsp;<b>headers:</b>&nbsp;                The headers to include with the request. This must be created with each request, even if no values are included.<br>
                                    &emsp;<b>auth:</b>&emsp;&nbsp;&nbsp;&nbsp; The authorization profile to include. If no value provided, BASIC auth with admin username, admin password will be used.
                                </li><br>
                                <li><u>Returns:</u>&nbsp;A character pointer containing the date retrieved by the request.<br>
                                </li><br>
			</ul>
		</li>
		<li>
			<b>get</b>
			<ul style="list-style-type: circle;">
				<li><u>Signature:</u><br>
				        &emsp;char* get(std::string url,<br> 
                                                &emsp;&emsp;&emsp;&emsp;&emsp;struct curl_slist* headers,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;std::tuple<std::string, std::string> auth = std::make_tuple("BASIC", "admin:admin"));
	                        </li><br>
                                <li><u>Parameter Explanation:</u><br>
                                    &emsp;<b>url:</b>&emsp;&emsp;&nbsp;        The composite url to make the request to.<br>
                                    &emsp;<b>headers:</b>&nbsp;                The headers to include with the request. This must be created with each request, even if no values are included.<br>
                                    &emsp;<b>auth:</b>&emsp;&nbsp;&nbsp;&nbsp; The authorization profile to include. If no value provided, BASIC auth with admin username, admin password will be used.
                                </li><br>
                                <li><u>Returns:</u>&nbsp;A character pointer containing the date retrieved by the request.<br>
                                </li><br>
			</ul>
		</li>
		<li>
			<b>post</b>
			<ul style="list-style-type: circle;">
				<li><u>Signature:</u><br>
				        &emsp;char* post(std::string url,<br>
						&emsp;&emsp;&emsp;&emsp;&emsp;const char* data,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;struct curl_slist* headers,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;std::tuple<std::string, std::string> auth = std::make_tuple("BASIC", "admin:admin"));
	                        </li><br>
                                <li><u>Parameter Explanation:</u><br>
                                    &emsp;<b>url:</b>&emsp;&emsp;&nbsp;        The composite url to make the request to.<br>
				    &emsp;<b>data:</b>&emsp;&nbsp;&nbsp;&nbsp; The data to include with request. If GET or DELETE request, this field can be NULL.<br>
                                    &emsp;<b>headers:</b>&nbsp;                The headers to include with the request. This must be created with each request, even if no values are included.<br>
                                    &emsp;<b>auth:</b>&emsp;&nbsp;&nbsp;&nbsp; The authorization profile to include. If no value provided, BASIC auth with admin username, admin password will be used.
                                </li><br>
                                <li><u>Returns:</u>&nbsp;A character pointer containing the date retrieved by the request.<br>
                                </li><br>
			</ul>
		</li>
		<li>
			<b>put</b>
			<ul style="list-style-type: circle;">
				<li><u>Signature:</u><br>
				        &emsp;char* put(std::string url,<br>
						&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;const char* data,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;struct curl_slist* headers,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;std::tuple<std::string, std::string> auth = std::make_tuple("BASIC", "admin:admin"));
	                        </li><br>
                                <li><u>Parameter Explanation:</u><br>
                                    &emsp;<b>url:</b>&emsp;&emsp;&nbsp;  The composite url to make the request to.<br>
				    &emsp;<b>data:</b>&emsp;&emsp;The data to include with request. If GET or DELETE request, this field can be NULL.<br>
                                    &emsp;<b>headers:</b>&nbsp;          The headers to include with the request. This must be created with each request, even if no values are included.<br>
                                    &emsp;<b>auth:</b>&emsp;&nbsp;&nbsp;&nbsp; The authorization profile to include. If no value provided, BASIC auth with admin username, admin password will be used.
                                </li><br>
                                <li><u>Returns:</u>&nbsp;A character pointer containing the date retrieved by the request.<br>
                                </li><br>
			</ul>
		</li>
		<li>
			<b>delete</b>
			<ul style="list-style-type: circle;">
				<li><u>Signature:</u><br>
				        &emsp;char* delete(std::string url,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;struct curl_slist* headers,<br>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;std::tuple<std::string, std::string> auth = std::make_tuple("BASIC", "admin:admin"));
	                        </li><br>
                                <li><u>Parameter Explanation:</u><br>
                                    &emsp;<b>url:</b>&emsp;&emsp;&nbsp;  The composite url to make the request to.<br>
                                    &emsp;<b>headers:</b>&nbsp;          The headers to include with the request. This must be created with each request, even if no values are included.<br>
                                    &emsp;<b>auth:</b>&emsp;&nbsp;&nbsp; The authorization profile to include. If no value provided, BASIC auth with admin username, admin password will be used.
                                </li><br>
                                <li><u>Returns:</u>&nbsp;True if the object at chosen url is deleted. False if unable to delete.<br>
                                </li><br>
			</ul>
		</li>
	</ul>
Each of these methods can be used after building the requests library, including "requests.h" into your project, and then linking "requests" library into your project. 
</p>