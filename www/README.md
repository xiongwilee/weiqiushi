php5.2+mysql5

nginx rewrite

```
location /
{

    try_files $uri $uri/ /index.php?q=$uri&$args;

}
```