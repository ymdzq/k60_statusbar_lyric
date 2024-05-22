.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

.field public final id:I

.field public final statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 11
    iput p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->id:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->id:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->id:I

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    throw v0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 17
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 23
    const v0, 0x7f0a08e4    # @id/status_bar_end_side_content

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 32
    return-object p0

    .line 35
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 44
    const v0, 0x7f0a08e8    # @id/status_bar_start_side_content

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p0

    .line 52
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 53
    return-object p0

    .line 56
    :pswitch_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->setOfBoundsChangeListener()Ljava/util/Set;

    .line 61
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 65
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->startSideContentProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 72
    check-cast v2, Landroid/view/View;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->endSideContentProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    check-cast p0, Landroid/view/View;

    .line 83
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;-><init>(Ljava/util/Set;Landroid/view/View;Landroid/view/View;)V

    .line 85
    return-object v0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 89
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 91
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 96
    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 97
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 99
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 101
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 106
    check-cast p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 111
    const v1, 0x7f0a08e0    # @id/status_bar_container

    .line 113
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p0

    .line 119
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Landroid/view/View;)V

    .line 120
    return-object v0

    .line 123
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 124
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 126
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 128
    move-result-object p0

    .line 131
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 132
    const v0, 0x7f0a06cf    # @id/operator_name

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p0

    .line 140
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 141
    return-object p0

    .line 144
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 145
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 147
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 149
    move-result-object p0

    .line 152
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 153
    const v0, 0x7f0a01fb    # @id/clock

    .line 155
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object p0

    .line 161
    check-cast p0, Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 162
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 164
    return-object p0

    .line 167
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 168
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->provideClockProvider:Ljavax/inject/Provider;

    .line 170
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 175
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 178
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorNameViewProvider:Ljavax/inject/Provider;

    .line 180
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 185
    check-cast v1, Landroid/view/View;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 188
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    .line 190
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 195
    check-cast v2, Lcom/android/systemui/demomode/DemoModeController;

    .line 196
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 198
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    .line 200
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    move-result-object v3

    .line 205
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 206
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 208
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationBarControllerProvider:Ljavax/inject/Provider;

    .line 210
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 212
    move-result-object v3

    .line 215
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 216
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 218
    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->displayIdInteger()I

    .line 222
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    .line 225
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;Landroid/view/View;Lcom/android/systemui/demomode/DemoModeController;)V

    .line 227
    return-object p0

    .line 230
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 231
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 233
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 235
    move-result-object p0

    .line 238
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 239
    const v0, 0x7f0a06d0    # @id/operator_name_frame

    .line 241
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 244
    move-result-object p0

    .line 247
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 248
    move-result-object p0

    .line 251
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 252
    return-object p0

    .line 255
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 256
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 258
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 260
    move-result-object p0

    .line 263
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 264
    const v0, 0x7f0a03ee    # @id/heads_up_status_bar_view

    .line 266
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 269
    move-result-object p0

    .line 272
    check-cast p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 273
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 275
    return-object p0

    .line 278
    :pswitch_9
    new-instance v14, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 281
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 283
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    move-result-object v0

    .line 288
    move-object v1, v0

    .line 289
    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 292
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 294
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 296
    move-result-object v0

    .line 299
    move-object v2, v0

    .line 300
    check-cast v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 303
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 305
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 307
    move-result-object v0

    .line 310
    move-object v3, v0

    .line 311
    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 314
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 316
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 318
    move-result-object v0

    .line 321
    move-object v4, v0

    .line 322
    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 323
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 325
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 327
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 329
    move-result-object v0

    .line 332
    move-object v5, v0

    .line 333
    check-cast v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 336
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 338
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 340
    move-result-object v0

    .line 343
    move-object v6, v0

    .line 344
    check-cast v6, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 345
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 347
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 349
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 351
    move-result-object v0

    .line 354
    move-object v7, v0

    .line 355
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 356
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 358
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 360
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 362
    move-result-object v0

    .line 365
    move-object v8, v0

    .line 366
    check-cast v8, Lcom/android/systemui/statusbar/CommandQueue;

    .line 367
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 369
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    .line 371
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 373
    move-result-object v0

    .line 376
    move-object v9, v0

    .line 377
    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 380
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->provideNotificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 382
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 384
    move-result-object v0

    .line 387
    move-object v10, v0

    .line 388
    check-cast v10, Lcom/android/systemui/shade/ShadeViewController;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 391
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 393
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 395
    move-result-object v0

    .line 398
    move-object v11, v0

    .line 399
    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 402
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

    .line 404
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 406
    move-result-object v0

    .line 409
    move-object v12, v0

    .line 410
    check-cast v12, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 411
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 413
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

    .line 415
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 417
    move-result-object p0

    .line 420
    move-object v13, p0

    .line 421
    check-cast v13, Ljava/util/Optional;

    .line 422
    move-object v0, v14

    .line 424
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Ljava/util/Optional;)V

    .line 425
    return-object v14

    .line 428
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 429
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->phoneStatusBarViewControllerFactory()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;

    .line 431
    move-result-object v0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 435
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 437
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 439
    move-result-object p0

    .line 442
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 443
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 445
    move-result-object p0

    .line 448
    return-object p0

    .line 449
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 450
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->collapsedStatusBarFragment:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 452
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 454
    move-result-object p0

    .line 457
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 458
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 460
    return-object p0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 464
.end method
