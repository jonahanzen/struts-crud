

## Struts - Crud

Este projeto tem como objetivo demonstrar um crud extremamente simples, e o menos poluído possível (que estava ao meu alcance) para servir como uma referencia do mínimo necessário para utilizar o Struts e suas funcionalidades.
Do mais, é o meu primeiro contato com o framework, e entendo que há muito o que melhorar :P .

###  Ferramentas utilizadas

Java SE 11, JakartaEE 8, PostgreSQL, Maven, WildFly, ASM 9.2, Hibernate, Struts 2.5.28

O projeto está dividido em camadas de forma que:

- **model** contém os modelos do que é utilizado no projeto
    - **entity** corresponde a entidade mapeada com o banco de dados
    - **repository** corresponde ao CRUD sem lógica, apenas fazendo as operações no banco de dados
    - **service** serve como a lógica antes de própriamente chamar repository
- **actions**  corresponde ao "controller", o nome é uma convenção do Struts e, contém o mapeamento das ações, um "servlet" que pode ser chamado.

O fluxo acontece de forma que nas actions praticamente não haja lógica e, só se faça delegar as chamadas (ainda não há tratamento de erro). a lógica "maior" é feita no service, que por sua vez após as verificações (a nível de exemplo), chama (ou não) o repository que finalmente executa os métodos no banco de dados.

***CONSIDERAÇÕES ADICIONAIS***

- O struts deve ser referenciado em web.xml
- Através do uso das convenções e anotações, não se faz necessário a configuração pelo struts.xml (notar ausência do arquivo)
- A conexão foi configurada no próprio Wildfly, então persistence.xml conta apenas com uma configuração mínima 

Sobre as anotações:

- @Action torna possivel chamar o método de forma remota/dinamica, a partir de por exemplo uma JSP
- @Result define o resultado de uma action, que pode ser definida em escopo global a nível de classe ou local a nível de método


Links adicionais:

https://struts.apache.org/plugins/convention/

https://www.javatpoint.com/struts-2-tutorial