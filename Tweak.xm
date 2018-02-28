%hook SBApplication

- (bool)supportsApplicationType:(int)type {
    return YES;
}

- (long long)_classicModeFromSplashBoard {
    return %orig;
}

- (bool)_supportsApplicationType:(int)type {
    return YES;
}

- (bool)classicAppScaled {
    return %orig;
}


- (bool)isClassic {
    return NO;
}

%end

%hook SBApplicationInfo

- (bool)wantsFullScreen {
    %log;
    return false;
}

- (bool)wantsExclusiveForeground {
    %log;
    return false;
}

- (bool)disablesScreenJail {
    %log;
    return true;
}

- (bool)disablesClassicMode {
    %log;
    return true;
}

- (bool)_supportsApplicationType:(int)arg1 {
    %log;
    return true;
}

- (bool)preventsLaunchInterfaceSplitting {
    %log;
    return false;
}

%end

%hook SBAssistantRootViewController 

- (_Bool)wantsFullScreenLayout {
    return false;
}

%end

