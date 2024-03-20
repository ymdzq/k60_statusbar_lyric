.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->id:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->id:I

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    throw v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroid/util/DisplayMetrics;

    .line 27
    invoke-direct {v1, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;-><init>(Landroid/util/DisplayMetrics;)V

    .line 29
    return-object v1

    .line 32
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 35
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 41
    return-object v0

    .line 44
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 45
    sget-object v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 52
    const v1, 0x7f0b0036    # @integer/config_dreamOverlayInTranslationYDurationMs '1167'

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 56
    move-result v0

    .line 59
    int-to-long v0, v0

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 66
    sget-object v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v0

    .line 73
    const v1, 0x7f07031b    # @dimen/dream_overlay_entry_y_offset '40.0dp'

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 86
    sget-object v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v0

    .line 93
    const v1, 0x7f07027c    # @dimen/default_burn_in_prevention_offset '15.0dp'

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 106
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 108
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 114
    const v1, 0x7f0a0305    # @id/dream_overlay_status_bar

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 122
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 123
    const-string v1, "R.id.status_bar must not be null"

    .line 125
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 131
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 133
    return-object v0

    .line 136
    :pswitch_6
    new-instance v17, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 137
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 139
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayStatusBarViewProvider:Ljavax/inject/Provider;

    .line 141
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 143
    move-result-object v1

    .line 146
    move-object v2, v1

    .line 147
    check-cast v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 148
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 150
    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 152
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 154
    move-result-object v3

    .line 157
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 158
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 160
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 165
    move-object v4, v1

    .line 166
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 167
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 169
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 171
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 173
    move-result-object v1

    .line 176
    move-object v5, v1

    .line 177
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 178
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 180
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->touchInsetSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 182
    move-result-object v6

    .line 185
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 186
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 188
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 190
    move-result-object v1

    .line 193
    move-object v7, v1

    .line 194
    check-cast v7, Landroid/app/AlarmManager;

    .line 195
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 197
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->miuiNextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 199
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 201
    move-result-object v1

    .line 204
    move-object v8, v1

    .line 205
    check-cast v8, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 206
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 208
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dateFormatUtil()Lcom/android/systemui/util/time/DateFormatUtil;

    .line 210
    move-result-object v9

    .line 213
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 214
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 216
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 221
    move-object v10, v1

    .line 222
    check-cast v10, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 223
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 225
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesDreamOverlayNotificationCountProvider:Ljavax/inject/Provider;

    .line 227
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 229
    move-result-object v1

    .line 232
    move-object v11, v1

    .line 233
    check-cast v11, Ljava/util/Optional;

    .line 234
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 236
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 238
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 240
    move-result-object v1

    .line 243
    move-object v12, v1

    .line 244
    check-cast v12, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 245
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 247
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 249
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 254
    move-object v13, v1

    .line 255
    check-cast v13, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 256
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 258
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dreamOverlayStatusBarItemsProvider:Ljavax/inject/Provider;

    .line 260
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 265
    move-object v14, v1

    .line 266
    check-cast v14, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    .line 267
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 269
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 271
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 273
    move-result-object v1

    .line 276
    move-object v15, v1

    .line 277
    check-cast v15, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 278
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 280
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 282
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 284
    move-result-object v0

    .line 287
    move-object/from16 v16, v0

    .line 288
    check-cast v16, Lcom/android/systemui/settings/UserTracker;

    .line 290
    move-object/from16 v1, v17

    .line 292
    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarView;Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/settings/UserTracker;)V

    .line 294
    return-object v17

    .line 297
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 298
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 300
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 302
    move-result-object v0

    .line 305
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 306
    const v1, 0x7f0a0300    # @id/dream_overlay_content

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 311
    move-result-object v0

    .line 314
    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    const-string v1, "R.id.dream_overlay_content must not be null"

    .line 317
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-result-object v0

    .line 322
    check-cast v0, Landroid/view/ViewGroup;

    .line 323
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 325
    return-object v0

    .line 328
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 329
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 331
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 333
    move-result-object v0

    .line 336
    check-cast v0, Landroid/view/LayoutInflater;

    .line 337
    const v1, 0x7f0d00b0    # @layout/dream_overlay_container 'res/layout/dream_overlay_container.xml'

    .line 339
    const/4 v2, 0x0

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 343
    move-result-object v0

    .line 346
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 347
    const-string v1, "R.layout.dream_layout_container could not be properly inflated"

    .line 349
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-result-object v0

    .line 354
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 355
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 357
    return-object v0

    .line 360
    :pswitch_9
    new-instance v19, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 361
    move-object/from16 v1, v19

    .line 363
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 365
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 367
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 369
    move-result-object v2

    .line 372
    check-cast v2, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 373
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 375
    iget-object v3, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 377
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContentViewProvider:Ljavax/inject/Provider;

    .line 379
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 381
    move-result-object v4

    .line 384
    check-cast v4, Landroid/view/ViewGroup;

    .line 385
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 387
    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayStatusBarViewControllerProvider:Ljavax/inject/Provider;

    .line 389
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 391
    move-result-object v5

    .line 394
    check-cast v5, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 395
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 397
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

    .line 399
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 401
    move-result-object v6

    .line 404
    check-cast v6, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    .line 405
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 407
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 409
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 411
    move-result-object v7

    .line 414
    check-cast v7, Lcom/android/systemui/statusbar/BlurUtils;

    .line 415
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 417
    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 419
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 421
    move-result-object v8

    .line 424
    check-cast v8, Landroid/os/Handler;

    .line 425
    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 427
    invoke-virtual {v9}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 429
    move-result-object v9

    .line 432
    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 433
    iget-object v10, v10, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesMaxBurnInOffsetProvider:Ljavax/inject/Provider;

    .line 435
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 437
    move-result-object v10

    .line 440
    check-cast v10, Ljava/lang/Integer;

    .line 441
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 443
    move-result v10

    .line 446
    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 447
    invoke-virtual {v11}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedLong()J

    .line 449
    move-result-wide v11

    .line 452
    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 453
    invoke-virtual {v13}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedLong2()J

    .line 455
    move-result-wide v13

    .line 458
    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 459
    iget-object v15, v15, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->primaryBouncerCallbackInteractorProvider:Ljavax/inject/Provider;

    .line 461
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 463
    move-result-object v15

    .line 466
    check-cast v15, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 467
    move-object/from16 v20, v1

    .line 469
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 471
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayAnimationsController()Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 473
    move-result-object v16

    .line 476
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 477
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 479
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 481
    move-result-object v1

    .line 484
    move-object/from16 v17, v1

    .line 485
    check-cast v17, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 487
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 489
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bouncerlessScrimControllerProvider:Ljavax/inject/Provider;

    .line 491
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 493
    move-result-object v0

    .line 496
    move-object/from16 v18, v0

    .line 497
    check-cast v18, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 499
    move-object/from16 v1, v20

    .line 501
    invoke-direct/range {v1 .. v18}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerView;Lcom/android/systemui/complication/ComplicationHostViewController;Landroid/view/ViewGroup;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Lcom/android/dream/lowlight/LowLightTransitionCoordinator;Lcom/android/systemui/statusbar/BlurUtils;Landroid/os/Handler;Landroid/content/res/Resources;IJJLcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;)V

    .line 503
    return-object v19

    .line 506
    nop

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 508
.end method
