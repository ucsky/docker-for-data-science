#Control groups demo

#CPU

#CPUs on host machine
nproc

#Run a busybox container with 1 cpu
#CPUs in which to allow execution
docker run --cpuset-cpus 3 -it busybox

nproc

#Memory

#Memory on host machine
cat /sys/fs/cgroup/memory/memory.limit_in_bytes

# Run a busybox container with 100m memory
docker run --memory 100m -it busybox
cat /sys/fs/cgroup/memory/memory.limit_in_bytes

#Docker stats
docker stats