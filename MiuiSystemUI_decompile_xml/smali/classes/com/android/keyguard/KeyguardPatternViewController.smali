.class public final Lcom/android/keyguard/KeyguardPatternViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public final mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public final mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

.field public final mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;)V
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
    move-object/from16 v4, p8

    .line 7
    move-object/from16 v5, p9

    .line 9
    move-object/from16 v6, p11

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 13
    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 18
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    .line 21
    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 25
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 28
    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 30
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$2;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 32
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 35
    move-object v0, p2

    .line 37
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    move-object v0, p4

    .line 40
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 41
    move-object v0, p6

    .line 43
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 44
    move-object v0, p7

    .line 46
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 47
    move-object/from16 v0, p8

    .line 49
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 51
    const v0, 0x7f0a050f    # @id/lockPatternView

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 60
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 62
    move-object/from16 v0, p10

    .line 64
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 71
    const-string/jumbo v1, "vibrator"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Landroid/os/Vibrator;

    .line 79
    iput-object v0, v7, Lcom/android/keyguard/KeyguardPatternViewController;->mVibrator:Landroid/os/Vibrator;

    .line 81
    return-void
    .line 83
.end method


# virtual methods
.method public final handleAttemptLockout(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->resetPattern()V

    .line 4
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v0

    .line 14
    sub-long/2addr p2, v0

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->handleAttemptLockout(IJ)V

    .line 18
    long-to-double p1, p2

    .line 21
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 22
    div-double/2addr p1, v0

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 28
    move-result-wide p1

    .line 31
    double-to-long p1, p1

    .line 32
    new-instance p3, Lcom/android/keyguard/KeyguardPatternViewController$4;

    .line 33
    const-wide/16 v0, 0x3e8

    .line 35
    mul-long/2addr p1, v0

    .line 37
    invoke-direct {p3, p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternViewController$4;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;J)V

    .line 38
    invoke-virtual {p3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 45
    return-void
    .line 47
.end method

.method public final needsInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
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

.method public final onPause()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 10
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 20
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 23
    :cond_1
    return-void
    .line 25
.end method

.method public final onResume(I)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 11
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    cmp-long v5, v1, v3

    .line 17
    const/4 v6, 0x1

    .line 19
    const-string v7, "miui_keyguard_password"

    .line 20
    if-eqz v5, :cond_0

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v8, "reset, currentUser deadline: "

    .line 26
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 38
    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(IJ)V

    .line 42
    move v1, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v1, p1

    .line 47
    :goto_0
    if-nez v1, :cond_1

    .line 48
    if-eqz v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 52
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 54
    move-result-wide v8

    .line 57
    cmp-long v2, v8, v3

    .line 58
    if-eqz v2, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v2, "reset, firstUser deadline: "

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(IJ)V

    .line 80
    goto :goto_1

    .line 83
    :cond_1
    move v6, v1

    .line 84
    :goto_1
    if-nez v6, :cond_2

    .line 85
    const-class p1, Lcom/miui/systemui/MultiUserController;

    .line 87
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 92
    check-cast p1, Lcom/miui/systemui/MultiUserController;

    .line 93
    iget p1, p1, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 95
    if-lez p1, :cond_2

    .line 97
    if-eq v0, p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 103
    move-result-wide v0

    .line 106
    cmp-long v2, v0, v3

    .line 107
    if-eqz v2, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v3, "reset, secondUser deadline: "

    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 125
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(IJ)V

    .line 129
    :cond_2
    return-void
    .line 132
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 3
    if-nez v1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 17
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setIsVisible(Z)V

    .line 19
    :goto_0
    new-instance v1, Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 22
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternViewController$1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 24
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 27
    invoke-virtual {v2, v1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setOnPatternListener(Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;)V

    .line 29
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v2, v1}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 33
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 38
    move-result v3

    .line 41
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 42
    move-result v1

    .line 45
    xor-int/2addr v0, v1

    .line 46
    invoke-virtual {v2, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setInStealthMode(Z)V

    .line 47
    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 52
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

    .line 58
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 60
    iput-object v0, v1, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 64
    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    .line 66
    const v1, 0x7f0a01bf    # @id/cancel_button

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda2;

    .line 77
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 85
    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 91
    return-void
    .line 94
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setOnPatternListener(Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 11
    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    .line 17
    const v2, 0x7f0a01bf    # @id/cancel_button

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 37
    return-void
    .line 40
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setInStealthMode(Z)V

    .line 16
    iput-boolean v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->resetPattern()V

    .line 24
    return-void
    .line 27
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
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final startAppearAnimation()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    .line 2
    return-void
    .line 5
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardPatternView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method
