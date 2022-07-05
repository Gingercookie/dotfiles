###############
## CoreUtils ##
###############
# SSH generate fingerprint of key
ssh-keygen -l -f <key_file>  # new school
ssh-keygen -lE md5 -f <key_file> # old school
ssh-keygen -lv -f <key_file> # ascii art version

###############
## Terraform ##
###############
# Show just the "change" lines in a terraform plan
grep -e "^.*#.*\([^blue]\|green\).*\(created\|destroyed\|replaced\|updated\)" tf_output
