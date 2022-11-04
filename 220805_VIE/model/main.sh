#!/bin/bash
#================================================================ [Bash]
# PROGRAMMER    : Edgardo Del Rosario
# EMAIL         : Edgardo.DelRosario@hcl.com
# DATE.STARTED  : Fri Aug 19 15:51:00 EDT 2022
# DATE.MODIFIED : Sun Oct 30 22:37:42 EDT 2022
#=======================================================================

# make a backup of PATH and then prefix this script's path to PATH
declare path_backup=${PATH};
declare -x PATH_MAIN_SCRIPT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";
declare PATH="${PATH_MAIN_SCRIPT}:${PATH}";

# also prefix directory where to find scripts
declare PATH="${PATH_MAIN_SCRIPT}/source:${PATH}";

# loads into memory the variables and functions defined in scripts. 
# This is know in Bash programming as "sourcing".
source aliases_functions.sh;

time { # display the time to completion!
  source download_data.sh;
  # source print_webpage_capitalized_words_demo.sh;
  # source fill_up_arrays_from_file_demo.sh;
  # source print_random_element_demo.sh;
  # source print_random_2nd_name_demo.sh;
  # source print_id_on_3tokens_demo.sh;
  # source print_random_ssn_demo.sh;
  # source print_random_dob_demo.sh;
}

PATH=${path_backup}; # restore PATH to its original value
echo;
