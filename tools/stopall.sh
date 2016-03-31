containers=`docker ps -a | gawk '{print $1}'`

count=0
for container in $containers ; do
  if [ $count -ne 0 ] ; then
    echo "关闭容器$container"
    docker stop $container
  fi
  count=$[ $count + 1 ]
done

