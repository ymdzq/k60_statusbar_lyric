.class public final Lcom/android/keyguard/KeyguardPatternViewController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;
.implements Lcom/android/keyguard/widget/MiuiLockPatternView$OnPatternListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPatternViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEmergencyButtonClickedWhenInCall()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 8
    return-void
    .line 11
.end method

.method public final onPatternChecked(IIIZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 2
    const-wide/16 v1, 0x7d0

    .line 4
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$1;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 7
    if-eqz p4, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 11
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    move-result p2

    .line 21
    if-eq p2, p1, :cond_0

    .line 22
    const/4 v3, 0x1

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 25
    if-eqz v3, :cond_3

    .line 27
    const-class p3, Lcom/miui/systemui/MultiUserController;

    .line 29
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p3

    .line 34
    check-cast p3, Lcom/miui/systemui/MultiUserController;

    .line 35
    invoke-virtual {p3, p1}, Lcom/miui/systemui/MultiUserController;->allowUnlock(I)Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 37
    move-result-object p5

    .line 40
    iget-boolean v3, p5, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 41
    if-nez v3, :cond_2

    .line 43
    iget p1, p5, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 45
    if-eqz p1, :cond_1

    .line 47
    iget-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 49
    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    .line 51
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    .line 54
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mVibrator:Landroid/os/Vibrator;

    .line 57
    const-wide/16 p3, 0x96

    .line 59
    invoke-virtual {p1, p3, p4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 64
    invoke-virtual {p2, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void

    .line 69
    :cond_2
    :try_start_0
    iget-object p3, p3, Lcom/miui/systemui/MultiUserController;->mActivityManager:Landroid/app/IActivityManager;

    .line 70
    invoke-interface {p3, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 75
    :catch_0
    move-exception p3

    .line 76
    const-string p5, "MultiUserController"

    .line 77
    const-string v0, "Couldn\'t switch user."

    .line 79
    invoke-static {p5, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_3
    :goto_0
    sget-object p3, Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;

    .line 84
    invoke-virtual {p2, p3}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    .line 86
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 89
    const/16 p3, 0xb

    .line 91
    invoke-virtual {p2, p3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 93
    const-class p2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 96
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 101
    check-cast p2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 102
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 104
    move-result p2

    .line 107
    if-eqz p2, :cond_4

    .line 108
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 110
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 115
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 116
    iget-object p2, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsLockScreenManaged:Landroid/util/SparseBooleanArray;

    .line 118
    invoke-virtual {p2, p1, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 120
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 123
    move-result-object p0

    .line 126
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 127
    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 131
    move-result-object p0

    .line 134
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 135
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 137
    goto :goto_1

    .line 140
    :cond_5
    iget-object p4, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 141
    invoke-virtual {p4, v0}, Lcom/android/keyguard/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/widget/MiuiLockPatternView$DisplayMode;)V

    .line 143
    if-eqz p5, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 148
    move-result-object p4

    .line 151
    invoke-interface {p4, p1, p2, p3, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIIZ)V

    .line 152
    if-lez p2, :cond_6

    .line 155
    iget-object p4, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 157
    invoke-virtual {p4, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 159
    move-result-wide p4

    .line 162
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(IJ)V

    .line 163
    :cond_6
    const-class p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 166
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    move-result-object p1

    .line 171
    check-cast p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 172
    check-cast p1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 174
    const/4 p3, 0x0

    .line 176
    const/16 p4, 0x4c

    .line 177
    const/16 p5, 0xcf

    .line 179
    const/16 v0, 0x96

    .line 181
    invoke-virtual {p1, p5, p3, p4, v0}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 183
    if-nez p2, :cond_7

    .line 186
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 190
    invoke-virtual {p1, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    :cond_7
    :goto_1
    return-void
    .line 195
.end method
