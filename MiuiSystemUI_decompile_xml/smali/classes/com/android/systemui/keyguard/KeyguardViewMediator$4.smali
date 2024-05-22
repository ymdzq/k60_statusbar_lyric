.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getBouncerPromptReason()I
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 13
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 18
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    .line 24
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v3, :cond_1

    .line 30
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    .line 32
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    move v2, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move v2, v5

    .line 41
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 42
    invoke-virtual {v3}, Lcom/android/keyguard/MiuiBleUnlockHelper;->isUnlockWithBlePossible()Z

    .line 44
    move-result v3

    .line 47
    if-nez v1, :cond_3

    .line 48
    if-nez v2, :cond_3

    .line 50
    if-eqz v3, :cond_2

    .line 52
    goto :goto_2

    .line 54
    :cond_2
    move v6, v4

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    move v6, v5

    .line 57
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 58
    iget-object v7, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 60
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 62
    move-result v8

    .line 65
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 66
    move-result v0

    .line 69
    const-string v9, "getBouncerPromptReason trust = "

    .line 70
    const-string v10, " biometrics = "

    .line 72
    const-string v11, " bleUnlock = "

    .line 74
    invoke-static {v9, v1, v10, v2, v11}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v2

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, " strongAuth = "

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 94
    const-string v3, "KeyguardViewMediator"

    .line 95
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz v6, :cond_5

    .line 100
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 102
    move-result v2

    .line 105
    if-nez v2, :cond_5

    .line 106
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string/jumbo p0, "sys.boot.reason.last"

    .line 113
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 119
    const-string v0, "reboot,mainline_update"

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p0

    .line 125
    if-eqz p0, :cond_4

    .line 126
    const/16 p0, 0x10

    .line 128
    return p0

    .line 130
    :cond_4
    return v5

    .line 131
    :cond_5
    if-eqz v6, :cond_6

    .line 132
    and-int/lit8 v2, v8, 0x10

    .line 134
    if-eqz v2, :cond_6

    .line 136
    const/4 p0, 0x2

    .line 138
    return p0

    .line 139
    :cond_6
    const/4 v2, 0x4

    .line 140
    if-eqz v6, :cond_7

    .line 141
    and-int/lit8 v3, v8, 0x20

    .line 143
    if-eqz v3, :cond_7

    .line 145
    return v2

    .line 147
    :cond_7
    and-int/lit8 v3, v8, 0x2

    .line 148
    if-eqz v3, :cond_8

    .line 150
    const/4 p0, 0x3

    .line 152
    return p0

    .line 153
    :cond_8
    if-eqz v1, :cond_9

    .line 154
    and-int/lit8 v3, v8, 0x4

    .line 156
    if-eqz v3, :cond_9

    .line 158
    return v2

    .line 160
    :cond_9
    if-eqz v1, :cond_a

    .line 161
    and-int/lit16 v1, v8, 0x100

    .line 163
    if-eqz v1, :cond_a

    .line 165
    const/16 p0, 0x8

    .line 167
    return p0

    .line 169
    :cond_a
    if-eqz v6, :cond_c

    .line 170
    and-int/lit8 v1, v8, 0x8

    .line 172
    if-nez v1, :cond_b

    .line 174
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    .line 178
    move-result p0

    .line 181
    if-eqz p0, :cond_c

    .line 182
    :cond_b
    const/4 p0, 0x5

    .line 184
    return p0

    .line 185
    :cond_c
    if-eqz v6, :cond_d

    .line 186
    and-int/lit8 p0, v8, 0x40

    .line 188
    if-eqz p0, :cond_d

    .line 190
    const/4 p0, 0x6

    .line 192
    return p0

    .line 193
    :cond_d
    const/4 p0, 0x7

    .line 194
    if-eqz v6, :cond_e

    .line 195
    and-int/lit16 v1, v8, 0x80

    .line 197
    if-eqz v1, :cond_e

    .line 199
    return p0

    .line 201
    :cond_e
    if-eqz v6, :cond_f

    .line 202
    if-nez v0, :cond_f

    .line 204
    return p0

    .line 206
    :cond_f
    return v4
    .line 207
.end method

.method public final keyguardGone()V
    .locals 5

    .line 1
    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    const-string v0, "KeyguardViewMediator"

    .line 7
    const-string v1, "keyguardGone"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 16
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    .line 22
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 24
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 26
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 28
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 30
    const/4 v3, 0x0

    .line 32
    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 38
    iget-boolean v2, v1, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 40
    if-eqz v2, :cond_1

    .line 42
    iget-object v2, v1, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 44
    if-eqz v2, :cond_0

    .line 46
    iget-object v4, v1, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$2;

    .line 48
    invoke-virtual {v2, v4}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 50
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    .line 53
    :cond_1
    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 56
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;

    .line 65
    invoke-direct {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 67
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    .line 73
    if-eqz v1, :cond_4

    .line 75
    const-string/jumbo v1, "waking from dream after unlock"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    .line 83
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 85
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 87
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 89
    if-eqz v1, :cond_2

    .line 91
    const-string v1, "keyguard showing after keyguardGone, dismiss"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 98
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 103
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 104
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 106
    xor-int/lit8 p0, p0, 0x1

    .line 108
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 110
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 112
    goto :goto_1

    .line 115
    :cond_2
    const-string v1, "keyguard gone, waking up from dream"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    move-result-wide v0

    .line 124
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 125
    if-eqz v2, :cond_3

    .line 127
    const/16 v2, 0x11

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    const/4 v2, 0x4

    .line 132
    :goto_0
    const-string v3, "com.android.systemui:UNLOCK_DREAMING"

    .line 133
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 135
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 137
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 140
    return-void
    .line 143
.end method
