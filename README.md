# Quotes

## Development env.

In development env. everything works as expected:

```
docker-compose up
docker exec -it quotes_backend_1 bundle exec hanami db prepare
```

## Production env. without quotes

In production env. without quotes (check `.env.without-quotes`) works as expected:

```
docker-compose -f docker-compose.without-quotes.yml up
docker exec -e HANAMI_ENV=production -it quotes_backend_prodx_1 bundle exec hanami db prepare
```

## Production env. with quotes

In production env. with quotes (check `.env.with-quotes`):

```
docker-compose -f docker-compose.with-quotes.yml up
docker exec -e HANAMI_ENV=production -it quotes_backend_prod_1 bundle exec hanami db prepare
```

gives the following error:

```
bad URI(is not URI?): "postgresql://db_prod/quotes_production?user=postgres&password=postgres_admin_password"
/usr/local/lib/ruby/2.4.0/uri/rfc3986_parser.rb:67:in `split'
	/usr/local/lib/ruby/2.4.0/uri/rfc3986_parser.rb:73:in `parse'
	/usr/local/lib/ruby/2.4.0/uri/common.rb:231:in `parse'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator/connection.rb:128:in `parsed_uri'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator/connection.rb:37:in `host'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator/adapter.rb:185:in `host'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator/postgres_adapter.rb:67:in `set_environment_variables'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator/postgres_adapter.rb:34:in `create'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator.rb:287:in `create'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator.rb:332:in `prepare'
	/usr/local/bundle/gems/hanami-model-1.2.0/lib/hanami/model/migrator.rb:247:in `prepare'
	/usr/local/bundle/gems/hanami-1.2.0/lib/hanami/cli/commands/db/prepare.rb:26:in `prepare_database'
	/usr/local/bundle/gems/hanami-1.2.0/lib/hanami/cli/commands/db/prepare.rb:17:in `call'
	/usr/local/bundle/gems/hanami-1.2.0/lib/hanami/cli/commands/command.rb:85:in `call'
	/usr/local/bundle/gems/hanami-cli-0.2.0/lib/hanami/cli.rb:57:in `call'
	/usr/local/bundle/gems/hanami-1.2.0/bin/hanami:6:in `<top (required)>'
	/usr/local/bundle/bin/hanami:21:in `load'
	/usr/local/bundle/bin/hanami:21:in `<top (required)>'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/cli/exec.rb:75:in `load'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/cli/exec.rb:75:in `kernel_load'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/cli/exec.rb:28:in `run'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/cli.rb:424:in `exec'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/vendor/thor/lib/thor/invocation.rb:126:in `invoke_command'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/vendor/thor/lib/thor.rb:387:in `dispatch'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/cli.rb:27:in `dispatch'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/vendor/thor/lib/thor/base.rb:466:in `start'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/cli.rb:18:in `start'
	/usr/local/lib/ruby/gems/2.4.0/gems/bundler-1.16.0/exe/bundle:30:in `block in <top (required)>'
	/usr/local/lib/ruby/site_ruby/2.4.0/bundler/friendly_errors.rb:122:in `with_friendly_errors'
	/usr/local/lib/ruby/gems/2.4.0/gems/bundler-1.16.0/exe/bundle:22:in `<top (required)>'
	/usr/local/bundle/bin/bundle:104:in `load'
	/usr/local/bundle/bin/bundle:104:in `<main>'
```

