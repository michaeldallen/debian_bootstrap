
CRUFT_ENUMERATE = find * -name '*~' -o -name '*.retry'
CRUFT_WARN      = while read t ; do echo planning to gun down "'$${t}'" ; done
CRUFT_CLEAN     = xargs --no-run-if-empty rm -v

BLANK_LINE = echo ""

default :
	ansible --version

clean :
	${BLANK_LINE} ; ${CRUFT_ENUMERATE} | ${CRUFT_WARN}

really_clean clean!:
	${BLANK_LINE} ; ${CRUFT_ENUMERATE} | ${CRUFT_CLEAN}


doit :
	ansible-playbook -i 'localhost,' --connection=local debian8_new_machine_upgrade.yml 
