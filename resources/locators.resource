Documentation           Segue um exemplo de boas práticas para armazenar os localizadores.
...                     Criando um dicionario para deixar extruturado por locais do sistema como exemplo:
...                     LOGIN e MENU
*** Variables ***
&{LOGIN}                element_form=xpath://form[@id="form-login"]
...                     field_user=xpath://input[@id="user"]
...                     field_password=xpath://input[@id="password"]
...                     element_remember_me=//*[@id="remember_me"]
...                     element_login=xpath://*[@id="form-login"]/div[2]/button
...                     element_sucess=xpath://span[contains(.,'Selecione uma opção')]


&{MENU}                 element_menu_iniciar=xpath://*[@id="menu-iniciar"]
...                     element_menu_contato=xpath://*[@id="menu-contato"]
...                     element_menu_sobre=xpath://*[@id="menu-sobre"]