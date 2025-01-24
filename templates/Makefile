SCRIPTS_DIR = $(HOME)/.local/share/nautilus/scripts
TEMPLATES_DIR = $(HOME)/Templates

normal:

install: new_class.template new_subclass.template lua_template.lua
	mkdir -p $(TEMPLATES_DIR)
	install new_class.template $(TEMPLATES_DIR)
	install new_subclass.template $(TEMPLATES_DIR)
	install lua_template.lua $(SCRIPTS_DIR)/"Format Lua Template"
	chmod +x $(SCRIPTS_DIR)/"Format Lua Template"

uninstall:
	$(RM) $(SCRIPTS_DIR)/"Format Lua Template"
