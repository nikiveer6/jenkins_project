#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.treemind$i container.."
    sleep 1
    docker run --name www.treemind$i -d -it --rm treemind /bin/bash
    echo "www.treemind$i container has been created!"
	echo "=============================="
done
