*** Variables ***

${URL}=   https://blogdoagi.com.br
${VALID_SEARCH_TERM}=   Empréstimo
${INVALID_SEARCH_TERM}=   Morpheus
${EMPTY_SEARCH_TERM}= 
${SPECIAL_CHAR_SEARCH_TERM} =   !@#$%^&*&#
${SEARCH_TERM_WITH_SPACES} =   Empréstimo consignado
${LONG_SEARCH_TERM} =  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis fermentum imperdiet. Phasellus ligula metus, posuere pulvinar molestie et, maximus eu tortor  # Termo muito longo
${VALID_SEARCH_TEXT}=    Resultados encontrados para: Empréstimo       
${INVALID_SEARCH_TEXT}=  Resultados encontrados para: Morpheus   
${EMPTY_SEARCH_TEXT}=    Resultados encontrados para: 
${SPECIAL_TEXT}=    Resultados encontrados para: !@#$%^&*&#   
${SEARCH_TERM_TEXT}=    Resultados encontrados para: Empréstimo consignado
${LONG_SEARCH_TEXT} =  Resultados encontrados para: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis fermentum imperdiet. Phasellus ligula metus, posuere pulvinar molestie et, maximus eu tortor