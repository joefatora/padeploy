#!/bin/bash
PS3="Select Recipe : "
 
# set recipe list
select recipes in 'LAMP - Apache2 With PHP5 And MySQL' 'LEMP - Nginx With PHP5 And MySQL' 'LAMP - Wordpress - Apache2 With PHP5 And MySQL' 'Exit'
do
	case $recipes in
		'LAMP - Apache2 With PHP5 And MySQL')
			
			source <(curl -s https://raw.github.com/drkyro/padeploy/master/recipes/ubuntu/lamp.sh --insecure)

			;;
		'LEMP - Nginx With PHP5 And MySQL')
			
			source <(curl -s https://raw.github.com/drkyro/padeploy/master/recipes/ubuntu/lemp.sh --insecure)

			;;
		'LAMP - Wordpress - Apache2 With PHP5 And MySQL') 
			
			source <(curl -s https://raw.github.com/drkyro/padeploy/master/recipes/ubuntu/lamp_wordpress.sh --insecure)

			;;				
		'Exit')
			
			echo "--------------"	

			break						
			;;
		*)		
			echo "Error: Please try again (select 1..4)!"
			;;		
	esac
done