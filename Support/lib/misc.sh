xml_file () {
	if [[ -f $(basename ${TM_FILEPATH} .xsl)".xml" ]]; then
		echo -n $(basename ${TM_FILEPATH} .xsl)".xml"
	elif [[ -f "data.xml" ]]; then
		echo -n "data.xml"
	else
		res=$(CocoaDialog standard-inputbox --title "Select XML File" \
		 	--informative-text "No XML data file found. Wich one should be used?  This file is required." \
		 	--no-cancel \
			--text "data.xml")
		if [[ "${res:0:1}" == 1 ]]; then
			echo -n "${res:2}"
		fi
	fi
}

param_file() {
	file=""
	if [[ -f $(basename ${TM_FILEPATH} .xsl)".txt" ]]; then
		file=$(basename ${TM_FILEPATH} .xsl)".txt"
	elif [[ -f "params.txt" ]]; then
		file="params.txt";
	else
		res=$(CocoaDialog standard-inputbox --title "Select Param File" \
		 	--informative-text "No param file found. Which one should be used? This file is optional." \
			--text "params.txt")
		if [[ "${res:0:1}" == 1 ]]; then
			file="${res:2}"
		fi
	fi
	echo "$file"
}

param_load () {
	file=${1}
#	if [[ -x ${file} ]]; then # broken on Mac OSX
#		echo "params-from	executable" ; $file | awk '{ printf "--stringparam	%s	", $0 }'
#	else
	if [[ -f "$file" ]]; then
		awk '{ printf "--stringparam	%s	", $0 }' "${file}"
	fi
#	fi	
}

selected_text () {
	if [[ "${TM_SELECTED_TEXT}" == "" ]]; then
		res=$(CocoaDialog standard-inputbox --title "Select XPath Expression" \
		 	--informative-text "Please enter the XPath Expression to be evaluated" \
		 	--no-cancel \
			--text "/")
		if [[ "${res:0:1}" == 1 ]]; then
			echo "${res:2}"
		else
			echo "/"
		fi
	else
		echo "${TM_SELECTED_TEXT}"
	fi
}