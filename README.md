PES-Gherkin-BDD

<h3><strong>Ferramentas utilizadas:</strong></h3>
<table data-v-3bc00e7e="" class="vertical-align-center table table-striped table-hover" style="height: 276px;">
	<thead data-v-3bc00e7e="">
		<tr data-v-3bc00e7e="" style="height: 37px;">
			<th data-v-3bc00e7e="" scope="VSCode" class="text-center sortable group-divider" style="width: 305.645px; height: 37px;"><span data-v-3bc00e7e=""> VSCode </span></th>
			<th data-v-3bc00e7e="" scope="Prezi" class="text-center sortable group-divider" style="width: 301.641px; height: 37px;"><span data-v-3bc00e7e=""> Prezi</span></th>
			<th data-v-3bc00e7e="" scope="Robot" class="text-center sortable group-divider" style="width: 307.715px; height: 37px;"><span data-v-3bc00e7e=""> Robot Framework </span></th>
		</tr>
	</thead>
	<tbody data-v-3bc00e7e="">
		<tr data-v-3bc00e7e="" style="height: 165px;">
			<td data-v-3bc00e7e="" class="" style="height: 165px; width: 305.645px;"><center><a href="https://code.visualstudio.com/download" target="_blank" rel="noopener"> <img class="language-icon" src="https://i.redd.it/m8tfmccojwb31.png" width="146" height="145" style="vertical-align: center;" alt="visualstudio" /> </a></center></td>
			<td data-v-3bc00e7e="" class="" style="height: 165px; width: 301.641px;"><center><a href="https://prezi.com/p/edit/xntl3jxrsjga/" target="_blank" rel="noopener"> <img class="language-icon" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Prezi_logo_transparent_2012.svg/245px-Prezi_logo_transparent_2012.svg.png" width="142" height="142" style="vertical-align: center;" alt="prezi" /></a></center></td>
			<td data-v-3bc00e7e="" class="" style="height: 165px; width: 307.715px;"><center><a href="https://robotframework.org/" target="_blank" rel="noopener"> <img class="language-icon" src="https://tomiturtiainen.gallerycdn.vsassets.io/extensions/tomiturtiainen/rf-intellisense/2.8.0/1572279203487/Microsoft.VisualStudio.Services.Icons.Default" width="148" height="148" style="vertical-align: center;" alt="robotframework" /> </a></center></td>
		</tr>
		<tr style="height: 37px;">
			<td style="width: 305.645px; height: 37px;"></td>
			<td style="width: 301.641px; height: 37px; text-align: center;"><span data-v-3bc00e7e="">&nbsp; &nbsp;"Apresenta&ccedil;&atilde;o"</span></td>
			<td style="width: 307.715px; height: 37px;"></td>
		</tr>
	</tbody>
</table>

---

# Conceitos 
- Gherkin
- BDD

## O que é Gherkin?

1. Gherkin não é BDD.
2. É uma linguagem natural que pode ser compreendida por todos os times da organização.
3. Segue a estrutura de **DADO**, **QUANDO** e **ENTÃO**.
4. Pode ser interpretado por **pessoas** e **_máquinas_**, e também pode ser utilizado na automação de testes;

---

Um dos principais elementos, quando se trata de automação de testes, em BDD é o Gherkin.
Os *"testes automatizados"* vem crescendo rapidamente, no mercado de qualidade de software, nos últimos anos.
A automatização de rotinas repetitivas de teste é uma estratégia para que o testador não precise perder tanto tempo fazendo todo o fluxo de testes, novamente.
Entendendo que o tempo é um recurso muito importante, principalmente nos tempos atuais, com as concorrências de mercado, a qualidade na entrega de sistemas vem se tornando cargo chefe para uma boa venda e também para manutenção do cliente.
Tratando de padronização, documentação, e até mesmo na reciclagem de código e funcionalidades, o **Gherkin** é uma opção muito forte. 
Por ser **focado na regra de negócio** ele é escrito em forma de passos que devem especificar cada etapa de interação do usuário com o sistema a ser testado.
Ele também serve para **deixar nossos testes automatizados super fáceis de se ler, inclusive, para uma pessoa totalmente leiga no assunto**. A programação vai “por trás”, já que, literalmente, o tester vai escrever um código para executar, na prática, o que o Gherkin descreve.
Em resumo, se trata de uma descrição da regra de negócio do sistema, escrita passo-a-passo. 
No exemplo abaixo, os passos para realizar login em uma aplicação *XPTO*, ficaria assim:

### Estrutura

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

#### Obs.: 
É preciso entender que no Gherkin existem *"Keywords"* a serem utilizadas para especificar a forma como cada step interage com o sistema. 

#### Keywords 

