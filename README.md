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

<h2>Usage</h2>
<p>
There are 5 methods available to the user's disposal:
	<ul>
		<li>
			<b>request</b>
			<ul style="list-style-type: square;">
				<li><b>Signature:<b> char* request(std::string method, 
                                                   std::string url, 
                                                   const char* data, 
                                                   struct curl_slist* headers, 
                                                   std::tuple<std::string, std::string> auth = std::make_tuple("BASIC", "admin:admin"));
	            </li>
			</ul>
		</li>
		<li><b>get</b></li>
		<li><b>post</b></li>
		<li><b>put</b></li>
		<li><b>delete</b></li>
	</ul>
These methods are standards as part of the REST architecture.
</p>