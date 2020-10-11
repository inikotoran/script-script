docker container ls -a | grep $1 > will_be_removed.txt;
while read p; do
	docker container rm $(echo $p | awk '{print $1;}')
done <will_be_removed.txt;
rm will_be_removed.txt;

