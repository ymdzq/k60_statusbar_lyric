.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public mDismissing:Z

.field public final mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockedOut:Z

.field public mPendingLockCheck:Lcom/android/keyguard/MiuiLockPatternChecker$1;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p3

    .line 5
    move-object v3, p5

    .line 6
    move-object/from16 v4, p9

    .line 7
    move-object v5, p6

    .line 9
    move-object/from16 v6, p10

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 12
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)V

    .line 17
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 20
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)V

    .line 24
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    .line 27
    move-object v0, p2

    .line 29
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    move-object v0, p4

    .line 32
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    move-object v0, p7

    .line 35
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 36
    move-object/from16 v0, p8

    .line 38
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 40
    move-object/from16 v0, p9

    .line 42
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final handleAttemptLockout(IJ)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->handleAttemptLockout(IJ)V

    long-to-double p1, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 12
    new-instance p3, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JI)V

    .line 13
    invoke-virtual {p3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public handleAttemptLockout(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    long-to-double p1, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 6
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JI)V

    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 2
    return p0
    .line 4
.end method

.method public final onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    return-void
    .line 7
.end method

.method public final onPasswordChecked(IIIZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    move-result-object p2

    .line 11
    invoke-interface {p2, p1, v1, p3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIIZ)V

    .line 12
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 15
    move-result p2

    .line 18
    if-eq p2, p1, :cond_0

    .line 19
    move p2, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p2, v1

    .line 23
    :goto_0
    if-eqz p2, :cond_3

    .line 24
    const-class p2, Lcom/miui/systemui/MultiUserController;

    .line 26
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 31
    check-cast p2, Lcom/miui/systemui/MultiUserController;

    .line 32
    invoke-virtual {p2, p1}, Lcom/miui/systemui/MultiUserController;->allowUnlock(I)Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 34
    move-result-object p3

    .line 37
    iget-boolean p5, p3, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 38
    if-nez p5, :cond_2

    .line 40
    iget p1, p3, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 42
    if-eqz p1, :cond_1

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    .line 48
    :cond_1
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 53
    return-void

    .line 56
    :cond_2
    :try_start_0
    iget-object p2, p2, Lcom/miui/systemui/MultiUserController;->mActivityManager:Landroid/app/IActivityManager;

    .line 57
    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 62
    :catch_0
    move-exception p2

    .line 63
    const-string p3, "MultiUserController"

    .line 64
    const-string p5, "Couldn\'t switch user."

    .line 66
    invoke-static {p3, p5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 71
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 73
    const/16 p3, 0xb

    .line 75
    invoke-virtual {p2, p3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 77
    const-class p2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 80
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 86
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 88
    move-result p2

    .line 91
    if-eqz p2, :cond_4

    .line 92
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 94
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object p2

    .line 99
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 100
    iget-object p2, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsLockScreenManaged:Landroid/util/SparseBooleanArray;

    .line 102
    invoke-virtual {p2, p1, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 107
    move-result-object p0

    .line 110
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 111
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 115
    move-result-object p2

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 119
    invoke-interface {p2, p1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 121
    goto :goto_2

    .line 124
    :cond_5
    if-eqz p5, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 127
    move-result-object p4

    .line 130
    invoke-interface {p4, p1, p2, p3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIIZ)V

    .line 131
    if-lez p2, :cond_6

    .line 134
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 138
    move-result-wide p4

    .line 141
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(IJ)V

    .line 142
    :cond_6
    if-nez p2, :cond_7

    .line 145
    const-class p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 147
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 152
    check-cast p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 153
    check-cast p1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 155
    const/4 p2, 0x0

    .line 157
    const/16 p3, 0x4c

    .line 158
    const/16 p4, 0xcf

    .line 160
    const/16 p5, 0x96

    .line 162
    invoke-virtual {p1, p4, p2, p3, p5}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 164
    :cond_7
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 167
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onWrongPassword()V

    .line 169
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->startErrorAnimation()V

    .line 175
    :goto_2
    return-void
    .line 178
.end method

.method public onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 7
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 17
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->reset()V

    .line 22
    return-void
    .line 25
.end method

.method public onUserInput()V
    .locals 4

    .line 1
    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 2
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 11
    check-cast v1, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    move-result-object v0

    .line 21
    iget-object v2, v1, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 22
    check-cast v2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    move-result-wide v2

    .line 32
    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 33
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    .line 35
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 38
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 42
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 45
    move-result-object p0

    .line 48
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 49
    return-void
    .line 52
.end method

.method public onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 16
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setIsVisible(Z)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setKeyDownListener(Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;)V

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 33
    iput-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 35
    return-void
    .line 37
.end method

.method public final reset()V
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 7
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 14
    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 16
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 19
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 25
    move-result-wide v3

    .line 28
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    .line 29
    move-result v1

    .line 32
    const/4 v5, 0x1

    .line 33
    const-string v6, "miui_keyguard_password"

    .line 34
    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v7, "reset, currentUser deadline: "

    .line 40
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(IJ)V

    .line 56
    move v1, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v1, v2

    .line 61
    :goto_0
    if-nez v1, :cond_1

    .line 62
    if-eqz v0, :cond_1

    .line 64
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 68
    move-result-wide v3

    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    .line 72
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v7, "reset, firstUser deadline: "

    .line 80
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 92
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(IJ)V

    .line 96
    move v1, v5

    .line 99
    :cond_1
    if-nez v1, :cond_2

    .line 100
    const-class v2, Lcom/miui/systemui/MultiUserController;

    .line 102
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    move-result-object v2

    .line 107
    check-cast v2, Lcom/miui/systemui/MultiUserController;

    .line 108
    iget v2, v2, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 110
    if-lez v2, :cond_2

    .line 112
    if-eq v0, v2, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 118
    move-result-wide v0

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    .line 122
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v4, "reset, secondUser deadline: "

    .line 130
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v3

    .line 142
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(IJ)V

    .line 146
    goto :goto_1

    .line 149
    :cond_2
    move v5, v1

    .line 150
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    .line 153
    :cond_4
    return-void
    .line 156
.end method

.method public abstract resetState()V
.end method

.method public shouldLockout(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long p0, p1, v0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 11
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 16
    return-void
    .line 19
.end method

.method public final showPromptReason(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public startErrorAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public verifyPasswordAndUnlock()V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    iget-boolean v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-boolean v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 16
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 18
    move-result-object v12

    .line 21
    iget-object v0, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 24
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 27
    iget-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 34
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 37
    move-result v8

    .line 40
    invoke-virtual {v12}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    .line 41
    move-result v0

    .line 44
    const/4 v2, 0x3

    .line 45
    if-gt v0, v2, :cond_3

    .line 46
    iget-object v0, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 48
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 50
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 53
    const/4 v4, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    move-object/from16 v0, p0

    .line 59
    move v1, v8

    .line 61
    move v3, v8

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPasswordChecked(IIIZZ)V

    .line 63
    invoke-virtual {v12}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 66
    return-void

    .line 69
    :cond_3
    iget-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 72
    iget-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 75
    const/4 v2, 0x4

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 78
    iget-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 81
    const/4 v2, 0x2

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 84
    if-nez v8, :cond_4

    .line 87
    const-class v0, Lcom/miui/systemui/MultiUserController;

    .line 89
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 94
    check-cast v0, Lcom/miui/systemui/MultiUserController;

    .line 95
    iget v0, v0, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 97
    move v9, v0

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move v9, v1

    .line 101
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    move-result-wide v10

    .line 105
    iget-object v13, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v14

    .line 111
    new-instance v15, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;

    .line 112
    const/4 v6, 0x0

    .line 114
    move-object v0, v15

    .line 115
    move-object/from16 v1, p0

    .line 116
    move-wide v2, v10

    .line 118
    move v4, v8

    .line 119
    move-object v5, v12

    .line 120
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JILcom/android/internal/widget/LockscreenCredential;I)V

    .line 121
    new-instance v16, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;

    .line 124
    const/4 v6, 0x1

    .line 126
    move-object/from16 v0, v16

    .line 127
    move v4, v9

    .line 129
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JILcom/android/internal/widget/LockscreenCredential;I)V

    .line 130
    move-object v10, v14

    .line 133
    move-object v11, v13

    .line 134
    move-object v13, v15

    .line 135
    move-object/from16 v14, v16

    .line 136
    invoke-static/range {v8 .. v14}, Lcom/android/keyguard/MiuiLockPatternChecker;->checkCredentialForUsers(IILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/keyguard/OnCheckForUsersCallback;Lcom/android/keyguard/OnCheckForUsersCallback;)Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 138
    move-result-object v0

    .line 141
    iput-object v0, v7, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Lcom/android/keyguard/MiuiLockPatternChecker$1;

    .line 142
    return-void
    .line 144
.end method
