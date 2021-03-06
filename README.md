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

## O que ?? Gherkin?

1. Gherkin n??o ?? BDD.
2. ?? uma linguagem natural que pode ser compreendida por todos os times da organiza????o.
3. Segue a estrutura de **DADO**, **QUANDO** e **ENT??O**.
4. Pode ser interpretado por **pessoas** e **_m??quinas_**, e tamb??m pode ser utilizado na automa????o de testes;

---

Um dos principais elementos, quando se trata de automa????o de testes, em BDD ?? o Gherkin.
Os *"testes automatizados"* vem crescendo rapidamente, no mercado de qualidade de software, nos ??ltimos anos.
A automatiza????o de rotinas repetitivas de teste ?? uma estrat??gia para que o testador n??o precise perder tanto tempo fazendo todo o fluxo de testes, novamente.
Entendendo que o tempo ?? um recurso muito importante, principalmente nos tempos atuais, com as concorr??ncias de mercado, a qualidade na entrega de sistemas vem se tornando cargo chefe para uma boa venda e tamb??m para manuten????o do cliente.
Tratando de padroniza????o, documenta????o, e at?? mesmo na reciclagem de c??digo e funcionalidades, o **Gherkin** ?? uma op????o muito forte. 
Por ser **focado na regra de neg??cio** ele ?? escrito em forma de passos que devem especificar cada etapa de intera????o do usu??rio com o sistema a ser testado.
Ele tamb??m serve para **deixar nossos testes automatizados super f??ceis de se ler, inclusive, para uma pessoa totalmente leiga no assunto**. A programa????o vai ???por tr??s???, j?? que, literalmente, o tester vai escrever um c??digo para executar, na pr??tica, o que o Gherkin descreve.
Em resumo, se trata de uma descri????o da regra de neg??cio do sistema, escrita passo-a-passo. 
No exemplo abaixo, os passos para realizar login em uma aplica????o *XPTO*, ficaria assim:

### Estrutura

1. Pr?? condi????o: Possuir uma conta no sistema
2. Acessar a p??gina de login
3. Preencher credenciais
4. Clicar no bot??o de login
5. Esperar o login ser completado

Em Gherkin, esse fluxo seria assim:

1. Dado que ???Fulano??? possui uma conta no sistema
2. E ele acessa a p??gina de login
3. E ele preenche suas credenciais v??lidas
4. Quando ele aciona a op????o de realizar login
5. Ent??o ele deve ser redirecionado para a p??gina inicial logado

#### Obs.: 
?? preciso entender que no Gherkin existem *"Keywords"* a serem utilizadas para especificar a forma como cada step interage com o sistema. 

#### Keywords 

- **Given (pt: Dado)**: Utilizado para especificar uma pr?? condi????o, dentro desse step ?? feita a valida????o de uma condi????o antes de se prosseguir para os pr??ximos passos. Por se tratar de uma pr?? condi????o, normalmente vem escrito no passado;
- **When  (pt: Quando)**: Utilizado quando ser?? executada uma a????o de que se espera uma rea????o vinda do sistema, que ser?? validada no step ???Then???. Este passo vem escrito no presente;
- **Then  (pt: Ent??o)**: Valida se o esperado aconteceu. Segue sempre um passo do tipo ???Quando???, pois aqui ?? validada a rea????o da a????o recebida. Por se tratar do resultado esperado, normalmente vem escrito na forma de futuro pr??ximo;
- **And (pt: E)**: Caso seja necess??rio mais uma intera????o com o sistema para complementar um fluxo, mas que n??o necessariamente se trata de uma a????o ou rea????o, se utiliza ???And???;
- **But (pt: Mas)**: No geral serve a mesma funcionalidade do ???And???, por??m ?? normalmente utilizado ap??s uma valida????o negativa depois do ???Then???;

#### **Importante:**
- Note que, no padr??o gherkin, s??o utilizadas personas (terceira pessoa) para executar a a????o, portanto utilizar nomes aleat??rios ou "Fulano" ajuda muito na intera????o da persona com o sistema e no entendimento de quem est?? lendo a documenta????o;

- Com a utiliza????o de personas, as intera????es ficam mais leg??veis tamb??m na gera????o de cada report ou logs dos resultados de teste;

# BDD
## O que ?? BDD?

