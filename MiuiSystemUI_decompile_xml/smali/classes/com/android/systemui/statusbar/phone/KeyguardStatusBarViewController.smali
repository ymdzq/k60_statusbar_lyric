.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field public final mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

.field public final mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public final mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBatteryListening:Z

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;

.field public final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mBlockedIcons:Ljava/util/List;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

.field public mControlPanelExpand:Z

.field public mDelayShowingKeyguardStatusBar:Z

.field public final mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

.field public mDozing:Z

.field public mExplicitAlpha:F

.field public mFirstBypassAttempt:Z

.field public final mHeadsUpShowingAmountAnimation:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

.field public final mInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mKeyguardHeadsUpShowingAmount:F

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardStatusBarAnimateAlpha:F

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mNotificationsHeaderCollideDistance:I

.field public final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

.field public mShowingKeyguardHeadsUp:Z

.field public mStatusBarState:I

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

.field public final mStatusBarUserChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

.field public mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

.field public mSystemEventAnimatorAlpha:F

.field public final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

.field public final onWindowChangeListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 4
    const-wide/16 v1, 0x168

    .line 7
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/shade/ShadeViewStateProvider;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Landroid/os/UserManager;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p7

    .line 3
    move-object/from16 v2, p14

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 6
    const/4 v3, 0x0

    .line 9
    iput v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 10
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda1;

    .line 12
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 14
    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    .line 17
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 19
    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 22
    new-instance v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;

    .line 24
    const-string v6, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    .line 26
    invoke-direct {v5, v6, v4, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 28
    new-instance v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    .line 31
    const v4, 0x7f0a0482    # @id/keyguard_hun_animator_end_tag

    .line 33
    const v6, 0x7f0a0483    # @id/keyguard_hun_animator_start_tag

    .line 36
    const v7, 0x7f0a0484    # @id/keyguard_hun_animator_tag

    .line 39
    invoke-direct {v3, v4, v6, v7, v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;-><init>(IIILcom/android/systemui/statusbar/notification/AnimatableProperty$5;)V

    .line 42
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHeadsUpShowingAmountAnimation:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    .line 45
    new-instance v3, Ljava/lang/Object;

    .line 47
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    .line 54
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 56
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    .line 59
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    .line 61
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 63
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->onWindowChangeListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    .line 66
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    .line 68
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 70
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    .line 73
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;

    .line 75
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 77
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;

    .line 80
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;

    .line 82
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 84
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;

    .line 87
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;

    .line 89
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 91
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;

    .line 94
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;

    .line 96
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 98
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 101
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 103
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 105
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    .line 110
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBlockedIcons:Ljava/util/List;

    .line 115
    const/high16 v3, 0x3f800000    # 1.0f

    .line 117
    iput v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAnimateAlpha:F

    .line 119
    iput v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimatorAlpha:F

    .line 121
    const/high16 v3, -0x40800000    # -1.0f

    .line 123
    iput v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    .line 125
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    .line 127
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 129
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    .line 132
    move-object v3, p2

    .line 134
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 135
    move-object v3, p3

    .line 137
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 138
    move-object v3, p4

    .line 140
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 141
    move-object v3, p5

    .line 143
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 144
    move-object v3, p6

    .line 146
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    .line 147
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 149
    move-object/from16 v3, p8

    .line 151
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 153
    move-object/from16 v4, p9

    .line 155
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 157
    move-object/from16 v4, p10

    .line 159
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 161
    move-object/from16 v4, p11

    .line 163
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 165
    move-object/from16 v4, p12

    .line 167
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 169
    move-object/from16 v4, p13

    .line 171
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserManager:Landroid/os/UserManager;

    .line 173
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarUserChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 175
    move-object/from16 v4, p15

    .line 177
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 179
    move-object/from16 v4, p16

    .line 181
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 183
    move-object/from16 v4, p17

    .line 185
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 187
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 189
    move-result v3

    .line 192
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    .line 193
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;

    .line 195
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 197
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 200
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 205
    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateBlockedIcons()V

    .line 209
    const v3, 0x7f0703ce    # @dimen/header_notifications_collide_distance '48.0dp'

    .line 212
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 215
    move-result v1

    .line 218
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationsHeaderCollideDistance:I

    .line 219
    iget-boolean v1, v2, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->chipEnabled:Z

    .line 221
    const/4 v2, 0x1

    .line 223
    xor-int/2addr v1, v2

    .line 224
    move-object v3, p1

    .line 225
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserAvatarEnabled:Z

    .line 226
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 230
    move-result-object v3

    .line 233
    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda6;

    .line 234
    const/4 v5, 0x0

    .line 236
    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    .line 237
    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda6;

    .line 240
    invoke-direct {v6, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    .line 242
    invoke-direct {v1, v3, v4, v6, v5}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    .line 245
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    .line 248
    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 250
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;

    .line 252
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 254
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;)V

    .line 257
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 260
    move-object/from16 v1, p18

    .line 262
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 264
    return-void
    .line 266
.end method


# virtual methods
.method public final animateKeyguardStatusBarIn()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 2
    const-string v1, "KeyguardStatusBarViewController"

    .line 4
    const-string v2, "animating status bar in"

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 8
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 23
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 26
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 30
    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [F

    .line 34
    fill-array-data v0, :array_0

    .line 36
    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 39
    move-result-object v0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;

    .line 43
    invoke-virtual {v0, p0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 45
    const-wide/16 v2, 0x168

    .line 48
    invoke-virtual {v0, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 50
    sget-object p0, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 53
    invoke-virtual {v0, p0}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 55
    invoke-virtual {v0, v1}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    .line 58
    return-void

    .line 61
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 62
.end method

.method public getBlockedIcons()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBlockedIcons:Ljava/util/List;

    .line 7
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
    .line 16
.end method

.method public final onInit()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewAttached()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 5
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    .line 7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarUserChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 9
    invoke-static {v2, v3}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;->bind(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;)V

    .line 11
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 14
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 25
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 32
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 34
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 37
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 41
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 43
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 50
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    .line 53
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 57
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 65
    iput-object v2, v3, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->displayId:Ljava/lang/Integer;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 69
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 71
    const-class v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 74
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 79
    check-cast v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 80
    iget-object v2, v2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    .line 82
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->onWindowChangeListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    .line 84
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->miuiOnAttachedToWindow()V

    .line 89
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda0;

    .line 92
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 97
    const-string/jumbo v1, "status_bar_show_vibrate_icon"

    .line 100
    const/4 v2, 0x0

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 104
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    .line 106
    const/4 v5, -0x1

    .line 108
    invoke-interface {v3, v1, v2, v4, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateUserSwitcher()V

    .line 112
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 115
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    .line 117
    return-void
    .line 120
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 13
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda3;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 20
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 41
    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->displayId:Ljava/lang/Integer;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 46
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 53
    invoke-interface {v1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    const-class v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 58
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->onWindowChangeListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    .line 68
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 70
    return-void
    .line 73
.end method

.method public updateBlockedIcons()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateForHeadsUp()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    .line 13
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    if-eqz v0, :cond_2

    .line 32
    move v0, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v0, v1

    .line 36
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShowingKeyguardHeadsUp:Z

    .line 37
    if-eq v3, v0, :cond_7

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShowingKeyguardHeadsUp:Z

    .line 41
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    .line 43
    if-ne v3, v2, :cond_3

    .line 45
    move v1, v2

    .line 47
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHeadsUpShowingAmountAnimation:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    .line 48
    const/4 v4, 0x0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 51
    if-eqz v1, :cond_5

    .line 53
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 55
    if-eqz v0, :cond_4

    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    .line 59
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 61
    invoke-static {p0, v3, v4, v0, v2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 63
    goto :goto_3

    .line 66
    :cond_5
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 67
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;->getAnimatorTag()I

    .line 69
    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 77
    if-eqz v0, :cond_6

    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 81
    :cond_6
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    move-result-object v0

    .line 87
    iget-object v1, v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;->val$property:Landroid/util/Property;

    .line 88
    invoke-virtual {v1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :cond_7
    :goto_3
    return-void
    .line 93
.end method

.method public final updateUserSwitcher()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    const v2, 0x7f05009c    # @bool/qs_show_user_switcher_for_single_user 'false'

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 13
    move-result v1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserManager:Landroid/os/UserManager;

    .line 17
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    .line 19
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserSwitcherEnabled(Z)V

    .line 23
    return-void
    .line 26
.end method

.method public final updateViewState()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    .line 14
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 16
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 18
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsController;->getLockscreenShadeDragProgress()F

    .line 22
    move-result v3

    .line 25
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    mul-float/2addr v3, v4

    .line 28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result v3

    .line 34
    sub-float v3, v4, v3

    .line 35
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    .line 37
    const/high16 v6, -0x40800000    # -1.0f

    .line 39
    cmpl-float v6, v5, v6

    .line 41
    iget-object v7, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    if-eqz v6, :cond_2

    .line 45
    goto :goto_3

    .line 47
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    .line 48
    if-ne v5, v2, :cond_3

    .line 50
    move v5, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v5, v1

    .line 54
    :goto_1
    if-eqz v5, :cond_4

    .line 55
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 57
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 59
    move-object v5, v7

    .line 61
    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 62
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 64
    move-result v5

    .line 67
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationsHeaderCollideDistance:I

    .line 68
    add-int/2addr v5, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 72
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 74
    move-object v5, v7

    .line 76
    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 77
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 79
    move-result v5

    .line 82
    :goto_2
    int-to-float v5, v5

    .line 83
    div-float/2addr v0, v5

    .line 84
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    .line 85
    move-result v0

    .line 88
    float-to-double v5, v0

    .line 89
    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    .line 90
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 92
    move-result-wide v5

    .line 95
    double-to-float v0, v5

    .line 96
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 97
    move-result v0

    .line 100
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAnimateAlpha:F

    .line 101
    mul-float/2addr v0, v3

    .line 103
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 104
    sub-float/2addr v4, v3

    .line 106
    mul-float v5, v4, v0

    .line 107
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    .line 109
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->isAnimationRunning:Z

    .line 111
    const/4 v3, 0x0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 116
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isLockscreenWallpaperOnNotificationShade()Z

    .line 118
    move-result v0

    .line 121
    if-nez v0, :cond_5

    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimatorAlpha:F

    .line 124
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 126
    move-result v5

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    move-object v0, v7

    .line 131
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 134
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    .line 137
    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 141
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    .line 143
    move-result v0

    .line 146
    if-nez v0, :cond_8

    .line 147
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDelayShowingKeyguardStatusBar:Z

    .line 149
    if-eqz v0, :cond_7

    .line 151
    goto :goto_5

    .line 153
    :cond_7
    move v2, v1

    .line 154
    :cond_8
    :goto_5
    cmpl-float v0, v5, v3

    .line 155
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    .line 157
    const/4 v4, 0x4

    .line 159
    if-eqz v0, :cond_9

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDozing:Z

    .line 162
    if-nez v0, :cond_9

    .line 164
    if-nez v2, :cond_9

    .line 166
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 168
    if-nez v0, :cond_9

    .line 170
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mControlPanelExpand:Z

    .line 172
    if-nez p0, :cond_9

    .line 174
    goto :goto_6

    .line 176
    :cond_9
    move v1, v4

    .line 177
    :goto_6
    iget-boolean p0, v3, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    .line 178
    if-eqz p0, :cond_a

    .line 180
    goto :goto_7

    .line 182
    :cond_a
    move v4, v1

    .line 183
    :goto_7
    check-cast v7, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 184
    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 186
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 189
    return-void
    .line 192
.end method
