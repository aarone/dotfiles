# assume Mac OS, prefer the newest JVM
# jvmdir="/Library/Java/JavaVirtualMachines"
# if [ -d "$jvmdir" ]
# then
#   newest_jvm=$(ls $jvmdir | tail -n 1)
#   if [ -d "$jvmdir/$newest_jvm" ]
#   then
#       export JAVA_HOME="$jvmdir/$newest_jvm/Contents/Home"
#   fi
# fi

# override to java 1.8
if [ -d /Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home ]; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
fi

export PATH=${JAVA_HOME}:${PATH}
