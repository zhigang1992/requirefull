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
    return false;
}

- (bool)wantsExclusiveForeground {
    return false;
}

- (bool)disablesScreenJail {
    return true;
}

- (bool)disablesClassicMode {
    return true;
}

%end
