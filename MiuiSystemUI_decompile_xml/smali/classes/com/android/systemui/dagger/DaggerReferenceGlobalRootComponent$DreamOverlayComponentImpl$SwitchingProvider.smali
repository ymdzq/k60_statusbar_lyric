.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

.field public final id:I

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->id:I

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
    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->id:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->id:I

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    throw v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

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
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

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
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 50
    const v1, 0x7f0b0036    # @integer/config_dreamOverlayInTranslationYDurationMs '1167'

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 54
    move-result v0

    .line 57
    int-to-long v0, v0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v0

    .line 69
    const v1, 0x7f07031b    # @dimen/dream_overlay_entry_y_offset '40.0dp'

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v0

    .line 87
    const v1, 0x7f07027c    # @dimen/default_burn_in_prevention_offset '15.0dp'

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 100
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 102
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 107
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 108
    const v1, 0x7f0a0305    # @id/dream_overlay_status_bar

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 117
    const-string v1, "R.id.status_bar must not be null"

    .line 119
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 125
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 127
    return-object v0

    .line 130
    :pswitch_6
    new-instance v17, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 131
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 133
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayStatusBarViewProvider:Ljavax/inject/Provider;

    .line 135
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 140
    move-object v2, v1

    .line 141
    check-cast v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 142
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 144
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 146
    move-result-object v3

    .line 149
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 150
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 152
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 157
    move-object v4, v1

    .line 158
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 159
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 161
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 163
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 168
    move-object v5, v1

    .line 169
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 170
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 172
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->touchInsetSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 174
    move-result-object v6

    .line 177
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 178
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 180
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 185
    move-object v7, v1

    .line 186
    check-cast v7, Landroid/app/AlarmManager;

    .line 187
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 189
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->miuiNextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 191
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 196
    move-object v8, v1

    .line 197
    check-cast v8, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 198
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 200
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dateFormatUtil()Lcom/android/systemui/util/time/DateFormatUtil;

    .line 202
    move-result-object v9

    .line 205
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 206
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 208
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 213
    move-object v10, v1

    .line 214
    check-cast v10, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 215
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 217
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->providesDreamOverlayNotificationCountProvider:Ljavax/inject/Provider;

    .line 219
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 224
    move-object v11, v1

    .line 225
    check-cast v11, Ljava/util/Optional;

    .line 226
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 228
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 230
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 235
    move-object v12, v1

    .line 236
    check-cast v12, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 237
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 239
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 241
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 243
    move-result-object v1

    .line 246
    move-object v13, v1

    .line 247
    check-cast v13, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 248
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 250
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dreamOverlayStatusBarItemsProvider:Ljavax/inject/Provider;

    .line 252
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 254
    move-result-object v1

    .line 257
    move-object v14, v1

    .line 258
    check-cast v14, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    .line 259
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 261
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 263
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 265
    move-result-object v1

    .line 268
    move-object v15, v1

    .line 269
    check-cast v15, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 270
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 272
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 274
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 276
    move-result-object v0

    .line 279
    move-object/from16 v16, v0

    .line 280
    check-cast v16, Lcom/android/systemui/settings/UserTracker;

    .line 282
    move-object/from16 v1, v17

    .line 284
    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarView;Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/settings/UserTracker;)V

    .line 286
    return-object v17

    .line 289
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 290
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 292
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 294
    move-result-object v0

    .line 297
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 298
    const v1, 0x7f0a0300    # @id/dream_overlay_content

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 303
    move-result-object v0

    .line 306
    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    const-string v1, "R.id.dream_overlay_content must not be null"

    .line 309
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-result-object v0

    .line 314
    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 317
    return-object v0

    .line 320
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 321
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 323
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 325
    move-result-object v0

    .line 328
    check-cast v0, Landroid/view/LayoutInflater;

    .line 329
    const v1, 0x7f0d00b0    # @layout/dream_overlay_container 'res/layout/dream_overlay_container.xml'

    .line 331
    const/4 v2, 0x0

    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 335
    move-result-object v0

    .line 338
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 339
    const-string v1, "R.layout.dream_layout_container could not be properly inflated"

    .line 341
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    move-result-object v0

    .line 346
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 347
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 349
    return-object v0

    .line 352
    :pswitch_9
    new-instance v19, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 353
    move-object/from16 v1, v19

    .line 355
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 357
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 359
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 361
    move-result-object v2

    .line 364
    check-cast v2, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 365
    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 367
    iget-object v3, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 369
    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContentViewProvider:Ljavax/inject/Provider;

    .line 371
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 373
    move-result-object v4

    .line 376
    check-cast v4, Landroid/view/ViewGroup;

    .line 377
    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 379
    iget-object v5, v5, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayStatusBarViewControllerProvider:Ljavax/inject/Provider;

    .line 381
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 383
    move-result-object v5

    .line 386
    check-cast v5, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 387
    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 389
    iget-object v6, v6, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

    .line 391
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 393
    move-result-object v6

    .line 396
    check-cast v6, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    .line 397
    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 399
    iget-object v7, v7, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 401
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 403
    move-result-object v7

    .line 406
    check-cast v7, Lcom/android/systemui/statusbar/BlurUtils;

    .line 407
    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 409
    iget-object v8, v8, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 411
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 413
    move-result-object v8

    .line 416
    check-cast v8, Landroid/os/Handler;

    .line 417
    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 419
    invoke-virtual {v9}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 421
    move-result-object v9

    .line 424
    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 425
    iget-object v10, v10, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesMaxBurnInOffsetProvider:Ljavax/inject/Provider;

    .line 427
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 429
    move-result-object v10

    .line 432
    check-cast v10, Ljava/lang/Integer;

    .line 433
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 435
    move-result v10

    .line 438
    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 439
    invoke-virtual {v11}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->namedLong()J

    .line 441
    move-result-wide v11

    .line 444
    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 445
    invoke-virtual {v13}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->namedLong2()J

    .line 447
    move-result-wide v13

    .line 450
    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 451
    iget-object v15, v15, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->primaryBouncerCallbackInteractorProvider:Ljavax/inject/Provider;

    .line 453
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 455
    move-result-object v15

    .line 458
    check-cast v15, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 459
    move-object/from16 v20, v1

    .line 461
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    .line 463
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayAnimationsController()Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 465
    move-result-object v16

    .line 468
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 469
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 471
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 473
    move-result-object v1

    .line 476
    move-object/from16 v17, v1

    .line 477
    check-cast v17, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 479
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 481
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bouncerlessScrimControllerProvider:Ljavax/inject/Provider;

    .line 483
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 485
    move-result-object v0

    .line 488
    move-object/from16 v18, v0

    .line 489
    check-cast v18, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 491
    move-object/from16 v1, v20

    .line 493
    invoke-direct/range {v1 .. v18}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerView;Lcom/android/systemui/complication/ComplicationHostViewController;Landroid/view/ViewGroup;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Lcom/android/dream/lowlight/LowLightTransitionCoordinator;Lcom/android/systemui/statusbar/BlurUtils;Landroid/os/Handler;Landroid/content/res/Resources;IJJLcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;)V

    .line 495
    return-object v19

    .line 498
    nop

    .line 499
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
    .line 500
.end method
