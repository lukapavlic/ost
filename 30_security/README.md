# Uporaba FORM-based avtentikacije
Primer demonstrira varovanje spletn aplikacije z uporabo FORM-based avtentikacije.

Za pravilno delovanje je potrebno kreirati uporabnike in vloge. Primer v tomcat-users.xml:


&lt;role rolename="uporabnik"/&gt;
&lt;user username="user" password="user" roles="uporabnik"/&gt;