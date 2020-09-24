timestamp := $(shell /bin/date "+%F %T")

no_default:
	@echo "no default target"

github:
	@git add .
	@git commit -m "$(timestamp)"
	@git push

.PHONY: no_default github