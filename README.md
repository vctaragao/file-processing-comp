# Projeto para testar como diferentes linguagens processam um arquivo que passa do seu limite de memória

Para o processamento de um arquivo que vai além da capacidade memória de um processo em uma determinada linguágem é necessário fazer o parseamento por partes utilizando alguma espécie de lazyness, no caso de arquivos esse processamento por parte é feito através de `streams` nas linguagens aqui implementadas.

## Para o uso desse projeto são necessários as tecnologias
- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Make (opcional, mas recomendado)
    - [Windows](https://stackoverflow.com/questions/32127524/how-to-install-and-use-make-in-windows)
    - [Ubuntu](https://howtoinstall.co/en/make)

Caso não possua, apenas precisa seguir o passo a passo de instalação, de acordo com o seu SO, presente em ná página especifica de cada uma delas.

---

## Inicialização
Clone o repositório onde desejar e dentro da pasta do repósitório rode o comando:
```bash
make up
```
Caso vc não tenha instalado o make:
```bash
docker compose up -d
docker exec -it node-file-processor bash -c "npm install"
```

> Daqui pra frente caso vc não tenha o **make** instalado pode seguir com os comandos que as chamadas deles representam dentro do arquivo `Makefile`

---

## Execução
Para rodar o processamento de arquivo em alguma linguagem especifica e ver o seu resultado pode executar

```bash
make <linguagem>-run
```

Por exemplo rodando o processamento em elixir:

```bash
make elixir-run
```

Gerando a saida
```bash
Tempo de execução: 0.54s
Memória alocada: 10.03 Mb
```

Caso queria acessar um container apenas precisa seguir o mesmo padrão de comando só que com **container** no final

```bash
make <linguagem>-container
```

---

## Contribuição

Atualmente no projeto temos as linguagens
 - node (js)
 - php8
 - elixir

Caso vc queria contribuir com a adição de um processamento em uma linguagem que vc gosta, ou melhorar a perfomance em lingaugem já inclusa e ver como ela se compara com as outras, seria sensacional! **Só forkear esse projeto e abrir um pull request.**