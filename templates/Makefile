SCRIPTS_DIR = $(HOME)/.local/share/nautilus/scripts
TEMPLATES_DIR = $(HOME)/Templates

normal:

install: new_class.template new_subclass.template lua_template.py
	mkdir -p $(TEMPLATES_DIR)/Lua
	install new_class.template $(TEMPLATES_DIR)/Lua/"new_class.lua"
	install new_subclass.template $(TEMPLATES_DIR)/Lua/"new_subclass.lua"
	install new_super_class.template $(TEMPLATES_DIR)/Lua/"new_super_class.lua"
	install new_init_super_class.template $(TEMPLATES_DIR)/Lua/"new_init_super_class.lua"
	install lua_template.py $(SCRIPTS_DIR)/"Lua Template"
	chmod +x $(SCRIPTS_DIR)/"Lua Template"

uninstall:
	$(RM) $(SCRIPTS_DIR)/"Lua Template"
