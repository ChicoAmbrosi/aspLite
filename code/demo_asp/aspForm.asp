<%
'formbuilder sample - built on bootstrap css

dim form : set form=aspl.plugin("formbuilder")

'form-submitted
if form.postback then

	'here you would typically perform additional validations, return error messages, and finally save to a database
	'below I also add a sample error & feedback message as comments to the form
	
	'error 
	dim errorM : set errorM=aspl.dict
	errorM.add "html","<h4>Example error message!</h4>"
	errorM.add "type","comment"
	errorM.add "tag","div"
	errorM.add "class","alert alert-danger"
	
	form.addField(errorM)
	
	'feedback
	dim feedback : set feedback=aspl.dict
	feedback.add "html","<h4>Successful submit!</h4>"
	feedback.add "type","comment"
	feedback.add "tag","div"
	feedback.add "class","alert alert-primary"
	
	form.addField(feedback)
	
	'rather than return the complete form in case of a successful submit, 
	'you can also quickly "dump" a Json message: 
	'json.dump("SAVE OK!")

end if	

'this hidden field is required in this demo, as the "e"-event is used in the event-handler
dim hidden : set hidden=aspl.dict
hidden.add "type","hidden"
hidden.add "name","e"
hidden.add "value","aspform"

form.addField(hidden)

'a comment
dim comment : set comment=aspl.dict
comment.add "html","<h3>Ajax Form Builder</h3><hr><p class=""lead"">Introduction to the form</p>"
comment.add "type","comment"
comment.add "tag","div"

form.addField(comment)

dim firstname : set firstname=aspl.dict
firstname.add "label","First name:"
firstname.add "type","text"
firstname.add "name","firstname"
firstname.add "class","form-control"
firstname.add "required",true

form.addField(firstname)

dim lastname : : set lastname=aspl.dict
lastname.add "label","Last name:"
lastname.add "type","text"
lastname.add "name","lastname"
lastname.add "class","form-control"
lastname.add "required",true

form.addField(lastname)

dim email : set email=aspl.dict
email.add "label","Email:"
email.add "type","email"
email.add "name","email"
email.add "value",""
email.add "class","form-control"

form.addField(email)

dim aspyears : set aspyears=aspl.dict
aspyears.add "label","For how many years are you an ASP coder?"
aspyears.add "type","number"
aspyears.add "name","aspyears"
aspyears.add "class","form-control"

form.addField(aspyears)

'a another comment
dim anothercomment : set anothercomment=aspl.dict
anothercomment.add "html","Yet another comment."
anothercomment.add "type","comment"
anothercomment.add "tag","div"
anothercomment.add "class","alert alert-warning"
anothercomment.add "style","margin-top:20px"

form.addField(anothercomment)

dim birthdate : set birthdate=aspl.dict
birthdate.add "label","Birthday:"
birthdate.add "type","date"
birthdate.add "name","birthdate"
birthdate.add "class","form-control"

form.addField(birthdate)

dim submit : set submit=aspl.dict
submit.add "label","<br><br>"
submit.add "type","submit"
submit.add "name","btnAction"
submit.add "value","Submit"
submit.add "class","btn btn-primary"

form.addField(submit)

form.build()

%>