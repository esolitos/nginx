fastcgi_param REQUEST_METHOD $request_method;
fastcgi_param CONTENT_TYPE $content_type if_not_empty;
fastcgi_param CONTENT_LENGTH $content_length;

fastcgi_param REQUEST_URI $request_uri;
fastcgi_param DOCUMENT_URI $document_uri;
fastcgi_param DOCUMENT_ROOT $document_root;
fastcgi_param SERVER_PROTOCOL $server_protocol;

fastcgi_param GATEWAY_INTERFACE CGI/1.1;
fastcgi_param SERVER_SOFTWARE nginx/$nginx_version;
fastcgi_param REMOTE_ADDR $remote_addr;
fastcgi_param REMOTE_PORT $remote_port;
fastcgi_param SERVER_ADDR $server_addr;
fastcgi_param SERVER_PORT $server_port;
fastcgi_param SERVER_NAME $server_name;

fastcgi_param REDIRECT_STATUS 200;

fastcgi_param HTTPS $fastcgi_https if_not_empty;

fastcgi_param HTTP_MOD_REWRITE On;

fastcgi_param QUERY_STRING $query_string;

## Fix HTTPoxy vulnerability https://httpoxy.org/#mitigate-nginx.
fastcgi_param HTTP_PROXY '';
