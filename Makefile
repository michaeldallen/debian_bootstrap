ANSIBLE_LOG     = ansible.log
CRUFT_ENUMERATE = find * -name '*~' -o -name '*.retry' -o -name '${ANSIBLE_LOG}'
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
	@touch ${ANSIBLE_LOG}
	ansible-playbook -i 'localhost,' --connection=local debian8_new_machine_upgrade.yml 
