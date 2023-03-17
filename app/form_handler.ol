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
  _from = "join2@microservices.community"
  cnt = 
   "Subject: Join Request from " + r.name + " @ Microservices Community\n"
	  + "To: " + r.email + "\n"
	  + "From: " + _from + "\n"
	  + "Bcc: " + _from + "\n"
	  + "Content-Type: text/plain; charset=\"utf8\"\n"
   + "\n\n"
   + "Dear " + r.name + ",\n"
   + "Thanks for your request to join the Microservices Community.\n"
   + "Please find below the data of your request, which we will handle ASAP and contact you back promptly.\n"
   + "\t- Name: " + r.name + "\n"
   + "\t- Affiliation: " + r.affiliation + "\n"
   + "\t- Title: " + r.title + "\n"
   + "\t- Email: " + r.email + "\n\n"
   + "In the meantime, do not hesitate to contact us at " + _from + " for any further question.\n\n"
   + "Best regards,\n"
   + "Your Onboarding Team at Microservices Community"
   cmd = "echo '" + cnt + "' | sendmail -t "
   exec@exec( "sh" {
    args[ 0 ] = "-c"
    args[ 1 ] = cmd
   } )()
   // valueToPrettyString@stringUtils( cnt )( r )
   println@console( cnt )()
  }
 }

}