- **Given (pt: Dado)**: Utilizado para especificar uma pré condição, dentro desse step é feita a validação de uma condição antes de se prosseguir para os próximos passos. Por se tratar de uma pré condição, normalmente vem escrito no passado;
- **When  (pt: Quando)**: Utilizado quando será executada uma ação de que se espera uma reação vinda do sistema, que será validada no step “Then”. Este passo vem escrito no presente;
- **Then  (pt: Então)**: Valida se o esperado aconteceu. Segue sempre um passo do tipo “Quando”, pois aqui é validada a reação da ação recebida. Por se tratar do resultado esperado, normalmente vem escrito na forma de futuro próximo;
- **And (pt: E)**: Caso seja necessário mais uma interação com o sistema para complementar um fluxo, mas que não necessariamente se trata de uma ação ou reação, se utiliza “And”;
- **But (pt: Mas)**: No geral serve a mesma funcionalidade do “And”, porém é normalmente utilizado após uma validação negativa depois do “Then”;

#### **Importante:**
- Note que, no padrão gherkin, são utilizadas personas (terceira pessoa) para executar a ação, portanto utilizar nomes aleatórios ou "Fulano" ajuda muito na interação da persona com o sistema e no entendimento de quem está lendo a documentação;

- Com a utilização de personas, as interações ficam mais legíveis também na geração de cada report ou logs dos resultados de teste;

# BDD
## O que é BDD?

1. BDD não é Gherkin;
2. BDD não é voltado para teste;
3. BDD não é automação de testes;
4. BDD significa: Desenvolvimento Orientado por Comportamento, ou seja, seu foco é voltado para o comportamento do software;
5. Tem como objetivo auxiliar e melhorar a comunicação do time;
6. Auxilia no qualidade de planejamento e implementações de features;

#### Exemplo prático de BDD:

PO envia ao time de QA o wireframe de uma determinada tela que será desenvolvida. Nesse momento o QA se reune com o PO (e analista de negócios), para discutir os cenários daquela tela.

Quando esse alinhamento é feito utilizando Gherkin, temos a seguinte representação:

#### Storytelling:

- **SENDO** um visitante do site da Amazon
- **QUERO** realizar pesquisa de um determinado livro
- **PARA** que possa realizar a compra de um exemplar

#### Cenário #1: Compra de item sem que o usuário esteja logado no sistema

- **DADO QUE** Coviderson acessa o site da Amazon
- **E** a Tab contém o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
- **QUANDO** Coviderson realizar a busca pelo item "Qualidade E Teste Em Software" no campo de pesquisa
- **ENTÃO** o item "Qualidade E Teste Em Software" deverá aparecer na lista de resultados
- **E** ao escolher o item "Qualidade E Teste Em Software", ao clicar para comprar
- **MAS** sem estar logado, o sistema deve redirecionar para a página de login

O BDD é o desenvolvimento guiado por comportamento, note que não tem a palavra "TESTE" aqui, portando escrever cenários em BDD deve ser uma especificação para guiar o processo de desenvolvimento. Então, se você utilizada o BDD somente para testar sua motivação não está correta, o ideal é você escrever cenários em BDD para enriquecer o processo como um todo. Para ajudar no aprimoramento do time, e ajudar a tornar os times mais colaborativos, ou seja, o BDD vem antes de codificar o software, antes de codificar a funcionalidade.
Os cenários são escritos para enriquecer as histórias de usuários, o Dev e o PO entendem qual é o  objetivo, os times ficam alinhados.
Com as  expectativas alinhadas, o desenvolvimento será realizado orientados por este comportamento e consequentemente, testar orientado por este comportamento, aí sim existirá uma aplicação correta do BDD.

#### Vantagens do BDD

1. **Comunicação entre as equipes**: Nas empresas de desenvolvimento de software é muito comum que desenvolvedores e testadores não trabalhem em conjunto para atingir o objetivo da empresa. BDD possibilita essa integração visto que os testadores podem escrever os cenários de teste para os desenvolvedores implementarem;
2. **Compartilhamento de conhecimento**: Com intensificação do trabalho em conjunto, possibilitado pelo BDD, e a troca de conhecimentos há grandes possibilidades de ter uma equipe multifuncional;
3. **Documentação dinâmica**: Geralmente as equipe não documentam as funcionalidades, e regras de negócio, por entenderem que a manutenção destes artefatos são muitos custosas. Utilizando algum frameworks de BDD os artefatos são gerados de forma dinâmica, sem nenhum esforço adicional, e alguns, inclusive, geram relatórios em formato HTML, facilitando consultas posteriores;
4. **Visão do todo**: O BDD sugere que os analistas, em parceira com os testadores, escrevam os cenários antes mesmo do desenvolvimento e implementação dos testes. Desta forma o objetivo do projeto fica mais claro para os desenvolvedores.
5. **Uso de outras técnicas**: Com a adoção da metodologia de BDD, é possível também trabalhar em conjunto com o **TDD (Test-Driven Development ou Desenvolvimento orientado a teste)**, sendo assim um poderá complementar o outro resultando em um códico limpo e de fácil manutenção.

#### Ferramenta utilizada

- **Robot Framework**
- [Guia de instalação](https://github.com/ScParis/PES-Gherkin-BDD/blob/main/guide/instalation_guide.md)
