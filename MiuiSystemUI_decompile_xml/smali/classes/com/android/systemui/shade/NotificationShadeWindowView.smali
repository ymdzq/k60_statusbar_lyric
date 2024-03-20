.class public Lcom/android/systemui/shade/NotificationShadeWindowView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

.field public mFloatingActionMode:Landroid/view/ActionMode;

.field public mFloatingActionModeOriginatingView:Landroid/view/View;

.field public mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field public mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

.field public mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

.field public mLayoutInsetProvider:Lcom/android/systemui/statusbar/NotificationInsetsController;

.field public mLeftInset:I

.field public mRightInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 6
    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 8
    new-instance p2, Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    .line 10
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowView$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final cleanupFloatingActionModeViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 7
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 12
    if-eqz v0, :cond_2

    .line 14
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 26
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 29
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 31
    :cond_2
    return-void
    .line 33
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v3, :cond_1

    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 20
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 26
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v0, v2

    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    move v0, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v2

    .line 45
    :goto_1
    if-eqz v0, :cond_2

    .line 46
    return v3

    .line 48
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    return v3

    .line 55
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    move v0, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v0, v2

    .line 69
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 70
    move-result v1

    .line 73
    const/4 v4, 0x4

    .line 74
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 75
    if-eq v1, v4, :cond_e

    .line 77
    const/16 v4, 0x3e

    .line 79
    const/high16 v5, 0x3f800000    # 1.0f

    .line 81
    if-eq v1, v4, :cond_c

    .line 83
    const/16 v4, 0x52

    .line 85
    if-eq v1, v4, :cond_7

    .line 87
    const/16 v0, 0x162

    .line 89
    const-class v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 91
    if-eq v1, v0, :cond_6

    .line 93
    const/16 v0, 0x18

    .line 95
    if-eq v1, v0, :cond_5

    .line 97
    const/16 v0, 0x19

    .line 99
    if-eq v1, v0, :cond_5

    .line 101
    goto/16 :goto_8

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 105
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 107
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 109
    if-eqz v0, :cond_d

    .line 111
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 117
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 124
    move-result-object p0

    .line 127
    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 128
    move-result-object p0

    .line 131
    const/high16 v0, -0x80000000

    .line 132
    invoke-virtual {p0, p1, v0, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 134
    goto/16 :goto_9

    .line 137
    :cond_6
    const-string p0, "NotifShadeWindowVC"

    .line 139
    const-string v0, "event is keycode_goto"

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 146
    move-result-object p0

    .line 149
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->notifyKeycodeGoto()V

    .line 150
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 156
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 159
    goto/16 :goto_9

    .line 162
    :cond_7
    if-nez v0, :cond_d

    .line 164
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 166
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 168
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 170
    if-eqz p1, :cond_b

    .line 172
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 174
    if-eqz p1, :cond_b

    .line 176
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 178
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 182
    move-result-object v0

    .line 185
    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 188
    move-result-object p1

    .line 191
    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 192
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 194
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 196
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object p1

    .line 201
    const v0, 0x7f05001a    # @bool/config_disableMenuKeyInLockScreen 'false'

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 205
    move-result p1

    .line 208
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    .line 209
    move-result v0

    .line 212
    new-instance v1, Ljava/io/File;

    .line 213
    const-string v4, "/data/local/enable_menu_key"

    .line 215
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 220
    move-result v1

    .line 223
    if-eqz p1, :cond_9

    .line 224
    if-nez v0, :cond_9

    .line 226
    if-eqz v1, :cond_8

    .line 228
    goto :goto_3

    .line 230
    :cond_8
    move p1, v2

    .line 231
    goto :goto_4

    .line 232
    :cond_9
    :goto_3
    move p1, v3

    .line 233
    :goto_4
    if-eqz p1, :cond_a

    .line 234
    move p1, v3

    .line 236
    goto :goto_5

    .line 237
    :cond_a
    move p1, v2

    .line 238
    :goto_5
    if-eqz p1, :cond_b

    .line 239
    move p1, v3

    .line 241
    goto :goto_6

    .line 242
    :cond_b
    move p1, v2

    .line 243
    :goto_6
    if-eqz p1, :cond_d

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 246
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 248
    invoke-virtual {p0, v2, v5, v3, v2}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapsePanels(IFZZ)V

    .line 250
    goto :goto_7

    .line 253
    :cond_c
    if-nez v0, :cond_d

    .line 254
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 256
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 258
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 260
    if-eqz p1, :cond_d

    .line 262
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 264
    if-eqz p1, :cond_d

    .line 266
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 268
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 270
    invoke-virtual {p0, v2, v5, v3, v2}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapsePanels(IFZZ)V

    .line 272
    :goto_7
    move v2, v3

    .line 275
    :cond_d
    :goto_8
    move v3, v2

    .line 276
    goto :goto_9

    .line 277
    :cond_e
    if-nez v0, :cond_10

    .line 278
    const-class p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 280
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 282
    move-result-object v0

    .line 285
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 286
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 288
    if-eqz v0, :cond_f

    .line 290
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 292
    move-result-object p0

    .line 295
    check-cast p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 296
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 298
    goto :goto_9

    .line 301
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 302
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onBackPressed()Z

    .line 306
    :cond_10
    :goto_9
    return v3
    .line 309
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 13
    move-result p1

    .line 16
    const/4 v0, 0x4

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    goto :goto_2

    .line 21
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 22
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 31
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 37
    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 41
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 43
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 45
    if-ne p1, v2, :cond_1

    .line 47
    move p1, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p1, v1

    .line 51
    :goto_0
    if-eqz p1, :cond_2

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    move v0, v1

    .line 55
    :goto_1
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onBackPressed()Z

    .line 58
    move-result v1

    .line 61
    :cond_3
    :goto_2
    return v1
    .line 62
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 6
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 8
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 10
    if-nez v4, :cond_0

    .line 12
    const-string v2, "NotifShadeWindowVC"

    .line 14
    const-string v3, "Ignoring touch while statusBarView not yet set."

    .line 16
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    goto/16 :goto_f

    .line 23
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-nez v4, :cond_1

    .line 31
    move v4, v6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v4, v5

    .line 35
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    move-result v7

    .line 39
    if-ne v7, v6, :cond_2

    .line 40
    move v7, v6

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v7, v5

    .line 44
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    move-result v8

    .line 48
    const/4 v9, 0x3

    .line 49
    if-ne v8, v9, :cond_3

    .line 50
    move v8, v6

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v8, v5

    .line 54
    :goto_2
    iget-boolean v10, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 55
    if-nez v7, :cond_4

    .line 57
    if-eqz v8, :cond_5

    .line 59
    :cond_4
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 61
    :cond_5
    iget-object v11, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 63
    iget-boolean v12, v11, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->transToControlPanel:Z

    .line 65
    if-eqz v12, :cond_9

    .line 67
    const-class v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 69
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 74
    check-cast v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 75
    iget-boolean v3, v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 77
    if-eqz v3, :cond_6

    .line 79
    iget-object v2, v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 81
    if-eqz v2, :cond_6

    .line 83
    invoke-interface {v2, v1, v6}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->handleMotionEvent(Landroid/view/MotionEvent;Z)Z

    .line 85
    :cond_6
    if-nez v7, :cond_7

    .line 88
    if-eqz v8, :cond_8

    .line 90
    :cond_7
    iput-boolean v5, v11, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->transToControlPanel:Z

    .line 92
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 94
    goto/16 :goto_f

    .line 96
    :cond_9
    iget-object v11, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 98
    if-nez v8, :cond_a

    .line 100
    move-object v12, v11

    .line 102
    check-cast v12, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 103
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->shouldIgnoreTouch()Z

    .line 105
    move-result v12

    .line 108
    if-eqz v12, :cond_a

    .line 109
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    goto/16 :goto_f

    .line 113
    :cond_a
    const/4 v12, 0x0

    .line 115
    if-eqz v4, :cond_b

    .line 116
    iput-boolean v6, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 118
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 120
    iput-object v1, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    .line 122
    goto :goto_3

    .line 124
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 125
    move-result v13

    .line 128
    if-eq v13, v6, :cond_c

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 131
    move-result v13

    .line 134
    if-ne v13, v9, :cond_d

    .line 135
    :cond_c
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 137
    iput-object v12, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    .line 139
    :cond_d
    :goto_3
    iget-boolean v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 141
    if-nez v13, :cond_2a

    .line 143
    iget-boolean v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 145
    if-eqz v13, :cond_e

    .line 147
    goto/16 :goto_e

    .line 149
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 151
    move-result v13

    .line 154
    const/4 v14, 0x5

    .line 155
    iget-object v15, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 156
    iget-object v12, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 158
    if-ne v13, v14, :cond_f

    .line 160
    move-object v13, v12

    .line 162
    check-cast v13, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 163
    iget v13, v13, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 165
    if-ne v13, v6, :cond_f

    .line 167
    move-object v13, v15

    .line 169
    check-cast v13, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 170
    iget-boolean v13, v13, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 172
    if-eqz v13, :cond_f

    .line 174
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 176
    :cond_f
    iget-object v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 179
    iget-boolean v13, v13, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 181
    if-eqz v13, :cond_10

    .line 183
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 185
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    goto/16 :goto_f

    .line 190
    :cond_10
    iget-boolean v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsOcclusionTransitionRunning:Z

    .line 192
    if-eqz v13, :cond_11

    .line 194
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 196
    goto/16 :goto_f

    .line 198
    :cond_11
    iget-object v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 200
    check-cast v13, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 202
    invoke-virtual {v13, v1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 204
    iget-object v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPulsingWakeupGestureHandler:Landroid/view/GestureDetector;

    .line 207
    invoke-virtual {v13, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    iget-object v13, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 212
    iget-object v9, v13, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 214
    invoke-virtual {v9}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 216
    move-result v9

    .line 219
    if-eqz v9, :cond_13

    .line 220
    iget-object v9, v13, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    .line 222
    iget-object v5, v9, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 224
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 226
    move-result v6

    .line 229
    invoke-virtual {v5, v6}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 230
    move-result v5

    .line 233
    iget-object v6, v9, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 234
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 236
    move-result-object v6

    .line 239
    check-cast v6, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 240
    iget-object v6, v6, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->overlayBounds:Landroid/graphics/Rect;

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 244
    move-result v9

    .line 247
    float-to-int v9, v9

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 249
    move-result v14

    .line 252
    float-to-int v14, v14

    .line 253
    invoke-virtual {v6, v9, v14}, Landroid/graphics/Rect;->contains(II)Z

    .line 254
    move-result v6

    .line 257
    if-eqz v5, :cond_12

    .line 258
    if-eqz v6, :cond_12

    .line 260
    const/4 v5, 0x1

    .line 262
    goto :goto_4

    .line 263
    :cond_12
    const/4 v5, 0x0

    .line 264
    :goto_4
    if-nez v5, :cond_13

    .line 265
    invoke-virtual {v13, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 267
    :cond_13
    iget-object v5, v13, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 270
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 272
    move-result v5

    .line 275
    if-eqz v5, :cond_14

    .line 276
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 278
    goto/16 :goto_f

    .line 280
    :cond_14
    iget-object v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    .line 282
    if-eqz v5, :cond_15

    .line 284
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 286
    move-result v5

    .line 289
    if-nez v5, :cond_15

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 292
    move-result v5

    .line 295
    const/4 v6, 0x5

    .line 296
    if-ne v5, v6, :cond_15

    .line 297
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 299
    goto/16 :goto_f

    .line 301
    :cond_15
    if-eqz v4, :cond_18

    .line 303
    iget-object v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 305
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 307
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 309
    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 311
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 313
    move-result-object v9

    .line 316
    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 317
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 319
    if-eqz v6, :cond_16

    .line 321
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 323
    move-result-object v14

    .line 326
    invoke-interface {v14}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 327
    move-result v14

    .line 330
    if-nez v14, :cond_16

    .line 331
    goto :goto_5

    .line 333
    :cond_16
    if-eqz v9, :cond_17

    .line 334
    invoke-interface {v9}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    .line 336
    move-result v6

    .line 339
    if-eqz v6, :cond_17

    .line 340
    if-eqz v13, :cond_17

    .line 342
    move-object v6, v13

    .line 344
    goto :goto_5

    .line 345
    :cond_17
    const/4 v6, 0x0

    .line 346
    :goto_5
    if-eqz v6, :cond_18

    .line 347
    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 349
    move-result v6

    .line 352
    if-nez v6, :cond_18

    .line 353
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 355
    const/4 v9, 0x0

    .line 357
    const/4 v13, 0x1

    .line 358
    invoke-virtual {v6, v9, v9, v13, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    .line 359
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 362
    invoke-virtual {v5, v13, v13}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 364
    :cond_18
    check-cast v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 367
    iget-boolean v5, v12, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 369
    if-eqz v5, :cond_19

    .line 371
    check-cast v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 373
    iget-object v5, v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 375
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 377
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 379
    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    :cond_19
    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1$$ExternalSyntheticLambda0;

    .line 384
    invoke-direct {v5, v2}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;)V

    .line 386
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 389
    invoke-virtual {v2, v1}, Lcom/android/keyguard/LockIconViewController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 391
    move-result v6

    .line 394
    if-nez v6, :cond_1a

    .line 395
    invoke-virtual {v2}, Lcom/android/keyguard/LockIconViewController;->cancelTouches()V

    .line 397
    :goto_6
    move/from16 v17, v7

    .line 400
    move/from16 v18, v8

    .line 402
    move/from16 v16, v10

    .line 404
    goto/16 :goto_8

    .line 406
    :cond_1a
    iput-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mOnGestureDetectedRunnable:Ljava/lang/Runnable;

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 410
    move-result v5

    .line 413
    iget-wide v11, v2, Lcom/android/keyguard/LockIconViewController;->mLongPressTimeout:J

    .line 414
    iget-object v6, v2, Lcom/android/keyguard/LockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 416
    if-eqz v5, :cond_1f

    .line 418
    const/4 v9, 0x1

    .line 420
    if-eq v5, v9, :cond_1d

    .line 421
    const/4 v9, 0x2

    .line 423
    if-eq v5, v9, :cond_1b

    .line 424
    const/4 v13, 0x3

    .line 426
    if-eq v5, v13, :cond_1d

    .line 427
    const/4 v13, 0x7

    .line 429
    if-eq v5, v13, :cond_1b

    .line 430
    const/16 v9, 0x9

    .line 432
    if-eq v5, v9, :cond_1f

    .line 434
    const/16 v6, 0xa

    .line 436
    if-eq v5, v6, :cond_1d

    .line 438
    goto :goto_6

    .line 440
    :cond_1b
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 441
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 443
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 446
    const/16 v13, 0x3e8

    .line 448
    invoke-virtual {v5, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 450
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 453
    iget v13, v2, Lcom/android/keyguard/LockIconViewController;->mActivePointerId:I

    .line 455
    sget-object v14, Lcom/android/systemui/biometrics/UdfpsController;->UDFPS_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 457
    invoke-virtual {v5, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 459
    move-result v14

    .line 462
    invoke-virtual {v5, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 463
    move-result v5

    .line 466
    float-to-double v13, v14

    .line 467
    move/from16 v16, v10

    .line 468
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 470
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 472
    move-result-wide v13

    .line 475
    move/from16 v17, v7

    .line 476
    move/from16 v18, v8

    .line 478
    float-to-double v7, v5

    .line 480
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 481
    move-result-wide v7

    .line 484
    add-double/2addr v7, v13

    .line 485
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 486
    move-result-wide v7

    .line 489
    double-to-float v5, v7

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 491
    move-result v7

    .line 494
    const/4 v8, 0x2

    .line 495
    if-eq v7, v8, :cond_1e

    .line 496
    const v7, 0x443b8000    # 750.0f

    .line 498
    cmpl-float v5, v5, v7

    .line 501
    if-lez v5, :cond_1c

    .line 503
    const/4 v5, 0x1

    .line 505
    goto :goto_7

    .line 506
    :cond_1c
    const/4 v5, 0x0

    .line 507
    :goto_7
    if-eqz v5, :cond_1e

    .line 508
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mLongPressCancelRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 510
    invoke-virtual {v5}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 512
    new-instance v5, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda3;

    .line 515
    const/4 v7, 0x2

    .line 517
    invoke-direct {v5, v2, v7}, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/LockIconViewController;I)V

    .line 518
    invoke-interface {v6, v5, v11, v12}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 521
    move-result-object v5

    .line 524
    iput-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mLongPressCancelRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 525
    goto :goto_8

    .line 527
    :cond_1d
    move/from16 v17, v7

    .line 528
    move/from16 v18, v8

    .line 530
    move/from16 v16, v10

    .line 532
    invoke-virtual {v2}, Lcom/android/keyguard/LockIconViewController;->cancelTouches()V

    .line 534
    :cond_1e
    :goto_8
    const/4 v5, 0x1

    .line 537
    goto :goto_a

    .line 538
    :cond_1f
    move/from16 v17, v7

    .line 539
    move/from16 v18, v8

    .line 541
    move/from16 v16, v10

    .line 543
    iget-boolean v5, v2, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    .line 545
    if-nez v5, :cond_20

    .line 547
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 549
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 551
    move-result v5

    .line 554
    if-eqz v5, :cond_20

    .line 555
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 557
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 559
    move-result v20

    .line 562
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 563
    move-result-object v7

    .line 566
    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 567
    move-result-object v21

    .line 570
    sget-object v22, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 571
    const-string v23, "lock-icon-down"

    .line 573
    sget-object v24, Lcom/android/keyguard/LockIconViewController;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 575
    move-object/from16 v19, v5

    .line 577
    invoke-virtual/range {v19 .. v24}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 579
    :cond_20
    const/4 v5, 0x0

    .line 582
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 583
    move-result v7

    .line 586
    iput v7, v2, Lcom/android/keyguard/LockIconViewController;->mActivePointerId:I

    .line 587
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 589
    if-nez v5, :cond_21

    .line 591
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 593
    move-result-object v5

    .line 596
    iput-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 597
    goto :goto_9

    .line 599
    :cond_21
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 600
    :goto_9
    iget-object v5, v2, Lcom/android/keyguard/LockIconViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 603
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 605
    const/4 v5, 0x1

    .line 608
    iput-boolean v5, v2, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    .line 609
    new-instance v7, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda3;

    .line 611
    invoke-direct {v7, v2, v5}, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/LockIconViewController;I)V

    .line 613
    invoke-interface {v6, v7, v11, v12}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 616
    move-result-object v6

    .line 619
    iput-object v6, v2, Lcom/android/keyguard/LockIconViewController;->mLongPressCancelRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 620
    :goto_a
    if-eqz v4, :cond_22

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 624
    move-result v2

    .line 627
    iget-object v6, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 628
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBottom()I

    .line 630
    move-result v6

    .line 633
    int-to-float v6, v6

    .line 634
    cmpl-float v2, v2, v6

    .line 635
    if-ltz v2, :cond_22

    .line 637
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 639
    const/4 v10, 0x1

    .line 641
    goto :goto_b

    .line 642
    :cond_22
    move/from16 v10, v16

    .line 643
    :goto_b
    if-eqz v10, :cond_23

    .line 645
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 647
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 649
    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 651
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 653
    move-result v2

    .line 656
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 657
    move-result-object v2

    .line 660
    goto/16 :goto_f

    .line 661
    :cond_23
    iget-boolean v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 663
    if-nez v2, :cond_26

    .line 665
    if-eqz v4, :cond_26

    .line 667
    invoke-virtual {v15}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 669
    move-result v2

    .line 672
    if-eqz v2, :cond_26

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 675
    move-result v2

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 679
    move-result v4

    .line 682
    iget-object v5, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 683
    iget-object v6, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 685
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    .line 687
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    invoke-virtual {v6}, Landroid/view/View;->getLocationOnScreen()[I

    .line 692
    move-result-object v5

    .line 695
    const/4 v7, 0x0

    .line 696
    aget v5, v5, v7

    .line 697
    invoke-virtual {v6}, Landroid/view/View;->getLocationOnScreen()[I

    .line 699
    move-result-object v7

    .line 702
    const/4 v8, 0x1

    .line 703
    aget v7, v7, v8

    .line 704
    int-to-float v8, v5

    .line 706
    cmpg-float v8, v8, v2

    .line 707
    if-gtz v8, :cond_24

    .line 709
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 711
    move-result v8

    .line 714
    add-int/2addr v8, v5

    .line 715
    int-to-float v5, v8

    .line 716
    cmpg-float v2, v2, v5

    .line 717
    if-gtz v2, :cond_24

    .line 719
    int-to-float v2, v7

    .line 721
    cmpg-float v2, v2, v4

    .line 722
    if-gtz v2, :cond_24

    .line 724
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 726
    move-result v2

    .line 729
    add-int/2addr v2, v7

    .line 730
    int-to-float v2, v2

    .line 731
    cmpg-float v2, v4, v2

    .line 732
    if-gtz v2, :cond_24

    .line 734
    const/4 v9, 0x1

    .line 736
    goto :goto_c

    .line 737
    :cond_24
    const/4 v9, 0x0

    .line 738
    :goto_c
    if-eqz v9, :cond_29

    .line 739
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 741
    iget v2, v2, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    .line 743
    if-nez v2, :cond_25

    .line 745
    const/4 v5, 0x1

    .line 747
    goto :goto_d

    .line 748
    :cond_25
    const/4 v5, 0x0

    .line 749
    :goto_d
    if-eqz v5, :cond_29

    .line 750
    const/4 v2, 0x1

    .line 752
    iput-boolean v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 753
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 755
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 757
    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 759
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 761
    move-result v2

    .line 764
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 765
    move-result-object v2

    .line 768
    goto :goto_f

    .line 769
    :cond_26
    iget-boolean v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 770
    if-eqz v2, :cond_29

    .line 772
    iget-object v2, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 774
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 776
    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 778
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 780
    move-result v2

    .line 783
    if-nez v17, :cond_27

    .line 784
    if-eqz v18, :cond_28

    .line 786
    :cond_27
    const/4 v4, 0x0

    .line 788
    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 789
    :cond_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 791
    move-result-object v2

    .line 794
    goto :goto_f

    .line 795
    :cond_29
    const/4 v2, 0x0

    .line 796
    goto :goto_f

    .line 797
    :cond_2a
    :goto_e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 798
    :goto_f
    if-eqz v2, :cond_2b

    .line 800
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 802
    move-result v1

    .line 805
    goto :goto_10

    .line 806
    :cond_2b
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 807
    move-result v1

    .line 810
    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 811
    move-result-object v1

    .line 814
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 815
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 817
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 819
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 821
    iget-object v2, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 823
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    new-instance v3, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;

    .line 828
    invoke-direct {v3, v2}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 830
    const-wide/16 v4, 0x64

    .line 833
    iget-object v0, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 835
    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 837
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 840
    move-result v0

    .line 843
    return v0
    .line 844
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    iget v1, v0, Landroid/graphics/Insets;->top:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 20
    move-result v4

    .line 23
    if-ne v1, v4, :cond_1

    .line 24
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 28
    move-result v1

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 38
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 54
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    move v2, v3

    .line 67
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 68
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 70
    :cond_5
    :goto_2
    iput v3, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 73
    iput v3, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 81
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLayoutInsetProvider:Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 85
    check-cast v1, Lcom/android/systemui/statusbar/NotificationInsetsImpl;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 92
    move-result v1

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 96
    move-result-object v1

    .line 99
    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 102
    move-result v2

    .line 105
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 106
    move-result v0

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move v0, v3

    .line 111
    move v2, v0

    .line 112
    :goto_3
    iget v4, v1, Landroid/graphics/Insets;->left:I

    .line 113
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 115
    move-result v2

    .line 118
    iget v1, v1, Landroid/graphics/Insets;->right:I

    .line 119
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 121
    move-result v0

    .line 124
    new-instance v1, Landroid/util/Pair;

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v0

    .line 134
    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 138
    check-cast v0, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 142
    move-result v0

    .line 145
    iput v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 146
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 148
    check-cast v0, Ljava/lang/Integer;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 152
    move-result v0

    .line 155
    iput v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 158
    move-result v0

    .line 161
    :goto_4
    if-ge v3, v0, :cond_9

    .line 162
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 164
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    move-result-object v2

    .line 171
    instance-of v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    .line 172
    if-eqz v2, :cond_8

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 176
    move-result-object v2

    .line 179
    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    .line 180
    iget-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;->ignoreRightInset:Z

    .line 182
    if-nez v4, :cond_8

    .line 184
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 186
    iget v5, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 188
    if-ne v4, v5, :cond_7

    .line 190
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 192
    iget v6, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 194
    if-eq v4, v6, :cond_8

    .line 196
    :cond_7
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 198
    iget v4, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 200
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 204
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 207
    goto :goto_4

    .line 209
    :cond_9
    return-object p1
    .line 210
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 6
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 8
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 10
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 12
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    move-object v1, v2

    .line 17
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isPulsing()Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    goto/16 :goto_9

    .line 31
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 33
    instance-of v4, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 35
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_3

    .line 38
    move-object v4, v1

    .line 40
    check-cast v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 41
    iget-boolean v6, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 43
    if-nez v6, :cond_2

    .line 45
    iget v6, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 47
    const/4 v7, 0x0

    .line 49
    cmpl-float v6, v6, v7

    .line 50
    if-eqz v6, :cond_1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    move v6, v5

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    move v6, v3

    .line 57
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 58
    move-result v4

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v4, v5

    .line 63
    move v6, v4

    .line 64
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    .line 65
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 70
    move-result v8

    .line 73
    const/4 v9, 0x2

    .line 74
    if-eqz v8, :cond_6

    .line 75
    if-eq v8, v3, :cond_5

    .line 77
    if-eq v8, v9, :cond_4

    .line 79
    goto :goto_4

    .line 81
    :cond_4
    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)V

    .line 82
    goto :goto_4

    .line 85
    :cond_5
    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)V

    .line 86
    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 90
    move-result v8

    .line 93
    iput v8, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mInitialTouchX:F

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 96
    move-result v8

    .line 99
    iput v8, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mInitialTouchY:F

    .line 100
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mIsDownInMediaHeaderView:Z

    .line 102
    iget-object v8, v7, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 104
    if-eqz v8, :cond_7

    .line 106
    filled-new-array {v5, v5}, [I

    .line 108
    move-result-object v10

    .line 111
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 112
    iget v8, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mInitialTouchX:F

    .line 115
    aget v11, v10, v5

    .line 117
    int-to-float v12, v11

    .line 119
    cmpl-float v12, v8, v12

    .line 120
    if-ltz v12, :cond_7

    .line 122
    iget-object v12, v7, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 124
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    .line 129
    move-result v12

    .line 132
    add-int/2addr v12, v11

    .line 133
    int-to-float v11, v12

    .line 134
    cmpg-float v8, v8, v11

    .line 135
    if-gtz v8, :cond_7

    .line 137
    iget v8, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mInitialTouchY:F

    .line 139
    aget v10, v10, v3

    .line 141
    int-to-float v11, v10

    .line 143
    cmpl-float v11, v8, v11

    .line 144
    if-ltz v11, :cond_7

    .line 146
    iget-object v11, v7, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 148
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    .line 153
    move-result v11

    .line 156
    add-int/2addr v11, v10

    .line 157
    int-to-float v10, v11

    .line 158
    cmpg-float v8, v8, v10

    .line 159
    if-gtz v8, :cond_7

    .line 161
    move v8, v3

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    move v8, v5

    .line 165
    :goto_3
    if-eqz v8, :cond_8

    .line 166
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mIsDownInMediaHeaderView:Z

    .line 168
    :cond_8
    :goto_4
    if-nez v6, :cond_9

    .line 170
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mModalController:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 172
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 174
    if-nez v6, :cond_9

    .line 176
    if-eqz v4, :cond_9

    .line 178
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 180
    move-result v4

    .line 183
    if-eqz v4, :cond_9

    .line 184
    move v4, v3

    .line 186
    goto :goto_5

    .line 187
    :cond_9
    move v4, v5

    .line 188
    :goto_5
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNCSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 189
    iget-object v7, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 191
    iget-boolean v8, v7, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 193
    if-eqz v8, :cond_d

    .line 195
    invoke-virtual {v7}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isExpandable()Z

    .line 197
    move-result v7

    .line 200
    if-eqz v7, :cond_d

    .line 201
    iget-object v7, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 203
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 205
    iget v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 207
    if-nez v7, :cond_d

    .line 209
    iget-object v7, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 211
    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 213
    move-result v7

    .line 216
    if-eqz v7, :cond_d

    .line 217
    const-class v7, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 219
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    move-result-object v7

    .line 224
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 225
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 227
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 229
    if-nez v7, :cond_d

    .line 231
    const-class v7, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 233
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 235
    move-result-object v7

    .line 238
    check-cast v7, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 239
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 241
    if-nez v7, :cond_d

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 245
    move-result v7

    .line 248
    if-eqz v7, :cond_c

    .line 249
    if-eq v7, v3, :cond_b

    .line 251
    if-eq v7, v9, :cond_a

    .line 253
    goto :goto_7

    .line 255
    :cond_a
    if-eqz v4, :cond_d

    .line 256
    invoke-virtual {v6, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->isSwitchSlide(Landroid/view/MotionEvent;)Z

    .line 258
    move-result v4

    .line 261
    if-eqz v4, :cond_d

    .line 262
    iput-boolean v3, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mIsNCIntercepted:Z

    .line 264
    goto :goto_6

    .line 266
    :cond_b
    if-eqz v4, :cond_d

    .line 267
    invoke-virtual {v6, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->isSwitchSlide(Landroid/view/MotionEvent;)Z

    .line 269
    move-result v4

    .line 272
    if-eqz v4, :cond_d

    .line 273
    iput-boolean v3, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mIsNCIntercepted:Z

    .line 275
    :goto_6
    move v4, v3

    .line 277
    goto :goto_8

    .line 278
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 279
    move-result v4

    .line 282
    iput v4, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mInitialTouchX:F

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 285
    move-result v4

    .line 288
    iput v4, v6, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mInitialTouchY:F

    .line 289
    :cond_d
    :goto_7
    move v4, v5

    .line 291
    :goto_8
    if-eqz v4, :cond_e

    .line 292
    goto :goto_9

    .line 294
    :cond_e
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 295
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 297
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 299
    move-result v4

    .line 302
    if-eqz v4, :cond_f

    .line 303
    goto :goto_9

    .line 305
    :cond_f
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 306
    invoke-virtual {v4, p1}, Lcom/android/keyguard/LockIconViewController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 308
    move-result v4

    .line 311
    if-eqz v4, :cond_10

    .line 312
    goto :goto_9

    .line 314
    :cond_10
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 315
    move-result v1

    .line 318
    if-eqz v1, :cond_11

    .line 319
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 321
    iget-object v1, v1, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 323
    const/4 v3, 0x0

    .line 325
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 326
    move-result v1

    .line 329
    if-eqz v1, :cond_11

    .line 330
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 332
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 334
    if-nez v1, :cond_11

    .line 336
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 338
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 340
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 342
    if-nez v1, :cond_11

    .line 344
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 346
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    move-result v3

    .line 351
    goto :goto_9

    .line 352
    :cond_11
    move v3, v5

    .line 353
    :goto_9
    if-nez v3, :cond_12

    .line 354
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    move-result v3

    .line 359
    :cond_12
    if-eqz v3, :cond_13

    .line 360
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 367
    move-result-object p1

    .line 370
    const/4 v0, 0x3

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 372
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 375
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 377
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 379
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 382
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 389
    :cond_13
    return v3
    .line 392
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    const-string v0, "NotificationShadeWindowView#onMeasure"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNCSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 6
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    iget-boolean v3, v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 10
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isExpandable()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 22
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 24
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 26
    if-nez v2, :cond_2

    .line 28
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 30
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 32
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    const-class v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 38
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 44
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 46
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 48
    if-nez v2, :cond_2

    .line 50
    const-class v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 52
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    check-cast v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 58
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 60
    if-nez v2, :cond_2

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 64
    move-result v2

    .line 67
    if-eq v2, v4, :cond_1

    .line 68
    const/4 v3, 0x2

    .line 70
    if-eq v2, v3, :cond_0

    .line 71
    goto :goto_1

    .line 73
    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mIsNCIntercepted:Z

    .line 74
    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {v1, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->isSwitchSlide(Landroid/view/MotionEvent;)Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mIsNCIntercepted:Z

    .line 85
    if-eqz v2, :cond_3

    .line 87
    invoke-virtual {v1, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->isSwitchSlide(Landroid/view/MotionEvent;)Z

    .line 89
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    iget v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mInitialTouchX:F

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 97
    move-result v3

    .line 100
    sub-float/2addr v2, v3

    .line 101
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 102
    move-result v2

    .line 105
    iget v3, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mInitialTouchY:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 108
    move-result v6

    .line 111
    sub-float/2addr v3, v6

    .line 112
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 113
    move-result v3

    .line 116
    sub-float/2addr v2, v3

    .line 117
    iget v3, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mTouchSlop:I

    .line 118
    int-to-float v3, v3

    .line 120
    cmpl-float v2, v2, v3

    .line 121
    if-lez v2, :cond_3

    .line 123
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->handleNCSwitch()V

    .line 125
    iput-boolean v5, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mIsNCIntercepted:Z

    .line 128
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->systemUIStat:Lcom/miui/systemui/analytics/SystemUIStat;

    .line 130
    iget-object v2, v2, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 132
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mNCSwitchStatEvent:Lcom/miui/systemui/events/NCSwitchEvent;

    .line 134
    invoke-interface {v2, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 136
    :goto_0
    move v1, v4

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iput-boolean v5, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mIsNCIntercepted:Z

    .line 141
    :cond_3
    :goto_1
    move v1, v5

    .line 143
    :goto_2
    if-eqz v1, :cond_4

    .line 144
    goto :goto_5

    .line 146
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 147
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 149
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 151
    if-eqz v1, :cond_5

    .line 153
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 155
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 157
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isPulsing()Z

    .line 159
    move-result v1

    .line 162
    xor-int/2addr v1, v4

    .line 163
    goto :goto_3

    .line 164
    :cond_5
    move v1, v5

    .line 165
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 166
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 168
    move-result v2

    .line 171
    if-eqz v2, :cond_6

    .line 172
    goto :goto_5

    .line 174
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 175
    iget-object v2, v2, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 177
    const/4 v3, 0x0

    .line 179
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 180
    move-result v2

    .line 183
    if-nez v2, :cond_7

    .line 184
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 186
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 188
    if-eqz v2, :cond_c

    .line 190
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 192
    check-cast v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 194
    iget-object v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 196
    if-eqz v2, :cond_8

    .line 198
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 200
    move-result v2

    .line 203
    if-nez v2, :cond_8

    .line 204
    move v2, v4

    .line 206
    goto :goto_4

    .line 207
    :cond_8
    move v2, v5

    .line 208
    :goto_4
    if-eqz v2, :cond_9

    .line 209
    goto :goto_5

    .line 211
    :cond_9
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 214
    move-result v0

    .line 217
    if-nez v0, :cond_b

    .line 218
    if-eqz v1, :cond_a

    .line 220
    goto :goto_5

    .line 222
    :cond_a
    move v1, v5

    .line 223
    goto :goto_6

    .line 224
    :cond_b
    :goto_5
    move v1, v4

    .line 225
    :cond_c
    :goto_6
    if-nez v1, :cond_d

    .line 226
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    move-result v1

    .line 231
    :cond_d
    if-nez v1, :cond_f

    .line 232
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 239
    move-result p1

    .line 242
    if-eq p1, v4, :cond_e

    .line 243
    const/4 v0, 0x3

    .line 245
    if-ne p1, v0, :cond_f

    .line 246
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 248
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 250
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 252
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    .line 254
    :cond_f
    return v1
    .line 257
.end method

.method public final requestLayout()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    const-string v2, "NotificationShadeWindowView#requestLayout"

    .line 4
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 6
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9
    return-void
    .line 12
.end method

.method public final startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p3, v0, :cond_2

    .line 3
    new-instance p3, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;

    .line 5
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Landroid/view/ActionMode$Callback;)V

    .line 7
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 10
    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/view/ActionMode;->finish()V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    .line 17
    new-instance p2, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    .line 22
    invoke-direct {p2, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    .line 24
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 27
    new-instance p2, Lcom/android/internal/view/FloatingActionMode;

    .line 29
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 33
    invoke-direct {p2, v0, p3, p1, v1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 38
    new-instance p1, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 40
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 45
    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 51
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 57
    invoke-virtual {p2}, Landroid/view/ActionMode;->invalidate()V

    .line 59
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 64
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    const/4 p2, 0x0

    .line 74
    :goto_0
    return-object p2

    .line 75
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 76
    move-result-object p0

    .line 79
    return-object p0
    .line 80
.end method
