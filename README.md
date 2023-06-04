[![made-with-latex](https://img.shields.io/badge/Made%20with-LateX-blue?logo=Latex)](https://www.latex-project.org/) [![CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey?logo=Creative%20Commons)](http://creativecommons.org/licenses/by/4.0/) [![template-Overleaf-green](https://img.shields.io/badge/Template-Overleaf-green?logo=Overleaf)](https://www.overleaf.com/latex/templates/ipt-dissertacao/txmkjzcmcdnn) [![Build IPT LaTeX document](https://github.com/manascimento/template-ipt/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/manascimento/template-ipt/actions/workflows/main.yml) [![version](https://img.shields.io/badge/version-v1.1.0-blue)](https://github.com/manascimento/template-ipt/releases/tag/v1.1.0)

# Modelo para dissertação de mestrado do IPT
Modelo para escrita de dissertação de mestrado do curso de computação aplicação do Instituto de Pesquisas Tecnológicas do Estado de São Paulo.

Este modelo foi elaborado seguindo as regras do arquivo *Guia para elaboração da dissertação de mestrado e monografias*, onde constam as diretrizes e normas para elaborar e formatar as dissertações do IPT disponível no SAPIENS.

## Estrutura de pastas
Abaixo são descritas informações sobre todos os diretórios.

- O diretório `classes` são armazenadas todas as classes;
- O diretório `figures` são armazenadas todas as figuras;
- O diretório `index` é armazenado o *layout* do índice;
- O diretório `packages` são armazenados todos os pacotes necessários do modelo;
- O diretório `pdfs` são armazenados todos os arquivos PDFs que serão usados na dissertação;
- O diretório `references` são armazenados os arquivos para referências bibliográficas (arquivos `.bib`);
- O diretório `pretextual` contém todos os elementos pré-textuais conforme guia do IPT;
- O diretório `textual` contém todos os elementos textuais conforme guia do IPT;
- O diretório `posttextual` contém todos os elementos elementos pós-textuais conforme guia do IPT.

## Principais arquivos
Abaixo são listados os arquivos estruturais do modelo (*template*).

- O arquivo `thesis.cls` contém todos pacotes e as principais regras da estrutura do modelo (*evite alterar este arquivo*);
- O arquivo `userpreamble.sty` contém informações estruturais da dissertação, tais como: título, autor, etc;
- O arquivo `main.tex` é responsável por orquestrar toda a estrutura do modelo;
- O arquivo `pretextual/pretextual_main.tex` organiza todos os elementos pré-textuais conforme guia do IPT;
- O arquivo `textual/textual_main.tex` organiza todos os elementos textuais conforme o guia do IPT;
- O arquivo `posttextual/posttextual_main.tex` organiza todos os elementos pós-textuais conforme guia do IPT.

## Edição recomendada
Abaixo são listados os arquivos que podem ser editados para iniciar a escrita da dissertação por meio deste modelo (*template*). Não precisa ser necessariamente nesta ordem.

- Edite o arquivo `userpreamble.sty` e personalize-o com todos os dados da sua dissertação;
- Edite o arquivo `pretextual_main.tex` e comente as seções opcionais que desejar remover da sua dissertação;
- Edite os arquivos que representam os elementos pré-textuais e acrescente as informações de acordo com sua dissertação;
- Edite o arquivo `textual_main.tex` e personalize-o com todos os capítulos da sua dissertação;
- Edite os arquivos que representam os elementos pós-textuais e personalize-os como desejar.

\* *Todos elementos considerados opcionais de (acordo com o guia o IPT) não precisam ser editados e podem ser comentados para não fazer parte da dissertação.*

## Modelo Overleaf
Este modelo pode ser utilizado em ambiente local, mas se desejar o mesmo está disponível na galeria de templates do Overleaf.

## Restrições
Como o modelo utiliza a fonte Arial, certifique-se que esta fonte esteja instalada no ambiente operacional em caso de uso local.
