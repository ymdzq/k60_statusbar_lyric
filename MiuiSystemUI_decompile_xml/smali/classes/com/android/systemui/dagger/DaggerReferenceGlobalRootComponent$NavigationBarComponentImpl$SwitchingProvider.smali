.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->id:I

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
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 23
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 25
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 33
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 35
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 45
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/systemui/settings/DisplayTracker;

    .line 53
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 55
    return-object v1

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 59
    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->id:I

    .line 61
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 63
    throw v1

    .line 66
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 67
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 69
    const-class v1, Landroid/view/WindowManager;

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/WindowManager;

    .line 77
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 79
    return-object v0

    .line 82
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 83
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 85
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    const v1, 0x7f0d0279    # @layout/navigation_bar_window 'res/layout/navigation_bar_window.xml'

    .line 93
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 101
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 103
    return-object v0

    .line 106
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 107
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 109
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 111
    move-result-object v0

    .line 114
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 115
    return-object v0

    .line 118
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 119
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 121
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 126
    check-cast v1, Landroid/view/LayoutInflater;

    .line 127
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 129
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    .line 131
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 136
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 137
    const v2, 0x7f0d0278    # @layout/navigation_bar 'res/layout/navigation_bar.xml'

    .line 139
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 142
    move-result-object v0

    .line 145
    const v1, 0x7f0a067d    # @id/navigation_bar_view

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v0

    .line 152
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 153
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 155
    return-object v0

    .line 158
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 159
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 161
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 163
    move-result-object v1

    .line 166
    move-object v2, v1

    .line 167
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 168
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 170
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    .line 172
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 174
    move-result-object v1

    .line 177
    move-object v3, v1

    .line 178
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 179
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 181
    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->savedState:Landroid/os/Bundle;

    .line 183
    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 185
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 187
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 192
    move-object v6, v1

    .line 193
    check-cast v6, Landroid/view/WindowManager;

    .line 194
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 196
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->assistManagerProvider:Ljavax/inject/Provider;

    .line 198
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 200
    move-result-object v7

    .line 203
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 204
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 206
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 211
    move-object v8, v1

    .line 212
    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 213
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 215
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bindDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 217
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 219
    move-result-object v1

    .line 222
    move-object v9, v1

    .line 223
    check-cast v9, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 224
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 226
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 228
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 230
    move-result-object v1

    .line 233
    move-object v10, v1

    .line 234
    check-cast v10, Lcom/android/internal/logging/MetricsLogger;

    .line 235
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 237
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 239
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 241
    move-result-object v1

    .line 244
    move-object v11, v1

    .line 245
    check-cast v11, Lcom/android/systemui/recents/OverviewProxyService;

    .line 246
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 248
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 250
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 252
    move-result-object v1

    .line 255
    move-object v12, v1

    .line 256
    check-cast v12, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 257
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 259
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 261
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 263
    move-result-object v1

    .line 266
    move-object v13, v1

    .line 267
    check-cast v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 268
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 270
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 272
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 274
    move-result-object v1

    .line 277
    move-object v14, v1

    .line 278
    check-cast v14, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 279
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 281
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    .line 283
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    move-result-object v1

    .line 288
    move-object v15, v1

    .line 289
    check-cast v15, Lcom/android/systemui/model/SysUiState;

    .line 290
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 292
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 294
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 296
    move-result-object v1

    .line 299
    move-object/from16 v16, v1

    .line 300
    check-cast v16, Lcom/android/systemui/settings/UserTracker;

    .line 302
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 304
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 306
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 308
    move-result-object v1

    .line 311
    move-object/from16 v17, v1

    .line 312
    check-cast v17, Lcom/android/systemui/statusbar/CommandQueue;

    .line 314
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 316
    move-object/from16 v42, v2

    .line 318
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setPip:Ljava/util/Optional;

    .line 320
    move-object/from16 v18, v2

    .line 322
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 324
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 326
    move-result-object v1

    .line 329
    check-cast v1, Lcom/android/systemui/recents/Recents;

    .line 330
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 332
    move-result-object v19

    .line 335
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 336
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Ljavax/inject/Provider;

    .line 338
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 340
    move-result-object v20

    .line 343
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 344
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setOneHanded:Ljava/util/Optional;

    .line 346
    move-object/from16 v21, v2

    .line 348
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 350
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 352
    move-result-object v1

    .line 355
    check-cast v1, Lcom/android/systemui/shade/ShadeController;

    .line 356
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 358
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 360
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 362
    move-result-object v1

    .line 365
    move-object/from16 v22, v1

    .line 366
    check-cast v22, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 368
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 370
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    .line 372
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 374
    move-result-object v1

    .line 377
    move-object/from16 v23, v1

    .line 378
    check-cast v23, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 380
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 382
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 384
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 386
    move-result-object v1

    .line 389
    move-object/from16 v24, v1

    .line 390
    check-cast v24, Landroid/os/Handler;

    .line 392
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 394
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 396
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 398
    move-result-object v1

    .line 401
    move-object/from16 v25, v1

    .line 402
    check-cast v25, Ljava/util/concurrent/Executor;

    .line 404
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 406
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 408
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 410
    move-result-object v1

    .line 413
    move-object/from16 v26, v1

    .line 414
    check-cast v26, Ljava/util/concurrent/Executor;

    .line 416
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 418
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 420
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 422
    move-result-object v1

    .line 425
    move-object/from16 v27, v1

    .line 426
    check-cast v27, Lcom/android/internal/logging/UiEventLogger;

    .line 428
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 430
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->navBarHelperProvider:Ljavax/inject/Provider;

    .line 432
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 434
    move-result-object v1

    .line 437
    move-object/from16 v28, v1

    .line 438
    check-cast v28, Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 440
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 442
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideLightBarControllerProvider:Ljavax/inject/Provider;

    .line 444
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 446
    move-result-object v1

    .line 449
    move-object/from16 v29, v1

    .line 450
    check-cast v29, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 452
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 454
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->lightBarControllerFactory()Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    .line 456
    move-result-object v30

    .line 459
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 460
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->autoHideControllerProvider:Ljavax/inject/Provider;

    .line 462
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 464
    move-result-object v1

    .line 467
    move-object/from16 v31, v1

    .line 468
    check-cast v31, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 470
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 472
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->autoHideControllerFactory()Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    .line 474
    move-result-object v32

    .line 477
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 478
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

    .line 480
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 482
    move-result-object v1

    .line 485
    check-cast v1, Ljava/util/Optional;

    .line 486
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 488
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    .line 490
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 492
    move-result-object v1

    .line 495
    move-object/from16 v33, v1

    .line 496
    check-cast v33, Landroid/view/inputmethod/InputMethodManager;

    .line 498
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 500
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->deadZone()Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 502
    move-result-object v34

    .line 505
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 506
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    .line 508
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 510
    move-result-object v1

    .line 513
    move-object/from16 v35, v1

    .line 514
    check-cast v35, Lcom/android/systemui/util/DeviceConfigProxy;

    .line 516
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    .line 518
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    .line 520
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 522
    move-result-object v1

    .line 525
    move-object/from16 v36, v1

    .line 526
    check-cast v36, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 528
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 530
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setBackAnimation:Ljava/util/Optional;

    .line 532
    move-object/from16 v37, v2

    .line 534
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 536
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 538
    move-result-object v1

    .line 541
    move-object/from16 v38, v1

    .line 542
    check-cast v38, Lcom/android/systemui/settings/UserContextProvider;

    .line 544
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 546
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 548
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 550
    move-result-object v1

    .line 553
    move-object/from16 v39, v1

    .line 554
    check-cast v39, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 556
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 558
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideTaskStackChangeListenersProvider:Ljavax/inject/Provider;

    .line 560
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 562
    move-result-object v1

    .line 565
    move-object/from16 v40, v1

    .line 566
    check-cast v40, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 568
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 570
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 572
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 574
    move-result-object v0

    .line 577
    move-object/from16 v41, v0

    .line 578
    check-cast v41, Lcom/android/systemui/settings/DisplayTracker;

    .line 580
    move-object/from16 v2, v42

    .line 582
    invoke-static/range {v2 .. v41}, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->newInstance(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;)Lcom/android/systemui/navigationbar/NavigationBar;

    .line 584
    move-result-object v0

    .line 587
    return-object v0
    .line 588
.end method
