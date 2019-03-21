#
#Service template: Alyvix
# icingacli director service show "generic_alyvix" --json --no-defaults

#
RES=`icingacli director service exists "generic_alyvix"`
if [[ $RES =~ "does not exist" ]]
then
   echo "Service 'generic_alyvix' does not exists"
   icingacli director service create generic_alyvix --json '
{
    "check_command": "nrpe-local-alyvix",
    "check_interval": "300",
    "check_timeout": "300",
    "imports": [
        "generic_agent"
    ],
    "max_check_attempts": "1",
    "object_name": "generic_alyvix",
    "object_type": "template",
    "vars": {
        "custom_analytics_dashboard": "000000051\/alyvix-performance-overview",
        "nrpe_address": "127.0.0.1",
        "nrpe_argument": "testsuite-name",
        "nrpe_command": "run_alyvix"
    }
}
'
fi

