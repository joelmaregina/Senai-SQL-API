 # 📃 Relatório do Teste de Integração da API :

## **Objetivo**:
Este teste tem a finalidade de descrever os resultados do Teste de Integração realizado na aplicação ExoAPI utilizando a ferramenta XUnit do Framework .NET(C#).

## **Sobre o teste**:

|Aplicativo| ExoAPI |
|----------------|----------|
| Objetivo| Testar a funcionalidade do login : <br> válido e inválido|
| Ferramentas | XUnit ( Framework.NET) <br> Dependência Mock |
| Linguagem | C# |
| IDE| Visual Studio |
| Tipo de teste| Teste de Integração |
| Casos de teste com êxito| 2 => 100%|
| Casos de teste com falha| 0 => 0% |
|Responsável pelo teste|Joelma Regina Assis|
---
## **Desenho de teste :**
- O desenho do teste desenvolvido pode ser visto através desde <a href = "https://github.com/joelmaregina/Senai-SQL-API/blob/master/API/ExoAPI/TestXUnit/Controllers/LoginControllerTest.cs">link</a>.

---
### **Caso de Teste 1: - Tentativa de login com usuário e senha inválidos:**
#### **Objetivo**
- Avaliar se após a inserção de dados de email e senha incorretos, a aplicação retorna que o Acesso(login) não é autorizado
#### **Resultado**
- Durante a chamada do método, ocorre o resultado esperado, a aplicação retorna que o Acesso (login) não é autorizado.
----
### **Caso de Teste 2: - Tentativa de login com usuário e senha válidos:**
#### **Objetivo**
- Avaliar se após a inserção de dados de email e senha corretos, a aplicação retorna que o Acesso(login) do usuário foi autorizado.
#### **Resultado**
- Durante a chamada do método, ocorre o resultado esperado, a aplicação retorna que o Acesso(login) do usuário foi autorizado.

---
### **Resultado do teste :**

- Conforme mostrado na imagem abaixo, a aplicação testada correspondeu ás expectativas de funcionamento, sendo aprovados em todos os testes acima descritos e analisados.

 <img alt= "Printscreen da tela de resultados do teste, mostrando aprovação em todos os casos de teste" src= "https://github.com/joelmaregina/Senai-SQL-API/blob/master/API/img/ResultadoTeste.png"> 




