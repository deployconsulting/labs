docs: docs-deps
	cd docs && bundle exec jekyll serve

docs-public: docs-deps
	cd docs && bundle exec jekyll serve --host=0.0.0.0

docs-deps:
	cd docs && bundle install

docs-clean:
	- rm -rf docs/_site

clean: docs-clean