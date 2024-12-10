# Bem-vindo(a) ao Guia de Contribuição do Minerva Sats! :sattelite: :rocket:

Olá, futur@ Satéliter! :wave:  
Antes de apertar o botão de **merge**, queremos te dar as boas-vindas e apresentar nosso manual de contribuição. Aqui você vai aprender a colaborar com nossos repositórios, entender a lógica por trás do nosso fluxo de desenvolvimento e, de quebra, ver um pouco de gramática formal aplicada às nossas convenções de nomenclatura de branches, PRs e commits!

## Por que esse guia?

A **Minerva Sats** é fruto do esforço de um grupo estudantil apaixonado por engenharia, ciência e, claro, espaço sideral! Desenvolvemos nanosatélites Cubesats universitários e para isso precisamos de um ecossistema de código bem organizado, claro e consistente. Este guia serve para:

- Padronizar a contribuição no repositório.
- Facilitar a compreensão do histórico do projeto.
- Promover um ambiente acolhedor para novos colaboradores.

## Como Contribuir

1. **Criação de Issue:** Encontrou um ponto de melhoria ou foi designada uma tarefa? Abra uma **issue**. As issues são o ponto de partida de tudo.
2. **Branch por Issue:** Cada branch deve estar associada a uma issue. Isso facilita o tracking e garante que o histórico de desenvolvimento permaneça claro.
3. **Commits e PRs Claros:** Mensagens de commit e nomes de PR devem ser descritivos. A ideia é que qualquer pessoa que leia o histórico consiga entender rapidamente o que foi feito.
4. **Tests & Reviews:** Antes de criar seu Pull Request, garanta que o código está testado e funcional. Espere a revisão dos(as) mantenedores(as) e faça ajustes se necessário.
5. **Merge:** Após a aprovação, faça o merge e celebre mais um passo rumo ao infinito e além! :tada:

## Convenções de Nomenclatura

Usaremos a BNF (Backus-Naur Form) para definir a gramática das nossas convenções. Porque todo mundo adora um pouquinho de formalismo, não é mesmo? :nerd_face:

### Branches

A regra é simples: toda branch deve estar associada a uma issue. Suponha que a issue #42 seja sobre implementar um novo sensor. Então a branch poderia se chamar:

`42-implementar-novo-sensor`

#### BNF para Branches

```bnf
<branch> ::= <issue-number> "-" <branch-title>
<issue-number> ::= <digit> {<digit>}
<branch-title> ::= <lowercase> {<lowercase> | "-"}

<digit> ::= "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"
<lowercase> ::= "a" | "b" | "c" | ... | "z"
```

**Exemplo:**
- `14-fixar-bug-de-downtilt`
- `27-adicionar-telemetria`


### Pull Requests

A ideia é que o PR já deixe claro a que issue se refere e o que está sendo resolvido. Algo como:

`PR#42: Implementar novo sensor`

#### BNF para PR

```bnf
<pr-title> ::= "PR#" <issue-number> ":" <pr-desc>
<pr-desc> ::= <word> {<word>}

<word> ::= <lowercase> {<lowercase>}
```

**Exemplo:**
- `PR#14: Fixar bug de downtilt`
- `PR#27: Adicionar telemetria`

### Commits

Para commits, inspiramo-nos no padrão do [Conventional Commits](https://www.conventionalcommits.org/), mas você é livre para criar o escopo e descrição de forma clara. Exemplo:

`feat(sensor): adicionar módulo de telemetria`

#### BNF para Commits

```bnf
<commit-message> ::= <type> "(" <scope> "): " <description>

<type> ::= "feat" | "fix" | "docs" | "style" | "refactor" | "test" | "chore"
<scope> ::= <word>
<description> ::= <word> {<word>}

<word> ::= <lowercase> {<lowercase>}
```

**Exemplo:**
- `fix(antena): corrigir indexação do array de potência`
- `feat(navegacao): adicionar cálculo de órbita`


## Referências e Inspirações

- [Guia Oficial de Contribuição do GitHub](https://docs.github.com/pt/contributing-to-projects)  
- [Conventional Commits](https://www.conventionalcommits.org/)  
- [Contributor Covenant](https://www.contributor-covenant.org/)  
- [GitLab Workflow](https://docs.gitlab.com/ee/topics/gitlab_flow.html)


## Dúvidas?

Ficou com alguma dúvida? Fale com seu gerente ou dê um grito no nosso Discord. Teremos o maior prazer em ajudar!

**Avante!** :satellite:  
