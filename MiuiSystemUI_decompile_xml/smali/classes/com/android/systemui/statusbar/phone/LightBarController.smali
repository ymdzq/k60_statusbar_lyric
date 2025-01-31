.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public mBouncerVisible:Z

.field public final mDarkIconColor:I

.field public mDirectReplying:Z

.field public mForceDarkForScrim:Z

.field public mForceLightForScrim:Z

.field public mGlobalActionsVisible:Z

.field public mHasLightNavigationBar:Z

.field public mIsCustomizingForBackNav:Z

.field public final mLightIconColor:I

.field public mNavbarColorManagedByIme:Z

.field public mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field public mNavigationBarMode:I

.field public mNavigationLight:Z

.field public mNavigationMode:I

.field public mQsCustomizing:Z

.field public mQsExpanded:Z

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

.field public mStatusBarMode:I

.field public final mUseNewLightBarLogic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Lcom/android/internal/view/AppearanceRegion;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 8
    sget-object v0, Lcom/android/systemui/flags/Flags;->NEW_LIGHT_BAR_LOGIC:Lcom/android/systemui/flags/ReleasedFlag;

    .line 10
    check-cast p5, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 12
    invoke-virtual {p5, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 14
    move-result p5

    .line 17
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mUseNewLightBarLogic:Z

    .line 18
    const p5, 0x7f0600d7    # @color/dark_mode_icon_color_single_tone '#bf000000'

    .line 20
    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    .line 23
    move-result p5

    .line 26
    iput p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkIconColor:I

    .line 27
    const p5, 0x7f0601bf    # @color/light_mode_icon_color_single_tone '#e6ffffff'

    .line 29
    invoke-virtual {p1, p5}, Landroid/content/Context;->getColor(I)I

    .line 32
    move-result p5

    .line 35
    iput p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLightIconColor:I

    .line 36
    check-cast p2, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 40
    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 42
    new-instance p2, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;

    .line 45
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 47
    invoke-virtual {p4, p2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 50
    move-result p2

    .line 53
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 56
    move-result p1

    .line 59
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-virtual {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 73
    :cond_0
    return-void
    .line 76
.end method

.method public static isLight(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    const/4 v2, 0x6

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move p1, v1

    .line 12
    :goto_1
    and-int/2addr p0, p2

    .line 13
    if-eqz p0, :cond_2

    .line 14
    move p0, v1

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    move p0, v0

    .line 18
    :goto_2
    if-eqz p1, :cond_3

    .line 19
    if-eqz p0, :cond_3

    .line 21
    move v0, v1

    .line 23
    :cond_3
    return v0
    .line 24
.end method


# virtual methods
.method public final animateChange()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 8
    const/4 v1, 0x2

    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    move v0, v1

    .line 16
    :cond_1
    return v0
    .line 17
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "LightBarController: "

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, " mAppearance="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    const-class v0, Landroid/view/InsetsFlags;

    .line 12
    const-string v1, "appearance"

    .line 14
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 16
    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 25
    array-length v0, v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_0

    .line 29
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 31
    aget-object v2, v2, v1

    .line 33
    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    .line 35
    move-result v2

    .line 38
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 39
    const/16 v4, 0x8

    .line 41
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 43
    move-result v2

    .line 46
    const-string v3, " stack #"

    .line 47
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 52
    const-string v3, ": "

    .line 55
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 60
    aget-object v3, v3, v1

    .line 62
    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    const-string v3, " isLight="

    .line 71
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    const-string v0, " mNavigationLight="

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    const-string v0, " mHasLightNavigationBar="

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 102
    const-string v0, " mStatusBarMode="

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 112
    const-string v0, " mNavigationBarMode="

    .line 115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 122
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    const-string v0, " mForceDarkForScrim="

    .line 128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 135
    const-string v0, " mForceLightForScrim="

    .line 138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 145
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 148
    const-string v0, " mQsCustomizing="

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    const-string v0, " mQsExpanded="

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 168
    const-string v0, " mBouncerVisible="

    .line 171
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    const-string v0, " mGlobalActionsVisible="

    .line 181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mGlobalActionsVisible:Z

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 188
    const-string v0, " mDirectReplying="

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 196
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 198
    const-string v0, " mNavbarColorManagedByIme="

    .line 201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 211
    const-string v0, " Recent Calculation Logs:"

    .line 214
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v0, "   "

    .line 219
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 237
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 239
    if-eqz v0, :cond_1

    .line 241
    const-string v1, " StatusBarTransitionsController:"

    .line 243
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 254
    if-eqz v0, :cond_2

    .line 256
    const-string v0, " NavigationBarTransitionsController:"

    .line 258
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 268
    :cond_2
    return-void
    .line 271
.end method

.method public final onNavigationBarAppearanceChanged(IIZZ)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 2
    xor-int/2addr v0, p1

    .line 4
    const/16 v1, 0x10

    .line 5
    and-int/2addr v0, v1

    .line 7
    if-nez v0, :cond_0

    .line 8
    if-nez p3, :cond_0

    .line 10
    goto/16 :goto_7

    .line 12
    :cond_0
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 14
    invoke-static {p1, p2, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 16
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 20
    const/4 v1, 0x0

    .line 22
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mUseNewLightBarLogic:Z

    .line 23
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_b

    .line 26
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 28
    if-eqz v2, :cond_1

    .line 30
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 32
    if-eqz v2, :cond_1

    .line 34
    move v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v1

    .line 38
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 39
    if-eqz v4, :cond_2

    .line 41
    if-nez v2, :cond_2

    .line 43
    move v4, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v4, v1

    .line 47
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    .line 48
    if-eqz v5, :cond_3

    .line 50
    if-nez v2, :cond_3

    .line 52
    move v2, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v2, v1

    .line 56
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 57
    if-nez v5, :cond_4

    .line 59
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 61
    if-eqz v5, :cond_5

    .line 63
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    .line 65
    if-nez v5, :cond_5

    .line 67
    move v5, v3

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move v5, v1

    .line 71
    :goto_3
    if-nez v5, :cond_7

    .line 72
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mGlobalActionsVisible:Z

    .line 74
    if-eqz v5, :cond_6

    .line 76
    goto :goto_4

    .line 78
    :cond_6
    move v5, v1

    .line 79
    goto :goto_5

    .line 80
    :cond_7
    :goto_4
    move v5, v3

    .line 81
    :goto_5
    if-eqz v0, :cond_8

    .line 82
    if-eqz v4, :cond_9

    .line 84
    :cond_8
    if-eqz v2, :cond_a

    .line 86
    :cond_9
    if-nez v5, :cond_a

    .line 88
    move v1, v3

    .line 90
    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 91
    goto :goto_6

    .line 93
    :cond_b
    if-eqz v0, :cond_e

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 96
    if-eqz v0, :cond_c

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 100
    if-nez v0, :cond_d

    .line 102
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 104
    if-nez v0, :cond_e

    .line 106
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 108
    if-nez v0, :cond_e

    .line 110
    move v1, v3

    .line 112
    :cond_e
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 113
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 115
    if-eq v0, p3, :cond_f

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 119
    :cond_f
    :goto_7
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 122
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 124
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 126
    return-void
    .line 128
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 3
    array-length v1, v1

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    move v4, v3

    .line 13
    :goto_1
    if-ge v4, v0, :cond_1

    .line 14
    if-nez v1, :cond_1

    .line 16
    aget-object v5, p1, v4

    .line 18
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 20
    aget-object v6, v6, v4

    .line 22
    invoke-virtual {v5, v6}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v5

    .line 27
    xor-int/2addr v5, v2

    .line 28
    or-int/2addr v1, v5

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    if-nez v1, :cond_2

    .line 33
    if-nez p2, :cond_2

    .line 35
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    .line 37
    if-eqz p2, :cond_3

    .line 39
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 41
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarModeChanged(I)V

    .line 43
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    .line 46
    :cond_3
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 48
    return-void
    .line 50
.end method

.method public onStatusBarModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 6
    return-void
    .line 9
.end method

.method public final reevaluate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 6
    const/4 v3, 0x1

    .line 8
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 16
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IIZZ)V

    .line 18
    return-void
    .line 21
.end method

.method public final updateNavigation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 11
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 23
    move-result p0

    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public updateStatus([Lcom/android/internal/view/AppearanceRegion;)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_1

    .line 10
    aget-object v4, p1, v3

    .line 12
    invoke-virtual {v4}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    .line 14
    move-result v5

    .line 17
    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 18
    const/16 v7, 0x8

    .line 20
    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 22
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v4}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    .line 28
    move-result-object v4

    .line 31
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result p1

    .line 41
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 42
    if-eqz p1, :cond_2

    .line 44
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 48
    move-result p0

    .line 51
    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 52
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result p1

    .line 59
    const/4 v2, 0x1

    .line 60
    if-ne p1, v0, :cond_3

    .line 61
    const/4 p1, 0x0

    .line 63
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconsDarkArea(Ljava/util/ArrayList;)V

    .line 64
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 69
    move-result p0

    .line 72
    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 73
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconsDarkArea(Ljava/util/ArrayList;)V

    .line 77
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    .line 82
    move-result p0

    .line 85
    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 86
    :goto_1
    return-void
    .line 89
.end method
