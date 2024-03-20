.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    throw v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/systemui/doze/DozeSuppressor;

    .line 17
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 19
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lcom/android/systemui/doze/DozeHost;

    .line 28
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 30
    sget-object v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 34
    move-result-object v4

    .line 37
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 38
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    move-object v5, v2

    .line 46
    check-cast v5, Lcom/android/systemui/doze/DozeLog;

    .line 47
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 49
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 51
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 53
    move-result-object v6

    .line 56
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 57
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 64
    move-object v7, v0

    .line 65
    check-cast v7, Lcom/android/systemui/settings/UserTracker;

    .line 66
    move-object v2, v1

    .line 68
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/doze/DozeSuppressor;-><init>(Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/DozeLog;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V

    .line 69
    return-object v1

    .line 72
    :pswitch_1
    new-instance v1, Lcom/android/systemui/doze/DozeAuthRemover;

    .line 73
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 75
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 83
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeAuthRemover;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 85
    return-object v1

    .line 88
    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 89
    sget-object v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 91
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 93
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 98
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 103
    check-cast v1, Lcom/android/systemui/dock/DockManager;

    .line 104
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 106
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 108
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    .line 114
    new-instance v0, Lcom/android/systemui/doze/DozeDockHandler;

    .line 116
    invoke-direct {v0, v1}, Lcom/android/systemui/doze/DozeDockHandler;-><init>(Lcom/android/systemui/dock/DockManager;)V

    .line 118
    return-object v0

    .line 121
    :pswitch_3
    new-instance v1, Lcom/android/systemui/doze/DozeWallpaperState;

    .line 122
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 124
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWallPaperManagerProvider:Ljavax/inject/Provider;

    .line 126
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 128
    move-result-object v2

    .line 131
    check-cast v2, Landroid/app/IWallpaperManager;

    .line 132
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 134
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 136
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 138
    move-result-object v3

    .line 141
    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 142
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 144
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 146
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 148
    move-result-object v0

    .line 151
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 152
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 154
    return-object v1

    .line 157
    :pswitch_4
    new-instance v1, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 158
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 160
    iget-object v5, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 162
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 164
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 166
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 171
    move-object v6, v2

    .line 172
    check-cast v6, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 173
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 175
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 177
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 182
    move-object v7, v2

    .line 183
    check-cast v7, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 184
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 186
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->brightnessSensorOptionalOfSensorArray()[Ljava/util/Optional;

    .line 188
    move-result-object v8

    .line 191
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 192
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 194
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 196
    move-result-object v2

    .line 199
    move-object v9, v2

    .line 200
    check-cast v9, Lcom/android/systemui/doze/DozeHost;

    .line 201
    new-instance v10, Landroid/os/Handler;

    .line 203
    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 205
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 208
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 210
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 212
    move-result-object v2

    .line 215
    move-object v11, v2

    .line 216
    check-cast v11, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 217
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 219
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 221
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 223
    move-result-object v2

    .line 226
    move-object v12, v2

    .line 227
    check-cast v12, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 228
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 230
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 232
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 234
    move-result-object v2

    .line 237
    move-object v13, v2

    .line 238
    check-cast v13, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 239
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 241
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    .line 243
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 245
    move-result-object v2

    .line 248
    move-object v14, v2

    .line 249
    check-cast v14, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 250
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 252
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 254
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 256
    move-result-object v2

    .line 259
    move-object v15, v2

    .line 260
    check-cast v15, Lcom/android/systemui/doze/DozeLog;

    .line 261
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 263
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemSettingsImpl()Ljava/lang/Object;

    .line 265
    move-result-object v0

    .line 268
    move-object/from16 v16, v0

    .line 269
    check-cast v16, Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 271
    move-object v4, v1

    .line 273
    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettingsImpl;)V

    .line 274
    return-object v1

    .line 277
    :pswitch_5
    new-instance v1, Lcom/android/systemui/doze/DozeScreenState;

    .line 278
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 280
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 282
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 284
    move-result-object v2

    .line 287
    move-object/from16 v18, v2

    .line 288
    check-cast v18, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 290
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 292
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 294
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 296
    move-result-object v2

    .line 299
    move-object/from16 v19, v2

    .line 300
    check-cast v19, Landroid/os/Handler;

    .line 302
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 304
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 306
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 308
    move-result-object v2

    .line 311
    move-object/from16 v20, v2

    .line 312
    check-cast v20, Lcom/android/systemui/doze/DozeHost;

    .line 314
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 316
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 318
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 320
    move-result-object v2

    .line 323
    move-object/from16 v21, v2

    .line 324
    check-cast v21, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 326
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 328
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 330
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 332
    move-result-object v2

    .line 335
    move-object/from16 v22, v2

    .line 336
    check-cast v22, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 338
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 340
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    .line 342
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 344
    move-result-object v2

    .line 347
    move-object/from16 v23, v2

    .line 348
    check-cast v23, Lcom/android/systemui/biometrics/AuthController;

    .line 350
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 352
    iget-object v3, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    .line 354
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 356
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 358
    move-result-object v2

    .line 361
    move-object/from16 v25, v2

    .line 362
    check-cast v25, Lcom/android/systemui/doze/DozeLog;

    .line 364
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 366
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    .line 368
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 370
    move-result-object v0

    .line 373
    move-object/from16 v26, v0

    .line 374
    check-cast v26, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 376
    move-object/from16 v17, v1

    .line 378
    move-object/from16 v24, v3

    .line 380
    invoke-direct/range {v17 .. v26}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)V

    .line 382
    return-object v1

    .line 385
    :pswitch_6
    new-instance v1, Lcom/android/systemui/doze/DozeUi;

    .line 386
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 388
    iget-object v5, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 390
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 392
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 394
    move-result-object v2

    .line 397
    move-object v6, v2

    .line 398
    check-cast v6, Landroid/app/AlarmManager;

    .line 399
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 401
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 403
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 405
    move-result-object v2

    .line 408
    move-object v7, v2

    .line 409
    check-cast v7, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 410
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 412
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 414
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 416
    move-result-object v2

    .line 419
    move-object v8, v2

    .line 420
    check-cast v8, Lcom/android/systemui/doze/DozeHost;

    .line 421
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 423
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 425
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 427
    move-result-object v2

    .line 430
    move-object v9, v2

    .line 431
    check-cast v9, Landroid/os/Handler;

    .line 432
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 434
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 436
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 438
    move-result-object v2

    .line 441
    move-object v10, v2

    .line 442
    check-cast v10, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 443
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 445
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 447
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 449
    move-result-object v2

    .line 452
    move-object v11, v2

    .line 453
    check-cast v11, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 454
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 456
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 458
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 460
    move-result-object v0

    .line 463
    move-object v12, v0

    .line 464
    check-cast v12, Lcom/android/systemui/doze/DozeLog;

    .line 465
    move-object v4, v1

    .line 467
    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;)V

    .line 468
    return-object v1

    .line 471
    :pswitch_7
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers;

    .line 472
    move-object v13, v1

    .line 474
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 475
    iget-object v14, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 477
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 479
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 481
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 483
    move-result-object v2

    .line 486
    move-object v15, v2

    .line 487
    check-cast v15, Lcom/android/systemui/doze/DozeHost;

    .line 488
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 490
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 492
    move-result-object v16

    .line 495
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 496
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 498
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 500
    move-result-object v2

    .line 503
    move-object/from16 v17, v2

    .line 504
    check-cast v17, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 506
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 508
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 510
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 512
    move-result-object v2

    .line 515
    move-object/from16 v18, v2

    .line 516
    check-cast v18, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 518
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 520
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 522
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 524
    move-result-object v2

    .line 527
    move-object/from16 v19, v2

    .line 528
    check-cast v19, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 530
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 532
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 534
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 536
    move-result-object v2

    .line 539
    move-object/from16 v20, v2

    .line 540
    check-cast v20, Lcom/android/systemui/dock/DockManager;

    .line 542
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 544
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximitySensor()Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 546
    move-result-object v21

    .line 549
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 550
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximityCheck()Lcom/android/systemui/util/sensors/ProximityCheck;

    .line 552
    move-result-object v22

    .line 555
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 556
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 558
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 560
    move-result-object v2

    .line 563
    move-object/from16 v23, v2

    .line 564
    check-cast v23, Lcom/android/systemui/doze/DozeLog;

    .line 566
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 568
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 570
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 572
    move-result-object v2

    .line 575
    move-object/from16 v24, v2

    .line 576
    check-cast v24, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 578
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 580
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    .line 582
    move-result-object v2

    .line 585
    move-object/from16 v25, v2

    .line 586
    check-cast v25, Lcom/android/systemui/util/settings/SecureSettings;

    .line 588
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 590
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    .line 592
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 594
    move-result-object v2

    .line 597
    move-object/from16 v26, v2

    .line 598
    check-cast v26, Lcom/android/systemui/biometrics/AuthController;

    .line 600
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 602
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 604
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 606
    move-result-object v2

    .line 609
    move-object/from16 v27, v2

    .line 610
    check-cast v27, Lcom/android/internal/logging/UiEventLogger;

    .line 612
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 614
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sessionTrackerProvider:Ljavax/inject/Provider;

    .line 616
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 618
    move-result-object v2

    .line 621
    move-object/from16 v28, v2

    .line 622
    check-cast v28, Lcom/android/systemui/log/SessionTracker;

    .line 624
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 626
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 628
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 630
    move-result-object v2

    .line 633
    move-object/from16 v29, v2

    .line 634
    check-cast v29, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 636
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 638
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    .line 640
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 642
    move-result-object v2

    .line 645
    move-object/from16 v30, v2

    .line 646
    check-cast v30, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 648
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 650
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 652
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 654
    move-result-object v0

    .line 657
    move-object/from16 v31, v0

    .line 658
    check-cast v31, Lcom/android/systemui/settings/UserTracker;

    .line 660
    invoke-direct/range {v13 .. v31}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V

    .line 662
    return-object v1

    .line 665
    :pswitch_8
    new-instance v1, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    .line 666
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 668
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    .line 670
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 672
    move-result-object v0

    .line 675
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollector;

    .line 676
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/classifier/FalsingCollector;)V

    .line 678
    return-object v1

    .line 681
    :pswitch_9
    new-instance v1, Lcom/android/systemui/doze/DozePauser;

    .line 682
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 684
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 686
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 688
    move-result-object v2

    .line 691
    check-cast v2, Landroid/os/Handler;

    .line 692
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 694
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 696
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 698
    move-result-object v3

    .line 701
    check-cast v3, Landroid/app/AlarmManager;

    .line 702
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 704
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 706
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 708
    move-result-object v0

    .line 711
    check-cast v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 712
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    .line 714
    return-object v1

    .line 717
    :pswitch_a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 718
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->delayedWakeLockBuilder()Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    .line 720
    move-result-object v1

    .line 723
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 724
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 726
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 728
    move-result-object v0

    .line 731
    check-cast v0, Landroid/os/Handler;

    .line 732
    iput-object v0, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mHandler:Landroid/os/Handler;

    .line 734
    const-string v2, "Doze"

    .line 736
    iput-object v2, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mTag:Ljava/lang/String;

    .line 738
    new-instance v3, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    .line 740
    iget-object v4, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mContext:Landroid/content/Context;

    .line 742
    iget-object v1, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 744
    invoke-static {v4, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    .line 746
    move-result-object v1

    .line 749
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 750
    return-object v3

    .line 753
    :pswitch_b
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 754
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->dozeMachineService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 756
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 758
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 760
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 762
    move-result-object v2

    .line 765
    check-cast v2, Lcom/android/systemui/doze/DozeHost;

    .line 766
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 768
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 770
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 772
    move-result-object v3

    .line 775
    check-cast v3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 776
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 778
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 780
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 782
    move-result-object v0

    .line 785
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 786
    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->providesWrappedService(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Ljava/util/concurrent/Executor;)Lcom/android/systemui/doze/DozeMachine$Service$Delegate;

    .line 788
    move-result-object v0

    .line 791
    return-object v0

    .line 792
    :pswitch_c
    new-instance v11, Lcom/android/systemui/doze/DozeMachine;

    .line 793
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 795
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 797
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 799
    move-result-object v1

    .line 802
    move-object v2, v1

    .line 803
    check-cast v2, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 804
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 806
    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 808
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 810
    move-result-object v3

    .line 813
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 814
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 816
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 818
    move-result-object v1

    .line 821
    move-object v4, v1

    .line 822
    check-cast v4, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 823
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 825
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 827
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 829
    move-result-object v1

    .line 832
    move-object v5, v1

    .line 833
    check-cast v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 834
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 836
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 838
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 840
    move-result-object v1

    .line 843
    move-object v6, v1

    .line 844
    check-cast v6, Lcom/android/systemui/doze/DozeLog;

    .line 845
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 847
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 849
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 851
    move-result-object v1

    .line 854
    move-object v7, v1

    .line 855
    check-cast v7, Lcom/android/systemui/dock/DockManager;

    .line 856
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 858
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 860
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 862
    move-result-object v1

    .line 865
    move-object v8, v1

    .line 866
    check-cast v8, Lcom/android/systemui/doze/DozeHost;

    .line 867
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 869
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->partArray()[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 871
    move-result-object v9

    .line 874
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 875
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 877
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 879
    move-result-object v0

    .line 882
    move-object v10, v0

    .line 883
    check-cast v10, Lcom/android/systemui/settings/UserTracker;

    .line 884
    move-object v1, v11

    .line 886
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V

    .line 887
    return-object v11

    .line 890
    nop

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 892
.end method