1. BDD n??o ?? Gherkin;
2. BDD n??o ?? voltado para teste;
3. BDD n??o ?? automa????o de testes;
4. BDD significa: Desenvolvimento Orientado por Comportamento, ou seja, seu foco ?? voltado para o comportamento do software;
5. Tem como objetivo auxiliar e melhorar a comunica????o do time;
6. Auxilia no qualidade de planejamento e implementa????es de features;

#### Exemplo pr??tico de BDD:

PO envia ao time de QA o wireframe de uma determinada tela que ser?? desenvolvida. Nesse momento o QA se reune com o PO (e analista de neg??cios), para discutir os cen??rios daquela tela.

Quando esse alinhamento ?? feito utilizando Gherkin, temos a seguinte representa????o:

#### Storytelling:

- **SENDO** um visitante do site da Amazon
- **QUERO** realizar pesquisa de um determinado livro
- **PARA** que possa realizar a compra de um exemplar

#### Cen??rio #1: Compra de item sem que o usu??rio esteja logado no sistema

- **DADO QUE** Coviderson acessa o site da Amazon
- **E** a Tab cont??m o texto: "Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
- **QUANDO** Coviderson realizar a busca pelo item "Qualidade E Teste Em Software" no campo de pesquisa
- **ENT??O** o item "Qualidade E Teste Em Software" dever?? aparecer na lista de resultados
- **E** ao escolher o item "Qualidade E Teste Em Software", ao clicar para comprar
- **MAS** sem estar logado, o sistema deve redirecionar para a p??gina de login

O BDD ?? o desenvolvimento guiado por comportamento, note que n??o tem a palavra "TESTE" aqui, portando escrever cen??rios em BDD deve ser uma especifica????o para guiar o processo de desenvolvimento. Ent??o, se voc?? utilizada o BDD somente para testar sua motiva????o n??o est?? correta, o ideal ?? voc?? escrever cen??rios em BDD para enriquecer o processo como um todo. Para ajudar no aprimoramento do time, e ajudar a tornar os times mais colaborativos, ou seja, o BDD vem antes de codificar o software, antes de codificar a funcionalidade.
Os cen??rios s??o escritos para enriquecer as hist??rias de usu??rios, o Dev e o PO entendem qual ?? o  objetivo, os times ficam alinhados.
Com as  expectativas alinhadas, o desenvolvimento ser?? realizado orientados por este comportamento e consequentemente, testar orientado por este comportamento, a?? sim existir?? uma aplica????o correta do BDD.

#### Vantagens do BDD

1. **Comunica????o entre as equipes**: Nas empresas de desenvolvimento de software ?? muito comum que desenvolvedores e testadores n??o trabalhem em conjunto para atingir o objetivo da empresa. BDD possibilita essa integra????o visto que os testadores podem escrever os cen??rios de teste para os desenvolvedores implementarem;
2. **Compartilhamento de conhecimento**: Com intensifica????o do trabalho em conjunto, possibilitado pelo BDD, e a troca de conhecimentos h?? grandes possibilidades de ter uma equipe multifuncional;
3. **Documenta????o din??mica**: Geralmente as equipe n??o documentam as funcionalidades, e regras de neg??cio, por entenderem que a manuten????o destes artefatos s??o muitos custosas. Utilizando algum frameworks de BDD os artefatos s??o gerados de forma din??mica, sem nenhum esfor??o adicional, e alguns, inclusive, geram relat??rios em formato HTML, facilitando consultas posteriores;
4. **Vis??o do todo**: O BDD sugere que os analistas, em parceira com os testadores, escrevam os cen??rios antes mesmo do desenvolvimento e implementa????o dos testes. Desta forma o objetivo do projeto fica mais claro para os desenvolvedores.
5. **Uso de outras t??cnicas**: Com a ado????o da metodologia de BDD, ?? poss??vel tamb??m trabalhar em conjunto com o **TDD (Test-Driven Development ou Desenvolvimento orientado a teste)**, sendo assim um poder?? complementar o outro resultando em um c??dico limpo e de f??cil manuten????o.

#### Ferramenta utilizada

- **Robot Framework**
- [Guia de instala????o](https://github.com/ScParis/PES-Gherkin-BDD/blob/main/guide/instalation_guide.md)
