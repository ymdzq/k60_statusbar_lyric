.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isMethodSecure(I)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isMethodSecure(I)Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final onDeviceProvisioned()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 4
    return-void
    .line 7
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 7
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p1, "KeyguardViewMediator"

    .line 13
    const-string v1, "PIN lock requested, starting keyguard"

    .line 15
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 20
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 23
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 26
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
    .line 33
.end method

.method public final onSimStateChanged(III)V
    .locals 9

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    const-string v1, "onSimStateChanged(subId="

    .line 4
    const-string v2, ", slotId="

    .line 6
    const-string v3, ",state="

    .line 8
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ")"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 37
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 39
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 41
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    sub-int/2addr v0, v2

    .line 46
    :goto_0
    if-ltz v0, :cond_1

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 49
    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 57
    invoke-interface {v3, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 62
    :catch_0
    move-exception v3

    .line 63
    const-string v4, "KeyguardViewMediator"

    .line 64
    const-string v5, "Failed to call onSimSecureStateChanged"

    .line 66
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    instance-of v3, v3, Landroid/os/DeadObjectException;

    .line 71
    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 75
    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 85
    monitor-enter v0

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 88
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 90
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    .line 92
    move-result v1

    .line 95
    const/4 v3, 0x3

    .line 96
    const/4 v4, 0x2

    .line 97
    const/4 v5, 0x0

    .line 98
    if-eq v1, v4, :cond_3

    .line 99
    if-ne v1, v3, :cond_2

    .line 101
    goto :goto_2

    .line 103
    :cond_2
    move v1, v5

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    :goto_2
    move v1, v2

    .line 106
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 107
    iget-object v6, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 109
    invoke-virtual {v6, p2, p3}, Landroid/util/SparseIntArray;->append(II)V

    .line 111
    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockTrackSimStates:Landroid/util/SparseArray;

    .line 114
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v7

    .line 119
    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 120
    const/4 v8, 0x5

    .line 122
    if-nez v7, :cond_4

    .line 123
    new-instance v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 125
    invoke-direct {v7, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(III)V

    .line 127
    invoke-virtual {v6, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    goto :goto_4

    .line 133
    :cond_4
    iget v6, v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 134
    if-eq v6, p1, :cond_5

    .line 136
    iput p1, v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 138
    iput p3, v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 140
    goto :goto_4

    .line 142
    :cond_5
    if-ne p3, v4, :cond_6

    .line 143
    iget p1, v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 145
    if-ne p1, v8, :cond_6

    .line 147
    const-string p0, "KeyguardViewMediator"

    .line 149
    const-string/jumbo p1, "ship the unnecessary SIM_STATE_PIN_REQUIRED state"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit v0

    .line 157
    return-void

    .line 158
    :cond_6
    iput p3, v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 159
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 161
    const/4 p1, 0x0

    .line 162
    if-eqz p3, :cond_e

    .line 163
    if-eq p3, v2, :cond_e

    .line 165
    if-eq p3, v4, :cond_b

    .line 167
    if-eq p3, v3, :cond_b

    .line 169
    if-eq p3, v8, :cond_9

    .line 171
    const/4 v0, 0x6

    .line 173
    if-eq p3, v0, :cond_e

    .line 174
    const/4 p2, 0x7

    .line 176
    if-eq p3, p2, :cond_7

    .line 177
    goto/16 :goto_8

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 181
    monitor-enter v0

    .line 183
    :try_start_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 184
    iget-boolean p2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 186
    if-nez p2, :cond_8

    .line 188
    const-string p2, "KeyguardViewMediator"

    .line 190
    const-string p3, "PERM_DISABLED and keygaurd isn\'t showing."

    .line 192
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 197
    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 199
    goto :goto_5

    .line 202
    :cond_8
    const-string p1, "KeyguardViewMediator"

    .line 203
    const-string p2, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    .line 205
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 210
    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked(Z)V

    .line 212
    :goto_5
    monitor-exit v0

    .line 215
    goto/16 :goto_8

    .line 216
    :catchall_0
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    throw p0

    .line 220
    :cond_9
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 221
    monitor-enter p3

    .line 223
    :try_start_3
    const-string p1, "KeyguardViewMediator"

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    const-string v1, "READY, reset state? "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 236
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v0

    .line 246
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 250
    iget-boolean v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 252
    if-eqz v0, :cond_a

    .line 254
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 256
    invoke-virtual {p1, p2, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 258
    move-result p1

    .line 261
    if-eqz p1, :cond_a

    .line 262
    const-string p1, "KeyguardViewMediator"

    .line 264
    const-string v0, "SIM moved to READY when the previously was locked. Reset the state."

    .line 266
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 271
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 273
    invoke-virtual {p1, p2, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 275
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 278
    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked(Z)V

    .line 280
    :cond_a
    monitor-exit p3

    .line 283
    goto :goto_8

    .line 284
    :catchall_1
    move-exception p0

    .line 285
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    throw p0

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 288
    monitor-enter v0

    .line 290
    :try_start_4
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 291
    iget-object p3, p3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 293
    invoke-virtual {p3, p2, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 295
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 298
    iget-object p3, p2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 300
    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimBindEnable:Z

    .line 302
    if-eqz p3, :cond_c

    .line 304
    monitor-exit v0

    .line 306
    goto :goto_8

    .line 307
    :cond_c
    iput-boolean v2, p2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 308
    iget-boolean p3, p2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 310
    if-nez p3, :cond_d

    .line 312
    const-string p2, "KeyguardViewMediator"

    .line 314
    const-string p3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    .line 316
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 321
    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 323
    goto :goto_6

    .line 326
    :cond_d
    invoke-virtual {p2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked(Z)V

    .line 327
    :goto_6
    monitor-exit v0

    .line 330
    goto :goto_8

    .line 331
    :catchall_2
    move-exception p0

    .line 332
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 333
    throw p0

    .line 334
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 335
    iput-boolean v5, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 337
    monitor-enter v6

    .line 339
    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 340
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    .line 342
    move-result v0

    .line 345
    if-eqz v0, :cond_10

    .line 346
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 348
    iget-boolean v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 350
    if-nez v7, :cond_f

    .line 352
    const-string v0, "KeyguardViewMediator"

    .line 354
    const-string v7, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    .line 356
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 361
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 363
    goto :goto_7

    .line 366
    :cond_f
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked(Z)V

    .line 367
    :cond_10
    :goto_7
    if-ne p3, v2, :cond_12

    .line 370
    if-eqz v1, :cond_11

    .line 372
    const-string p1, "KeyguardViewMediator"

    .line 374
    const-string p3, "SIM moved to ABSENT when the previous state was locked. Reset the state."

    .line 376
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 381
    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked(Z)V

    .line 383
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 386
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 388
    invoke-virtual {p1, p2, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 390
    :cond_12
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 393
    :goto_8
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 394
    move p1, v5

    .line 396
    :goto_9
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 397
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 399
    move-result p3

    .line 402
    if-ge p1, p3, :cond_14

    .line 403
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 405
    move-result p3

    .line 408
    invoke-virtual {p2, p3}, Landroid/util/SparseIntArray;->get(I)I

    .line 409
    move-result p2

    .line 412
    const/4 v0, -0x1

    .line 413
    if-eq p3, v0, :cond_13

    .line 414
    if-eq p2, v4, :cond_15

    .line 416
    if-ne p2, v3, :cond_13

    .line 418
    goto :goto_a

    .line 420
    :cond_13
    add-int/lit8 p1, p1, 0x1

    .line 421
    goto :goto_9

    .line 423
    :cond_14
    move v2, v5

    .line 424
    :cond_15
    :goto_a
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 425
    return-void

    .line 427
    :catchall_3
    move-exception p0

    .line 428
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 429
    throw p0

    .line 430
    :catchall_4
    move-exception p0

    .line 431
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 432
    throw p0
    .line 433
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onTrustChanged(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 15
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    .line 19
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    :goto_0
    return-void
    .line 27
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "onUserSwitchComplete %d"

    .line 10
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "KeyguardViewMediator"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    if-eqz p1, :cond_2

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 23
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 37
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 46
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 59
    nop

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 3

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    const-string v1, "onUserSwitching %d"

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v2

    .line 9
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 21
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 24
    iput p1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 31
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 41
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMultiUserController:Lcom/miui/systemui/MultiUserController;

    .line 43
    iget v1, v1, Lcom/miui/systemui/MultiUserController;->kidSpaceUserId:I

    .line 45
    if-ne p1, v1, :cond_1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 49
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 55
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 58
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
    .line 65
.end method
