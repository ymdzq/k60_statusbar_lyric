.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    throw v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/systemui/qs/QSSquishinessController;

    .line 17
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 19
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSAnimatorProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/systemui/qs/QSAnimator;

    .line 27
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 29
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/systemui/qs/QSPanelController;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 39
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/systemui/qs/QuickQSPanelController;

    .line 47
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/qs/QSSquishinessController;-><init>(Lcom/android/systemui/qs/QSAnimator;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;)V

    .line 49
    return-object v1

    .line 52
    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 53
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSFooterView()Lcom/android/systemui/qs/QSFooterView;

    .line 55
    move-result-object v3

    .line 58
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 59
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    move-object v4, v1

    .line 67
    check-cast v4, Lcom/android/systemui/settings/UserTracker;

    .line 68
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 70
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    move-object v5, v1

    .line 78
    check-cast v5, Lcom/android/systemui/plugins/FalsingManager;

    .line 79
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 81
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlCenterActivityStarterProvider:Ljavax/inject/Provider;

    .line 83
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 88
    move-object v6, v1

    .line 89
    check-cast v6, Lcom/android/systemui/plugins/ActivityStarter;

    .line 90
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 92
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    .line 94
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 99
    move-object v7, v1

    .line 100
    check-cast v7, Lcom/android/systemui/qs/QSPanelController;

    .line 101
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 103
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->retailModeInteractorImplProvider:Ljavax/inject/Provider;

    .line 105
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 110
    move-object v8, v0

    .line 111
    check-cast v8, Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;

    .line 112
    new-instance v0, Lcom/android/systemui/qs/QSFooterViewController;

    .line 114
    move-object v2, v0

    .line 116
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/qs/QSFooterViewController;-><init>(Lcom/android/systemui/qs/QSFooterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;)V

    .line 117
    return-object v0

    .line 120
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 121
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSFooterViewControllerProvider:Ljavax/inject/Provider;

    .line 123
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 128
    check-cast v0, Lcom/android/systemui/qs/QSFooterViewController;

    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 131
    return-object v0

    .line 134
    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 135
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 137
    move-result-object v1

    .line 140
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 141
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 143
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 148
    check-cast v0, Lcom/android/systemui/qs/QuickQSPanelController;

    .line 149
    new-instance v2, Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    .line 151
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QuickQSPanelController;)V

    .line 153
    return-object v2

    .line 156
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 157
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSContainerImpl()Lcom/android/systemui/qs/QSContainerImpl;

    .line 159
    move-result-object v3

    .line 162
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 163
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    .line 165
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 170
    move-object v4, v1

    .line 171
    check-cast v4, Lcom/android/systemui/qs/QSPanelController;

    .line 172
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 174
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

    .line 176
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 178
    move-result-object v1

    .line 181
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 182
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 184
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 186
    move-result-object v2

    .line 189
    move-object v6, v2

    .line 190
    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 191
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 193
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 195
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 200
    move-object v7, v0

    .line 201
    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    .line 202
    new-instance v0, Lcom/android/systemui/qs/QSContainerImplController;

    .line 204
    move-object v5, v1

    .line 206
    check-cast v5, Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    .line 207
    move-object v2, v0

    .line 209
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/qs/QSContainerImplController;-><init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 210
    return-object v0

    .line 213
    :pswitch_5
    new-instance v1, Lcom/android/systemui/qs/QSAnimator;

    .line 214
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 216
    iget-object v9, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/QSFragment;

    .line 218
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;

    .line 220
    move-result-object v10

    .line 223
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 224
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 226
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 229
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    .line 231
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 233
    move-result-object v2

    .line 236
    move-object v11, v2

    .line 237
    check-cast v11, Lcom/android/systemui/qs/QSPanelController;

    .line 238
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 240
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 242
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 244
    move-result-object v2

    .line 247
    move-object v12, v2

    .line 248
    check-cast v12, Lcom/android/systemui/qs/QuickQSPanelController;

    .line 249
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 251
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 253
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 255
    move-result-object v2

    .line 258
    move-object v13, v2

    .line 259
    check-cast v13, Lcom/android/systemui/qs/QSHost;

    .line 260
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 262
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 264
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 266
    move-result-object v2

    .line 269
    move-object v14, v2

    .line 270
    check-cast v14, Ljava/util/concurrent/Executor;

    .line 271
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 273
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 275
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 277
    move-result-object v2

    .line 280
    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    .line 281
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 283
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

    .line 285
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 290
    move-object v15, v0

    .line 291
    check-cast v15, Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 292
    move-object v8, v1

    .line 294
    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/qs/QSFragment;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSHost;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V

    .line 295
    return-object v1

    .line 298
    :pswitch_6
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 299
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 301
    invoke-static {v0}, Lcom/android/systemui/qs/dagger/QSFragmentModule;->providesQSUsingCollapsedLandscapeMedia(Landroid/content/Context;)Z

    .line 303
    move-result v0

    .line 306
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 307
    move-result-object v0

    .line 310
    return-object v0

    .line 311
    :pswitch_7
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 312
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;

    .line 314
    move-result-object v3

    .line 317
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 318
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 320
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 322
    move-result-object v1

    .line 325
    move-object v4, v1

    .line 326
    check-cast v4, Lcom/android/systemui/qs/QSHost;

    .line 327
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 329
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    .line 331
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 333
    move-result-object v1

    .line 336
    move-object v5, v1

    .line 337
    check-cast v5, Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 338
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 340
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->namedBoolean()Z

    .line 342
    move-result v6

    .line 345
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 346
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesQuickQSMediaHostProvider:Ljavax/inject/Provider;

    .line 348
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 350
    move-result-object v1

    .line 353
    move-object v7, v1

    .line 354
    check-cast v7, Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 355
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 357
    iget-object v8, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->providesQSUsingCollapsedLandscapeMediaProvider:Ljavax/inject/Provider;

    .line 359
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 361
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 363
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 365
    move-result-object v1

    .line 368
    move-object v9, v1

    .line 369
    check-cast v9, Lcom/android/internal/logging/MetricsLogger;

    .line 370
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 372
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 374
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 376
    move-result-object v1

    .line 379
    move-object v10, v1

    .line 380
    check-cast v10, Lcom/android/internal/logging/UiEventLogger;

    .line 381
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 383
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    .line 385
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 387
    move-result-object v1

    .line 390
    move-object v11, v1

    .line 391
    check-cast v11, Lcom/android/systemui/qs/logging/QSLogger;

    .line 392
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 394
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 396
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 398
    move-result-object v0

    .line 401
    move-object v12, v0

    .line 402
    check-cast v12, Lcom/android/systemui/dump/DumpManager;

    .line 403
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanelController;

    .line 405
    move-object v2, v0

    .line 407
    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/qs/QuickQSPanelController;-><init>(Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Ljavax/inject/Provider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;)V

    .line 408
    return-object v0

    .line 411
    :pswitch_8
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 412
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 414
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 416
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    .line 418
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 420
    move-result-object v0

    .line 423
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 424
    new-instance v2, Lcom/android/systemui/qs/QSTileRevealController$Factory;

    .line 426
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/qs/QSTileRevealController$Factory;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    .line 428
    return-object v2

    .line 431
    :pswitch_9
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter;

    .line 432
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 434
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSThemedContextContext()Landroid/content/Context;

    .line 436
    move-result-object v2

    .line 439
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 440
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 442
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 444
    move-result-object v3

    .line 447
    check-cast v3, Lcom/android/systemui/qs/QSHost;

    .line 448
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 450
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 452
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 454
    move-result-object v0

    .line 457
    check-cast v0, Lcom/android/internal/logging/UiEventLogger;

    .line 458
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/UiEventLogger;)V

    .line 460
    return-object v1

    .line 463
    :pswitch_a
    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 464
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 466
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 468
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 470
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 472
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 474
    move-result-object v3

    .line 477
    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    .line 478
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 480
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 482
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 484
    move-result-object v4

    .line 487
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 488
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 490
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 492
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 494
    move-result-object v0

    .line 497
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 498
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 500
    return-object v1

    .line 503
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 504
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    .line 506
    move-result-object v0

    .line 509
    const v1, 0x7f0a0756    # @id/qs_customize

    .line 510
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 513
    move-result-object v0

    .line 516
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 517
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 519
    return-object v0

    .line 522
    :pswitch_c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 523
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->providesQSCutomizerProvider:Ljavax/inject/Provider;

    .line 525
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 527
    move-result-object v1

    .line 530
    move-object v3, v1

    .line 531
    check-cast v3, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 532
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 534
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->tileQueryHelperProvider:Ljavax/inject/Provider;

    .line 536
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 538
    move-result-object v1

    .line 541
    move-object v4, v1

    .line 542
    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 543
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 545
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 547
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 549
    move-result-object v1

    .line 552
    move-object v5, v1

    .line 553
    check-cast v5, Lcom/android/systemui/qs/QSHost;

    .line 554
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 556
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->tileAdapterProvider:Ljavax/inject/Provider;

    .line 558
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 560
    move-result-object v1

    .line 563
    move-object v6, v1

    .line 564
    check-cast v6, Lcom/android/systemui/qs/customize/TileAdapter;

    .line 565
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 567
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 569
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 571
    move-result-object v1

    .line 574
    move-object v7, v1

    .line 575
    check-cast v7, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 576
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 578
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 580
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 582
    move-result-object v1

    .line 585
    move-object v8, v1

    .line 586
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 587
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 589
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideLightBarControllerProvider:Ljavax/inject/Provider;

    .line 591
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 593
    move-result-object v1

    .line 596
    move-object v9, v1

    .line 597
    check-cast v9, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 598
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 600
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 602
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 604
    move-result-object v1

    .line 607
    move-object v10, v1

    .line 608
    check-cast v10, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 609
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 611
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 613
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 615
    move-result-object v0

    .line 618
    move-object v11, v0

    .line 619
    check-cast v11, Lcom/android/internal/logging/UiEventLogger;

    .line 620
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 622
    move-object v2, v0

    .line 624
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/qs/customize/QSCustomizerController;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;)V

    .line 625
    return-object v0

    .line 628
    :pswitch_d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 629
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSPanel()Lcom/android/systemui/qs/QSPanel;

    .line 631
    move-result-object v2

    .line 634
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 635
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 637
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 639
    move-result-object v1

    .line 642
    move-object v3, v1

    .line 643
    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    .line 644
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 646
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 648
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 650
    move-result-object v1

    .line 653
    move-object v4, v1

    .line 654
    check-cast v4, Lcom/android/systemui/qs/QSHost;

    .line 655
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 657
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    .line 659
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 661
    move-result-object v1

    .line 664
    move-object v5, v1

    .line 665
    check-cast v5, Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 666
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 668
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->namedBoolean()Z

    .line 670
    move-result v6

    .line 673
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 674
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesQSMediaHostProvider:Ljavax/inject/Provider;

    .line 676
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 678
    move-result-object v1

    .line 681
    move-object v7, v1

    .line 682
    check-cast v7, Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 683
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 685
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 687
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 689
    move-result-object v8

    .line 692
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 693
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 695
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 697
    move-result-object v1

    .line 700
    move-object v9, v1

    .line 701
    check-cast v9, Lcom/android/systemui/dump/DumpManager;

    .line 702
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 704
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 706
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 708
    move-result-object v1

    .line 711
    move-object v10, v1

    .line 712
    check-cast v10, Lcom/android/internal/logging/MetricsLogger;

    .line 713
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 715
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 717
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 719
    move-result-object v1

    .line 722
    move-object v11, v1

    .line 723
    check-cast v11, Lcom/android/internal/logging/UiEventLogger;

    .line 724
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 726
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    .line 728
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 730
    move-result-object v1

    .line 733
    move-object v12, v1

    .line 734
    check-cast v12, Lcom/android/systemui/qs/logging/QSLogger;

    .line 735
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;

    .line 737
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl;->brightnessControllerFactory()Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 739
    move-result-object v13

    .line 742
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 743
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->brightnessSliderControllerFactory()Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 745
    move-result-object v14

    .line 748
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 749
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 751
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 753
    move-result-object v1

    .line 756
    move-object v15, v1

    .line 757
    check-cast v15, Lcom/android/systemui/plugins/FalsingManager;

    .line 758
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 760
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 762
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 764
    move-result-object v0

    .line 767
    move-object/from16 v16, v0

    .line 768
    check-cast v16, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 770
    invoke-static/range {v2 .. v16}, Lcom/android/systemui/qs/QSPanelController_Factory;->newInstance(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Ljava/lang/Object;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/qs/QSPanelController;

    .line 772
    move-result-object v0

    .line 775
    return-object v0

    .line 776
    nop

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
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
    .line 778
.end method
