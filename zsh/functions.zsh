
reload-audio() {
    sudo kextunload /System/Library/Extensions/AppleHDA.kext
    sudo kextload /System/Library/Extensions/AppleHDA.kext
}
