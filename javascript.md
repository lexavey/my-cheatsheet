## Regex

### Find between src or href with http or https

    (?:(?<=src=")|(?<=href="))(?<=http:\/\/)|(?<=https:\/\/)(.*)(?=")

### Find domain between src or href with http or https 

    (?:(?<=src=")|(?<=href="))(?<=http:\/\/)|(?<=https:\/\/)((?:(?:(?:[a-zA-z\-]+)\:\/{1,3})?(?:[a-zA-Z0-9])(?:[a-zA-Z0-9\-\.]){1,61}(?:\.[a-zA-Z]{2,})+|\[(?:(?:(?:[a-fA-F0-9]){1,4})(?::(?:[a-fA-F0-9]){1,4}){7}|::1|::)\]|(?:(?:[0-9]{1,3})(?:\.[0-9]{1,3}){3}))(?:\:[0-9]{1,5})?)

### Match between src or href with http or https with url value 

Ex : https://www.com.com/ssMATCH/ss

    (?:(?<=src=")|(?<=href="))(?<=http:\/\/)|(?<=https:\/\/)((.*MATCH.*)?)(?=")