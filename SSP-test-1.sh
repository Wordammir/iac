# figlet "Welkom!"
printf "\n"

# vraag machineversie
read -p "Which vagrantmachine? " _vagrantvmtype

printf "####################"
printf "Welkom bij de Cloud!"
printf "####################"
printf "\n"

f_client () {
echo pwd
echo " "
echo 'ls -al'

echo "Je naam is: " $_klantnaam
echo "De uit te rollen vm type is: " $_vagrantvmtype
}

f_client

f_vagrant () {
vagrant init $_vagrantvmtype

vagrant status
vagrant status
vagrant up
}

# f_vagrant

#ansible-playbook
