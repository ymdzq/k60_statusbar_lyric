.class public Lcom/android/systemui/wallet/ui/WalletActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHasRegisteredListener:Z

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field public mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/settings/UserTracker;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHandler:Landroid/os/Handler;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v12, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object v0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 13
    const/4 v13, 0x1

    .line 16
    invoke-virtual {v12, v13}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 17
    const v0, 0x7f0d0311    # @layout/quick_access_wallet 'res/layout/quick_access_wallet.xml'

    .line 20
    invoke-virtual {v12, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f0a0057    # @id/action_bar

    .line 26
    invoke-virtual {v12, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/Toolbar;

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v12, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 37
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 40
    move-result-object v0

    .line 43
    const/4 v14, 0x0

    .line 44
    invoke-virtual {v0, v14}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 48
    move-result-object v0

    .line 51
    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 55
    move-result-object v0

    .line 58
    const v1, 0x7f080f4a    # @drawable/ic_close 'res/drawable/ic_close.xml'

    .line 59
    invoke-virtual {v12, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v1

    .line 65
    const v2, 0x7f060322    # @color/material_dynamic_neutral70 '@color/m3_ref_palette_dynamic_neutral70'

    .line 66
    invoke-virtual {v12, v2}, Landroid/app/Activity;->getColor(I)I

    .line 69
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 79
    move-result-object v0

    .line 82
    const v1, 0x7f130069    # @string/accessibility_desc_close 'Close'

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 86
    const v0, 0x7f0a0a9a    # @id/wallet_view

    .line 89
    invoke-virtual {v12, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 92
    move-result-object v0

    .line 95
    move-object v15, v0

    .line 96
    check-cast v15, Lcom/android/systemui/wallet/ui/WalletView;

    .line 97
    iget-object v0, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    invoke-static {v12, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 101
    move-result-object v0

    .line 104
    iput-object v0, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 105
    new-instance v11, Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 107
    iget-object v3, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 109
    iget-object v4, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 111
    iget-object v5, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iget-object v6, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object v7, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 117
    iget-object v8, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 119
    iget-object v9, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 121
    iget-object v10, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 123
    iget-object v2, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 125
    move-object v0, v11

    .line 127
    move-object/from16 v1, p0

    .line 128
    move-object/from16 v16, v2

    .line 130
    move-object v2, v15

    .line 132
    move-object v13, v11

    .line 133
    move-object/from16 v11, v16

    .line 134
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/wallet/ui/WalletScreenController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallet/ui/WalletView;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/logging/UiEventLogger;)V

    .line 136
    iput-object v13, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 139
    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$1;

    .line 141
    invoke-direct {v0, v12}, Lcom/android/systemui/wallet/ui/WalletActivity$1;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V

    .line 143
    iput-object v0, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 146
    iget-object v0, v12, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 148
    invoke-virtual {v15, v0}, Lcom/android/systemui/wallet/ui/WalletView;->setFalsingCollector(Lcom/android/systemui/classifier/FalsingCollector;)V

    .line 150
    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;

    .line 153
    invoke-direct {v0, v12, v14}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;I)V

    .line 155
    iput-object v0, v15, Lcom/android/systemui/wallet/ui/WalletView;->mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;

    .line 160
    const/4 v1, 0x1

    .line 162
    invoke-direct {v0, v12, v1}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;I)V

    .line 163
    iput-object v0, v15, Lcom/android/systemui/wallet/ui/WalletView;->mDeviceLockedActionOnClickListener:Landroid/view/View$OnClickListener;

    .line 166
    return-void
    .line 168
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    move-result-object v0

    .line 5
    const/high16 v1, 0x7f0f0000    # @menu/wallet_activity_options_menu 'res/menu/wallet_activity_options_menu.xml'

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 20
    iget-boolean v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    .line 22
    if-eqz v1, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    .line 28
    const/4 v1, 0x0

    .line 30
    iput-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    .line 31
    iget-object v2, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    .line 33
    iget-object v3, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v2, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 40
    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->notifyWalletDismissed()V

    .line 42
    iget-object v2, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 45
    iget-object v3, v2, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 49
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    iget-object v3, v2, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 56
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object v3

    .line 61
    iget v4, v2, Lcom/android/systemui/wallet/ui/WalletView;->mAnimationTranslationX:F

    .line 62
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 64
    move-result-object v3

    .line 67
    iget-object v4, v2, Lcom/android/systemui/wallet/ui/WalletView;->mOutInterpolator:Landroid/view/animation/Interpolator;

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 70
    move-result-object v3

    .line 73
    const-wide/16 v4, 0xc8

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 76
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 80
    iget-object v2, v2, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 85
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 90
    move-result-object v2

    .line 93
    const-wide/16 v3, 0x64

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    move-result-object v2

    .line 99
    const-wide/16 v3, 0x32

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 102
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    :goto_0
    iput-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 111
    invoke-interface {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 113
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHasRegisteredListener:Z

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    return-void
    .line 122
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x102002c    # @android:id/home

    .line 6
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    return v2

    .line 15
    :cond_0
    const v1, 0x7f0a0a98    # @id/wallet_lockscreen_settings

    .line 16
    if-ne v0, v1, :cond_1

    .line 19
    new-instance p1, Landroid/content/Intent;

    .line 21
    const-string v0, "android.settings.LOCK_SCREEN_SETTINGS"

    .line 23
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const/high16 v0, 0x14000000

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 34
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 36
    return v2

    .line 39
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 40
    move-result p0

    .line 43
    return p0
    .line 44
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 13
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 18
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 20
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 22
    iput-boolean v1, v2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mUdfpsRequested:Z

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->updateAlpha()V

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 10
    const/4 v1, 0x0

    .line 12
    const v2, 0x1120026    # @android:^attr-private/colorAccentPrimary

    .line 13
    invoke-static {p0, v2, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 16
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    const/4 v2, 0x2

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 25
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 30
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 32
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 34
    iput-boolean v1, v2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mUdfpsRequested:Z

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->updateAlpha()V

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 48
    return-void
    .line 51
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHasRegisteredListener:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 9
    invoke-interface {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 11
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHasRegisteredListener:Z

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 28
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 30
    return-void
    .line 33
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    return-void
    .line 8
.end method

.method public final onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEvent;->getEventType()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    const-string p0, "WalletActivity"

    .line 12
    const-string p1, "onWalletServiceEvent: Unknown event type"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method
