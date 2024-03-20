.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->id:I

    .line 4
    if-eqz v1, :cond_5

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_4

    .line 9
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    const/4 v2, 0x5

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 23
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sideFpsControllerProvider:Ljavax/inject/Provider;

    .line 35
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 41
    return-object v0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 45
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->id:I

    .line 47
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 49
    throw v1

    .line 52
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 53
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityContainerProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 61
    const v1, 0x7f0a0a59    # @id/view_flipper

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 70
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 72
    return-object v0

    .line 75
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 76
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityViewFlipperProvider:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 84
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 86
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 88
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 93
    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 96
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAsyncLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 98
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 103
    check-cast v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 104
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 106
    invoke-virtual {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->keyguardInputViewControllerFactory()Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 108
    move-result-object v3

    .line 111
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 112
    invoke-virtual {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->emergencyButtonControllerFactory()Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 114
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 117
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 119
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    .line 125
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 127
    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V

    .line 129
    return-object v0

    .line 132
    :cond_3
    new-instance v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    .line 133
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 135
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 137
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 139
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityContainerProvider:Ljavax/inject/Provider;

    .line 141
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 146
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 147
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 149
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 151
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 153
    move-result-object v4

    .line 156
    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 157
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 159
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 161
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 166
    check-cast v0, Landroid/os/Handler;

    .line 167
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    .line 169
    return-object v1

    .line 172
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 173
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->bouncerContainer:Landroid/view/ViewGroup;

    .line 175
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 177
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 179
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 184
    check-cast v0, Landroid/view/LayoutInflater;

    .line 185
    const v2, 0x7f0d010f    # @layout/keyguard_security_container_view 'res/layout/keyguard_security_container_view.xml'

    .line 187
    const/4 v3, 0x0

    .line 190
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    move-result-object v0

    .line 194
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 195
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 200
    return-object v0

    .line 203
    :cond_5
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 204
    move-object v2, v1

    .line 206
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 207
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityContainerProvider:Ljavax/inject/Provider;

    .line 209
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 211
    move-result-object v3

    .line 214
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 215
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 217
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 219
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 221
    move-result-object v4

    .line 224
    check-cast v4, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    .line 225
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 227
    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 229
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 231
    move-result-object v5

    .line 234
    check-cast v5, Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 237
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 239
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 241
    move-result-object v6

    .line 244
    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 245
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 247
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 249
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 251
    move-result-object v7

    .line 254
    check-cast v7, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 255
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 257
    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 259
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 261
    move-result-object v8

    .line 264
    check-cast v8, Lcom/android/internal/logging/MetricsLogger;

    .line 265
    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 267
    iget-object v9, v9, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 269
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 271
    move-result-object v9

    .line 274
    check-cast v9, Lcom/android/internal/logging/UiEventLogger;

    .line 275
    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 277
    iget-object v10, v10, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 279
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 281
    move-result-object v10

    .line 284
    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 285
    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 287
    iget-object v11, v11, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->keyguardSecurityViewFlipperControllerProvider:Ljavax/inject/Provider;

    .line 289
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 291
    move-result-object v11

    .line 294
    check-cast v11, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 295
    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 297
    iget-object v12, v12, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 299
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 301
    move-result-object v12

    .line 304
    check-cast v12, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 305
    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 307
    iget-object v13, v13, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    .line 309
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 311
    move-result-object v13

    .line 314
    check-cast v13, Lcom/android/systemui/classifier/FalsingCollector;

    .line 315
    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 317
    iget-object v14, v14, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 319
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 321
    move-result-object v14

    .line 324
    check-cast v14, Lcom/android/systemui/plugins/FalsingManager;

    .line 325
    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 327
    iget-object v15, v15, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 329
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 331
    move-result-object v15

    .line 334
    check-cast v15, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 335
    move-object/from16 v29, v1

    .line 337
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 339
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 341
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 343
    move-result-object v1

    .line 346
    check-cast v1, Lcom/android/systemui/flags/FeatureFlags;

    .line 347
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 349
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->globalSettingsImpl()Ljava/lang/Object;

    .line 351
    move-result-object v1

    .line 354
    move-object/from16 v16, v1

    .line 355
    check-cast v16, Lcom/android/systemui/util/settings/GlobalSettings;

    .line 357
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 359
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sessionTrackerProvider:Ljavax/inject/Provider;

    .line 361
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 363
    move-result-object v1

    .line 366
    move-object/from16 v17, v1

    .line 367
    check-cast v17, Lcom/android/systemui/log/SessionTracker;

    .line 369
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 371
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->providesOptionalSidefpsControllerProvider:Ljavax/inject/Provider;

    .line 373
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 375
    move-result-object v1

    .line 378
    move-object/from16 v18, v1

    .line 379
    check-cast v18, Ljava/util/Optional;

    .line 381
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 383
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->falsingA11yDelegate()Lcom/android/systemui/classifier/FalsingA11yDelegate;

    .line 385
    move-result-object v19

    .line 388
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 389
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 391
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 393
    move-result-object v1

    .line 396
    move-object/from16 v20, v1

    .line 397
    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 399
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 401
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->viewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 403
    move-result-object v21

    .line 406
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 407
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    .line 409
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 411
    move-result-object v1

    .line 414
    move-object/from16 v22, v1

    .line 415
    check-cast v22, Landroid/media/AudioManager;

    .line 417
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 419
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemUIKeyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

    .line 421
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 423
    move-result-object v1

    .line 426
    move-object/from16 v23, v1

    .line 427
    check-cast v23, Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 429
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 431
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->miuiKeyguardWallPaperManagerProvider:Ljavax/inject/Provider;

    .line 433
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 435
    move-result-object v1

    .line 438
    move-object/from16 v24, v1

    .line 439
    check-cast v24, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 441
    new-instance v1, Landroid/os/Handler;

    .line 443
    move-object/from16 v25, v1

    .line 445
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 447
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 450
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 452
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 454
    move-result-object v1

    .line 457
    move-object/from16 v26, v1

    .line 458
    check-cast v26, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 460
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->keyguardBouncerComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;

    .line 462
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl;->emergencyButtonControllerFactory()Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 464
    move-result-object v27

    .line 467
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 468
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardEditorHelperProvider:Ljavax/inject/Provider;

    .line 470
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 472
    move-result-object v0

    .line 475
    move-object/from16 v28, v0

    .line 476
    check-cast v28, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 478
    invoke-direct/range {v2 .. v28}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 480
    return-object v29
    .line 483
.end method
