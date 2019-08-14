# Contributing

1- Se houver um problema notifique os administradores sobre o que você está trabalhando.

2- Use o repositório, desenvolva e teste suas alterações de código, adicione documentos se necessário;

3- Certifique-se de que suas mensagens de commit descrevem claramente as mudanças;

4- Envie o pull request para os adm's, lembrando que o pull request deve ser enviado primeiro para a branch "Development",depois de aprovado as alterações os adm`s subirão na branch Master.

## Criar um branch

1- Clonar o projeto em sua máquina (o nome do projeto está no BitBucket ou Git (Na aba Overview> O nome do projeto está do lado do Https), é só copiar e colar no comando).

```bash
 git clone [nomedoprojeto]
```

2- Criar uma branch para inserir suas modificações no código, lembrando que não será possível realizar alterações na branch Master, por isso deverá criar a sua própria branch (Como denifição de boas práticas, vamos colocar o nome do arquivo que estamos alterando).

```bash
git checkout -b [nomedabranch]
```

Se quiser verificar qual é a branch que está na sua máquina, use o comando (no terminal):

```bash
git branch
```

E se quiser verificar qual é a branch remoto, use (no terminal):

```bash
git branch -a
```

## Check-out e Commit nas criações e/ou alterações de código na sua branch

1- Realizar as criações e/ou  alterações no código;

2- Realizar o check-out no terminal.

```bash
git  checkout [nomedabranch]
```

3- Em seguida fazer o commit e inserir uma mensagem informando claramente qual alteração foi realizada.

```bash
git commit -m 'Inserir a mensagem da alteração'
```

## Pull request

1- Realizar o ``push request`` no terminal, inserindo o código abaixo, pra subir as alterações/inclusões realizadas.

```bash
git push origin [nomedabranch]
```

## Code Review

1- Avisar os  adm's para que façam um code review e realizem a aprovação ou reprovação.

* Obs:Em caso de reprovação, será necessário realizar as alterações conforme as regras de codificação e depois fazer todo o processo novamente.

## Boas Práticas

Exlusão da branch manualmente (no terminal) após aprovação do Pull Request e realizado o merge com a master.

```bash
git branch -d [nomedabranch]
```

2- No Code Review as convenções do editorconfig e rubocop vão ser cobrados.
