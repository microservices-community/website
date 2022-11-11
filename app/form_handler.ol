/*
   Copyright 2022 Saverio Giallorenzo <saverio.giallorenzo@gmail.com>

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

from console import Console
from string_utils import StringUtils
from exec import Exec

service fh {
 inputPort in {
  location: "local"
  requestResponse: submit
 }

 embed Console as console
 embed StringUtils as stringUtils
 embed Exec as exec

 execution: concurrent

 main {
  submit( r )( "Request Submitted" ){
   // valueToPrettyString@stringUtils( r )( r )
  cnt = 
   "Subject: Join Request from " + r.name + " @ Microservices Community\n"
	  + "From: form-handler@microservices.community\n"
	  + "Content-Type: text/html; charset=\"utf8\"\n"
   + "\n\n"
   + "<html>"
	  + "<body>"
   + "<ul>"
   + "<li>Name: " + r.name + "</li>"
   + "<li>Affiliation: " + r.affiliation + "</li>"
   + "<li>Title: " + r.title + "</li>"
   + "<li>Email: " + r.email + "</li>"
	  + "</ul>"
	  + "</body>"
	  + "</html>"
   cmd = "echo '" + cnt + "' | sendmail join@microservices.community"
   exec@exec( "sh" { 
    args[ 0 ] = "-c"
    args[ 1 ] = cmd
   } )()
   // valueToPrettyString@stringUtils( a )( r )
   // println@console( r )()
  }
 }

}