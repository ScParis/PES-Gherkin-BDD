PES-Gherkin-BDD

# Conceito - Gherkin

Um dos principais elementos, quando se trata de automação de testes, em BDD é o Gherkin.

Os *"testes automatizados"* vem crecendo rapidamente, no mercado de qualidade de software, nos últimos anos.

A automatização de rotinas repetitivas de teste é uma estratégia para que o testador não precise perder tanto tempo fazendo todo o fluxo de testes, novamente.

Entendendo que o tempo é um recurso muito importante, pricipalmente nos tempos atuais, com as concorrências de mercado, a qualidade na entrega de sistemas vem se tornando cargo chefe para uma boa venda e também para manutenção do cliente.

Tratando de padronização, documentação, e até mesmo na reciclagem de código e funcionalidades, o **Gherkin** é uma opção muito forte. 

Por ser **focado na regra de negócio** ele é escrito em forma de passos que devem especificar cada etapa de interação do usuário com o sistema a ser testado.

Ele também serve para **deixar nossos testes automatizados super fáceis de se ler, inclusive, para uma pessoa totalmente leiga no assunto**. A programação vai “por trás”, já que, literalmente, o tester vai escrever um código para executar, na prática, o que o Gherkin descreve.

Em resumo, se trata de uma descição da regra de negócio do sistema, escrita passo-a-passo. 

No exemplo abaixo, os passos para realizar login em uma aplivação *XPTO*, ficaria assim:

1. Pré condição: Possuir uma conta no sistema
2. Acessar a página de login
3. Preencher credenciais
4. Clicar no botão de login
5. Esperar o login ser completado

Em Gherkin, esse fluxo seria assim:

1. Dado que “Fulano” possui uma conta no sistema
2. E ele acessa a página de login
3. E ele preenche suas credenciais válidas
4. Quando ele aciona a opção de realizar login
5. Então ele deve ser redirecionado para a página inicial logado

Obs.: É preciso entender que no Gherkin existem *"Keywords"* a serem utilizadas para especificar a forma como cada step interage com o sistema. 

- Given (pt: Dado): Utilizado para especificar uma pré condição, dentro desse step é feita a validação de uma condição antes de se prosseguir para os próximos passos. Por se tratar de uma pré condição, normalmente vem escrito no passado;
- When (pt: Quando): Utilizado quando será executada uma ação de que se espera uma reação vinda do sistema, que será validada no step “Then”. Este passo vem escrito no presente;
- Then (pt: Então): Valida se o esperado aconteceu. Segue sempre um passo do tipo “Quando”, pois aqui é validada a reação da ação recebida. Por se tratar do resultado esperado, normalmente vem escrito na forma de futuro próximo;
- And (pt: E): Caso seja necessário mais uma interação com o sistema para complementar um fluxo, mas que não necessariamente se trata de uma ação ou reação, se utiliza “And”;
- But (pt: Mas): No geral serve a mesma funcionalidade do “And”, porém é normalmente utilizado após uma validação negativa depois do “Then”;

**Importante:**
    Note que, no padrão gherkin, são utilizadas personas (terceira pessoa) para executar a ação.
    Com a utilização de personas, as interações ficam mais legíveis, também na geração de cada report.
