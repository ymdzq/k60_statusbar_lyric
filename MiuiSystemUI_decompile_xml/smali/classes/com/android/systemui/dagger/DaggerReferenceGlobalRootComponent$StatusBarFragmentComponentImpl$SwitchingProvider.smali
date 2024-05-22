.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final centralSurfacesComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;

.field public final id:I

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

.field public final statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->centralSurfacesComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 11
    iput p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->id:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->id:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    iget p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->id:I

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    throw v0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

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
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

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
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->setOfBoundsChangeListener()Ljava/util/Set;

    .line 61
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 65
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->startSideContentProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 72
    check-cast v2, Landroid/view/View;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->endSideContentProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 89
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 91
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 96
    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 97
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 99
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

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
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 124
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

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
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 145
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 168
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->provideClockProvider:Ljavax/inject/Provider;

    .line 170
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 175
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 178
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorNameViewProvider:Ljavax/inject/Provider;

    .line 180
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 185
    check-cast v1, Landroid/view/View;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 188
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    .line 190
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 195
    check-cast v2, Lcom/android/systemui/demomode/DemoModeController;

    .line 196
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 198
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    .line 200
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    move-result-object v3

    .line 205
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 206
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 208
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->navigationBarControllerProvider:Ljavax/inject/Provider;

    .line 210
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 212
    move-result-object v3

    .line 215
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 216
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->displayIdInteger()I

    .line 220
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    .line 223
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;Landroid/view/View;Lcom/android/systemui/demomode/DemoModeController;)V

    .line 225
    return-object p0

    .line 228
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 229
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 231
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 233
    move-result-object p0

    .line 236
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 237
    const v0, 0x7f0a06d0    # @id/operator_name_frame

    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object p0

    .line 245
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 246
    move-result-object p0

    .line 249
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 250
    return-object p0

    .line 253
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 254
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 256
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 258
    move-result-object p0

    .line 261
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 262
    const v0, 0x7f0a03ee    # @id/heads_up_status_bar_view

    .line 264
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 267
    move-result-object p0

    .line 270
    check-cast p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 271
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 273
    return-object p0

    .line 276
    :pswitch_9
    new-instance v14, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 277
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 279
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 281
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 283
    move-result-object v0

    .line 286
    move-object v1, v0

    .line 287
    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 290
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 292
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 294
    move-result-object v0

    .line 297
    move-object v2, v0

    .line 298
    check-cast v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 301
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 303
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 305
    move-result-object v0

    .line 308
    move-object v3, v0

    .line 309
    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 312
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 314
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 319
    move-object v4, v0

    .line 320
    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 321
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 323
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 325
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 327
    move-result-object v0

    .line 330
    move-object v5, v0

    .line 331
    check-cast v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 334
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 336
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 338
    move-result-object v0

    .line 341
    move-object v6, v0

    .line 342
    check-cast v6, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 345
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 347
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 349
    move-result-object v0

    .line 352
    move-object v7, v0

    .line 353
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 356
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 358
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 360
    move-result-object v0

    .line 363
    move-object v8, v0

    .line 364
    check-cast v8, Lcom/android/systemui/statusbar/CommandQueue;

    .line 365
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->centralSurfacesComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 367
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    .line 369
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 371
    move-result-object v0

    .line 374
    move-object v9, v0

    .line 375
    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->centralSurfacesComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 378
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CentralSurfacesComponentImpl;->provideNotificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 380
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 382
    move-result-object v0

    .line 385
    move-object v10, v0

    .line 386
    check-cast v10, Lcom/android/systemui/shade/ShadeViewController;

    .line 387
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 389
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 391
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 393
    move-result-object v0

    .line 396
    move-object v11, v0

    .line 397
    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 400
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

    .line 402
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 404
    move-result-object v0

    .line 407
    move-object v12, v0

    .line 408
    check-cast v12, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 409
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 411
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

    .line 413
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 415
    move-result-object p0

    .line 418
    move-object v13, p0

    .line 419
    check-cast v13, Ljava/util/Optional;

    .line 420
    move-object v0, v14

    .line 422
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Ljava/util/Optional;)V

    .line 423
    return-object v14

    .line 426
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 427
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->phoneStatusBarViewControllerFactory()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;

    .line 429
    move-result-object v0

    .line 432
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 433
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 435
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 437
    move-result-object p0

    .line 440
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 441
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 443
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;->statusBarFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 448
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$StatusBarFragmentComponentImpl;->collapsedStatusBarFragment:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 450
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 452
    move-result-object p0

    .line 455
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 456
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 458
    return-object p0

    .line 461
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
    .line 462
.end method
