all : building

building : 
	rm -rf /tmp/shitpaster-docs; \
	python3 -m mkdocs build --site-dir /tmp/shitpaster-docs
publish : building
	cd /tmp/shitpaster-docs; \
	git init; \
	git add *; \
	git commit -a -m "update pages"; \
	git push ssh://git@github.com/shitpaster/shitpaster.github.io.git master:master --force
