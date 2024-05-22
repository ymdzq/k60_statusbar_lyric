.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 4
    if-eqz v1, :cond_4

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    const/4 v2, 0x4

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 20
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 22
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 24
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 26
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    .line 34
    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 36
    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 43
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 44
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 54
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 56
    return-object v1

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 60
    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 62
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 64
    throw v1

    .line 67
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 68
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 70
    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 72
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 79
    check-cast v2, Lcom/android/internal/logging/UiEventLogger;

    .line 80
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 82
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 84
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/systemui/qs/QSTileHost;

    .line 90
    invoke-direct {v1, v3, v2, v0}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/QSTileHost;)V

    .line 92
    return-object v1

    .line 95
    :cond_2
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 96
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 98
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 100
    move-result-object v5

    .line 103
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 104
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->namedRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    move-result-object v6

    .line 109
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 110
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiTileAdapterProvider:Ljavax/inject/Provider;

    .line 112
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 114
    move-result-object v2

    .line 117
    move-object v7, v2

    .line 118
    check-cast v7, Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 119
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 121
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 123
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 128
    move-object v8, v2

    .line 129
    check-cast v8, Lcom/android/systemui/qs/QSTileHost;

    .line 130
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 132
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 134
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 139
    move-object v9, v2

    .line 140
    check-cast v9, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 141
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 143
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideLightBarControllerProvider:Ljavax/inject/Provider;

    .line 145
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 150
    move-object v10, v2

    .line 151
    check-cast v10, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 152
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 154
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 156
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 158
    move-result-object v2

    .line 161
    move-object v11, v2

    .line 162
    check-cast v11, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 163
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 165
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 167
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 169
    move-result-object v2

    .line 172
    move-object v12, v2

    .line 173
    check-cast v12, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 174
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 176
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiTileQueryHelperProvider:Ljavax/inject/Provider;

    .line 178
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 180
    move-result-object v2

    .line 183
    move-object v13, v2

    .line 184
    check-cast v13, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 185
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 187
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 189
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 191
    move-result-object v0

    .line 194
    move-object v14, v0

    .line 195
    check-cast v14, Lcom/android/internal/logging/UiEventLogger;

    .line 196
    move-object v4, v1

    .line 198
    invoke-direct/range {v4 .. v14}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizer;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/qs/customize/MiuiTileAdapter;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V

    .line 199
    return-object v1

    .line 202
    :cond_3
    new-instance v1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 203
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 205
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->qSFooterDataUsage()Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 207
    move-result-object v16

    .line 210
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 211
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->controlCenterActivityStarterProvider:Ljavax/inject/Provider;

    .line 213
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 218
    move-object/from16 v17, v2

    .line 219
    check-cast v17, Lcom/android/systemui/plugins/ActivityStarter;

    .line 221
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 223
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 225
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 227
    move-result-object v2

    .line 230
    move-object/from16 v18, v2

    .line 231
    check-cast v18, Landroid/os/Looper;

    .line 233
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 235
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 237
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 239
    move-result-object v2

    .line 242
    move-object/from16 v19, v2

    .line 243
    check-cast v19, Ljava/util/concurrent/Executor;

    .line 245
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 247
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 249
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 251
    move-result-object v2

    .line 254
    move-object/from16 v20, v2

    .line 255
    check-cast v20, Landroid/os/Looper;

    .line 257
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 259
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 261
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 263
    move-result-object v2

    .line 266
    move-object/from16 v21, v2

    .line 267
    check-cast v21, Landroid/os/Handler;

    .line 269
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 271
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->centralSurfacesImplProvider:Ljavax/inject/Provider;

    .line 273
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 275
    move-result-object v22

    .line 278
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 279
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->systemUIStatProvider:Ljavax/inject/Provider;

    .line 281
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 283
    move-result-object v23

    .line 286
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 287
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 289
    move-result-object v24

    .line 292
    move-object v15, v1

    .line 293
    invoke-direct/range {v15 .. v24}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;-><init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsage;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Looper;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/os/Handler;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/qs/MiuiQSContainer;)V

    .line 294
    return-object v1

    .line 297
    :cond_4
    new-instance v1, Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 298
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 300
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 302
    move-result-object v3

    .line 305
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 306
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 308
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 310
    move-result-object v2

    .line 313
    move-object v4, v2

    .line 314
    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    .line 315
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 317
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 319
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 321
    move-result-object v2

    .line 324
    move-object v5, v2

    .line 325
    check-cast v5, Lcom/android/systemui/plugins/FalsingManager;

    .line 326
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 328
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->controlCenterControllerImplProvider:Ljavax/inject/Provider;

    .line 330
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 332
    move-result-object v2

    .line 335
    move-object v6, v2

    .line 336
    check-cast v6, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 337
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->miuiQSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 339
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->qSFooterDataUsageControllerProvider:Ljavax/inject/Provider;

    .line 341
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 343
    move-result-object v2

    .line 346
    move-object v7, v2

    .line 347
    check-cast v7, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 348
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 350
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->miuiBrightnessControllerProvider:Ljavax/inject/Provider;

    .line 352
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 354
    move-result-object v0

    .line 357
    move-object v8, v0

    .line 358
    check-cast v8, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 359
    move-object v2, v1

    .line 361
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/qs/MiuiQSContainerController;-><init>(Lcom/android/systemui/qs/MiuiQSContainer;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;)V

    .line 362
    return-object v1
    .line 365
.end method
