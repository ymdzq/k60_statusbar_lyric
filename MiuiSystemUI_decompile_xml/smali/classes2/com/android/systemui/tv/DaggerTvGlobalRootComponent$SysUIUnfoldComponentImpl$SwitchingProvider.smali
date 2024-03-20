.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->id:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->id:I

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 17
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 19
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    move-object v3, v1

    .line 29
    check-cast v3, Lcom/android/systemui/flags/FeatureFlags;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    move-object v4, v1

    .line 40
    check-cast v4, Landroid/hardware/devicestate/DeviceStateManager;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 43
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    move-object v5, v1

    .line 51
    check-cast v5, Landroid/content/ContentResolver;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 54
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    move-object v6, v1

    .line 62
    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 65
    iget-object v7, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 69
    iget-object v8, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setDisplayAreaHelper:Ljava/util/Optional;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 73
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 75
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 80
    move-object v9, v1

    .line 81
    check-cast v9, Ljava/util/concurrent/Executor;

    .line 82
    new-instance v10, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    .line 84
    invoke-direct {v10}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 91
    move-result-object v11

    .line 94
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 95
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 97
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 102
    move-object v12, p0

    .line 103
    check-cast v12, Lcom/android/systemui/settings/DisplayTracker;

    .line 104
    move-object v1, v0

    .line 106
    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;-><init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/ContentResolver;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 107
    return-object v0

    .line 110
    :pswitch_1
    new-instance v0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 113
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 115
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 117
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    .line 119
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 124
    check-cast v2, Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 125
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 127
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 129
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 131
    move-result-object v3

    .line 134
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 135
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 137
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    .line 139
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 141
    move-result-object p0

    .line 144
    check-cast p0, Landroid/os/Vibrator;

    .line 145
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;Landroid/os/Vibrator;)V

    .line 147
    return-object v0

    .line 150
    :pswitch_2
    new-instance v0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 153
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 155
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 157
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wallpaperControllerProvider:Ljavax/inject/Provider;

    .line 159
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 161
    move-result-object p0

    .line 164
    check-cast p0, Lcom/android/systemui/util/WallpaperController;

    .line 165
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/util/WallpaperController;)V

    .line 167
    return-object v0

    .line 170
    :pswitch_3
    new-instance v0, Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 171
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 173
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 175
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 177
    move-result-object v1

    .line 180
    move-object v3, v1

    .line 181
    check-cast v3, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 182
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 184
    iget-object v4, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 186
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 188
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 190
    move-result-object v1

    .line 193
    move-object v5, v1

    .line 194
    check-cast v5, Landroid/hardware/devicestate/DeviceStateManager;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 197
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 199
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 201
    move-result-object v1

    .line 204
    move-object v6, v1

    .line 205
    check-cast v6, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 208
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImpl()Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 213
    move-object v7, v1

    .line 214
    check-cast v7, Lcom/android/systemui/util/settings/GlobalSettings;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 217
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    .line 219
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 224
    move-object v8, v1

    .line 225
    check-cast v8, Lcom/android/internal/util/LatencyTracker;

    .line 226
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 228
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardInteractorProvider:Ljavax/inject/Provider;

    .line 230
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 232
    move-result-object v9

    .line 235
    move-object v2, v0

    .line 236
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/unfold/FoldAodAnimationController;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/internal/util/LatencyTracker;Ldagger/Lazy;)V

    .line 237
    return-object v0

    .line 240
    :pswitch_4
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    .line 241
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 243
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 245
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 247
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 249
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 251
    move-result-object v2

    .line 254
    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 255
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 257
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 259
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    .line 261
    return-object v0

    .line 264
    :pswitch_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 267
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p3:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 269
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 271
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->activityManagerActivityTypeProvider:Ljavax/inject/Provider;

    .line 273
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 275
    move-result-object v2

    .line 278
    check-cast v2, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 279
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 281
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 283
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    move-result-object p0

    .line 288
    check-cast p0, Landroid/view/WindowManager;

    .line 289
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;-><init>(Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;Landroid/view/WindowManager;)V

    .line 291
    return-object v0

    .line 294
    :pswitch_6
    new-instance v0, Lcom/android/keyguard/KeyguardUnfoldTransition;

    .line 295
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 297
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 299
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 301
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 303
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 305
    move-result-object v2

    .line 308
    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 309
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 311
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 313
    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/KeyguardUnfoldTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    .line 315
    return-object v0

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 320
.end method
