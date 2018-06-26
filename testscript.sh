#!/bin/sh

OUT="tmp.sync-repos"

LIST="centos/6/x86_64 centos/7/x86_64"

echo "# Erasing [$OUT]"
/bin/rm -f $OUT
echo "# Adding Header"
cat << END > $OUT
pipeline {
  agent none
  stages {
    parallel {
END

for X in $LIST
do
	echo "# Adding [$X]"
	cat << END >> $OUT
    	stage('$X') {
		agent any
		steps {
			sh 'echo "Running sync $X"'
		}
	}
END
done

echo "# Adding footer"
cat << END >> $OUT
    }
}
END

exit 0
