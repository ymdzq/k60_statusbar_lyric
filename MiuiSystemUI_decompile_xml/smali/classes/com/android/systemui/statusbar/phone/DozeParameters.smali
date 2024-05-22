.class public final Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/statusbar/DozeParameters;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;


# static fields
.field public static final FORCE_BLANKING:Z

.field public static final FORCE_NO_BLANKING:Z


# instance fields
.field public final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mCallbacks:Ljava/util/Set;

.field public final mControlScreenOffAnimation:Z

.field public mDozeAlwaysOn:Z

.field public mIsQuickPickupEnabled:Z

.field final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mKeyguardVisible:Z

.field public final mResources:Landroid/content/res/Resources;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "debug.force_no_blanking"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    .line 9
    const-string v0, "debug.force_blanking"

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    .line 17
    return-void
    .line 19
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v2, Ljava/util/HashSet;

    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mCallbacks:Ljava/util/Set;

    .line 12
    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeParameters$1;

    .line 14
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 16
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 19
    move-object v3, p3

    .line 21
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 22
    move-object v3, p4

    .line 24
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 25
    move-object v3, p5

    .line 27
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 28
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 30
    const-string v3, "DozeParameters"

    .line 32
    move-object/from16 v4, p8

    .line 34
    invoke-virtual {v4, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 39
    move-result v3

    .line 42
    xor-int/lit8 v3, v3, 0x1

    .line 43
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 45
    move-object/from16 v3, p9

    .line 47
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 49
    move-object/from16 v3, p11

    .line 51
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 53
    move-object/from16 v3, p15

    .line 55
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 57
    move-object/from16 v3, p12

    .line 59
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 61
    const-string v2, "doze_always_on"

    .line 64
    const-string v3, "accessibility_display_inversion_enabled"

    .line 66
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 71
    move-object v3, p7

    .line 72
    invoke-virtual {p7, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 73
    move-object/from16 v2, p13

    .line 76
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 78
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 80
    move-object/from16 v2, p14

    .line 83
    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 85
    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeParameters$$ExternalSyntheticLambda0;

    .line 88
    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters$$ExternalSyntheticLambda0;-><init>()V

    .line 90
    move-object/from16 v3, p10

    .line 93
    invoke-virtual {v3, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 95
    move-result-object v2

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 103
    check-cast v2, Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 104
    if-eqz v2, :cond_0

    .line 106
    iget-object v2, v2, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;

    .line 113
    move-object v4, p1

    .line 115
    move-object v5, p2

    .line 116
    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/content/Context;Landroid/os/Handler;)V

    .line 117
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    move-result-object v4

    .line 125
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;->mQuickPickupGesture:Landroid/net/Uri;

    .line 126
    const/4 v6, 0x0

    .line 128
    const/4 v7, -0x1

    .line 129
    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 130
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;->mPickupGesture:Landroid/net/Uri;

    .line 133
    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;->mAlwaysOnEnabled:Landroid/net/Uri;

    .line 138
    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 140
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 143
    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeParameters$2;

    .line 146
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 148
    invoke-interface {p6, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final canControlUnlockedScreenOff()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final dispatchAlwaysOnEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mCallbacks:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isAodAvailable$1$callback$1;

    .line 18
    iget-object v2, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isAodAvailable$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 20
    iget-object v2, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 22
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 24
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v2

    .line 31
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isAodAvailable$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 32
    check-cast v1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 34
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    instance-of v2, v1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 40
    if-eqz v2, :cond_0

    .line 42
    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 44
    move-result-object v1

    .line 47
    const-string v2, "Failed to send updated isAodAvailable - downstream canceled or failed."

    .line 48
    const-string v3, "KeyguardRepositoryImpl"

    .line 50
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 56
    move-result v0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 62
    check-cast p0, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p0

    .line 69
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 80
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->onAlwaysOnChanged(Z)V

    .line 82
    goto :goto_1

    .line 85
    :cond_2
    return-void
    .line 86
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string p2, "getAlwaysOn(): "

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 7
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 11
    const-string p2, "getDisplayStateSupported(): "

    .line 14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const p2, 0x7f050072    # @bool/doze_display_state_supported 'false'

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 22
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 24
    move-result p2

    .line 27
    const-string v1, "doze.display.supported"

    .line 28
    invoke-static {v1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    const-string p2, "getPulseDuration(): "

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    const-string p2, "doze.pulse.duration.in"

    .line 42
    const v1, 0x7f0b005a    # @integer/doze_pulse_duration_in '130'

    .line 44
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 47
    move-result v2

    .line 50
    const-string v3, "doze.pulse.duration.visible"

    .line 51
    const v4, 0x7f0b005c    # @integer/doze_pulse_duration_visible '6000'

    .line 53
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 56
    move-result v5

    .line 59
    add-int/2addr v5, v2

    .line 60
    const-string v2, "doze.pulse.duration.out"

    .line 61
    const v6, 0x7f0b005b    # @integer/doze_pulse_duration_out '600'

    .line 63
    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 66
    move-result v7

    .line 69
    add-int/2addr v7, v5

    .line 70
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 71
    const-string v5, "getPulseInDuration(): "

    .line 74
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 79
    move-result p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 83
    const-string p2, "getPulseInVisibleDuration(): "

    .line 86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 91
    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 95
    const-string p2, "getPulseOutDuration(): "

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 103
    move-result p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 107
    const-string p2, "getPulseOnSigMotion(): "

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const p2, 0x7f050076    # @bool/doze_pulse_on_significant_motion 'false'

    .line 115
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 118
    move-result p2

    .line 121
    const-string v1, "doze.pulse.sigmotion"

    .line 122
    invoke-static {v1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 124
    move-result p2

    .line 127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 128
    const-string p2, "getVibrateOnSigMotion(): "

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    const-string p2, "doze.vibrate.sigmotion"

    .line 136
    const/4 v1, 0x0

    .line 138
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 139
    move-result p2

    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 143
    const-string p2, "getVibrateOnPickup(): "

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    const-string p2, "doze.vibrate.pickup"

    .line 151
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 153
    move-result p2

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 157
    const-string p2, "getProxCheckBeforePulse(): "

    .line 160
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    const p2, 0x7f050075    # @bool/doze_proximity_check_before_pulse 'true'

    .line 165
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 168
    move-result p2

    .line 171
    const-string v1, "doze.pulse.proxcheck"

    .line 172
    invoke-static {v1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 174
    move-result p2

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    const-string p2, "getPickupVibrationThreshold(): "

    .line 181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    const-string p2, "doze.pickup.vibration.threshold"

    .line 186
    const v1, 0x7f0b0059    # @integer/doze_pickup_vibration_threshold '2000'

    .line 188
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 191
    move-result p2

    .line 194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 195
    const-string p2, "getSelectivelyRegisterSensorsUsingProx(): "

    .line 198
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    const p2, 0x7f050077    # @bool/doze_selectively_register_prox 'false'

    .line 203
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 206
    move-result p2

    .line 209
    const-string v0, "doze.prox.selectively_register"

    .line 210
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 212
    move-result p2

    .line 215
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 216
    const-string p2, "isQuickPickupEnabled(): "

    .line 219
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mIsQuickPickupEnabled:Z

    .line 224
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 226
    return-void
    .line 229
.end method

.method public final getAlwaysOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final getDisplayNeedsBlanking()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 10
    const v0, 0x1110122    # @android:bool/config_displayWhiteBalanceAvailable

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    return p0
    .line 25
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 4
    move-result p0

    .line 7
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result p0

    .line 11
    const/4 p1, 0x0

    .line 12
    const p2, 0xea60

    .line 13
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    .line 2
    return-void
    .line 5
.end method

.method public final onFoldToAodAnimationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStatePostChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    .line 2
    return-void
    .line 5
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 10
    invoke-virtual {v0, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 12
    move-result p2

    .line 15
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    .line 16
    const-string p2, "doze_always_on"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->dispatchAlwaysOnEvent()V

    .line 29
    return-void
    .line 32
.end method

.method public final shouldControlScreenOff()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public final shouldShowLightRevealScrim()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 4
    instance-of v0, p0, Ljava/util/Collection;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    move-object v0, p0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 36
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldPlayAnimation()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 46
    :goto_1
    return p0
    .line 47
.end method

.method public final updateControlScreenOff()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisible:Z

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
