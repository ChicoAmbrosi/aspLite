<%
'hello world plugin example

dim helloworld
set helloworld=aspL.plugin("helloworld")

body=helloworld.hw()

'or shorter
titletag=aspL.plugin("helloworld").hw()

set helloworld=nothing
%>