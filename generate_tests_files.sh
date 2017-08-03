 #!/bin/bash

testDir=src_test_files


if ! [ -d "$testDir" ]; then mkdir "$testDir" ; fi

 now=$(date "+%s")
for i in $(seq 1 20); do
	fileTs=$(( now - 600 * i ))
	filepath="${testDir}/test_filename_$(date -d "@${fileTs}" "+%Y%m%d-%H%M%S-%s").txt"
	echo "Dummy content" > "${filepath}"
	touch -m -d "@${fileTs}" "${filepath}"
done
