# Go ahead

export COMMAND="sysbench oltp_read_write --db-driver=mysql --mysql-db=test --mysql-user=root --mysql-password=test --mysql-host=127.0.0.1 --threads=12 --events=1000000 --time=60"

for i in {3001..3001}; do
    $COMMAND --mysql-port=$i prepare
    $COMMAND --mysql-port=$i run
done

docker compose down -v