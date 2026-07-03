# My First Rails App

Aplicação Rails de exemplo com CRUD de carros (`Car`: make, model, year).

A stack foi atualizada para **Ruby 3.3** e **Rails 8**, removendo dependências fora de suporte e vulnerabilidades conhecidas das versões anteriores (Ruby 2.6 / Rails 5.2).

## Requisitos

- Ruby 3.3.11+
- Bundler
- SQLite (development e test)
- PostgreSQL (production)

No Windows, use o [RubyInstaller com DevKit/MSYS2](https://rubyinstaller.org/). Se o `ruby` não estiver no `PATH`, adicione o diretório `bin` da instalação (por exemplo `C:\Ruby33-x64\bin`).

## Setup

```bash
bundle install
bin/rails db:setup
bin/rails server
```

A aplicação fica disponível em [http://localhost:3000](http://localhost:3000).

## Testes

```bash
bin/rails test
```

Testes de sistema (opcional, requer Chrome):

```bash
bin/rails test:system
```

## Auditoria de segurança

```bash
bundle exec bundle-audit check --update
bundle exec brakeman
```

## Production / Heroku

- Use PostgreSQL via `DATABASE_URL`
- Defina `RAILS_MASTER_KEY` (ou `SECRET_KEY_BASE`) no ambiente de deploy
- O `Procfile` inicia o Puma com `config/puma.rb`
- SSL é forçado em production (`config.force_ssl = true`)

Exemplo de variáveis:

```bash
DATABASE_URL=postgres://...
RAILS_MASTER_KEY=...
RAILS_SERVE_STATIC_FILES=true
```

## Stack atual

| Componente | Versão |
|---|---|
| Ruby | 3.3.11 |
| Rails | ~> 8.0 |
| Puma | >= 6.4 |
| Assets | Propshaft + importmap-rails + Turbo/Stimulus |
| Banco (dev/test) | SQLite |
| Banco (production) | PostgreSQL |

## Funcionalidades

- Listar, criar, editar e remover carros
- Respostas HTML e JSON (`jbuilder`)
- Health check em `/up`
