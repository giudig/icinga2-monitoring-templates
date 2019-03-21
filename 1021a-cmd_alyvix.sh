#
#Service template: Alyvix
# icingacli director command show "nrpe-local-alyvix" --json --no-defaults
#

#
RES=`icingacli director command exists "nrpe-local-alyvix"`
if [[ $RES =~ "does not exist" ]]
then
   echo "Service 'nrpe-local-alyvix' does not exists"
   icingacli director command create nrpe-local-alyvix --json '
{
    "arguments": {
        "argument": {
            "description": "Run a query with a given name",
            "required": true,
            "set_if_format": "string",
            "skip_key": true,
            "value": "argument=$nrpe_argument$",
            "order": "6"
        },
        "command": {
            "required": true,
            "set_if_format": "string",
            "skip_key": true,
            "value": "command=$nrpe_command$",
            "order": "5"
        },
        "context": {
            "required": true,
            "set_if_format": "string",
            "skip_key": true,
            "value": "nrpe",
            "order": "1"
        },
        "host": {
            "required": true,
            "set_if_format": "string",
            "skip_key": true,
            "value": "host=$nrpe_address$",
            "order": "4"
        },
        "retry": {
            "required": true,
            "set_if_format": "string",
            "skip_key": true,
            "value": "retry=0",
            "order": "3"
        },
        "timeout": {
            "required": true,
            "set_if_format": "string",
            "skip_key": true,
            "value": "timeout=300",
            "order": "2"
        }
    },
    "command": "PluginDir + \\..\\..\\NSClient++\\nscp.exe",
    "methods_execute": "PluginCheck",
    "object_name": "nrpe-local-alyvix",
    "object_type": "object",
    "timeout": "300"
}
'
fi

