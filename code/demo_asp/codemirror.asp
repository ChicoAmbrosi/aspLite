<%
on error resume next

'load template
pagetitle="CodeMirror Example"
body=aspL.loadText("html/demo_asp/codemirror.resx")

dim somecode

if aspl.convertBool(aspl.getrequest("saveCodemirror")) then

	somecode=aspl.getrequest("codemirror")
	
	'save the file here?
	'the line below would succesfully save UTF-8 texts
	'it's commented out for SECURITY reasons - be careful NOT TO LET STRANGERS save ASP files on your server!!!
	
	'aspL.saveText "code/demo_asp/codemirrorsample.asp",somecode	
	body=replace(body,"[savesuccess]","file was saved",1,-1,1)
else

	somecode=aspL.loadText("code/demo_asp/codemirrorsample.asp")
	
end if

body=replace(body,"[savesuccess]","",1,-1,1)
body=replace(body,"[somecode]",aspL.sanitize(somecode),1,-1,1)

aspl.asperror("codemirror")	

on error goto 0

%>