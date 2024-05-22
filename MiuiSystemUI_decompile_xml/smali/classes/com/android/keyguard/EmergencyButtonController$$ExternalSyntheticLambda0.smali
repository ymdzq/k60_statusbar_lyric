.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 24
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 30
    move-result v0

    .line 33
    new-instance v2, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;

    .line 34
    invoke-direct {v2, p0, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/EmergencyButtonController;ZZ)V

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 39
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void

    .line 44
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 45
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    .line 47
    return-void

    .line 50
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 53
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    goto :goto_2

    .line 63
    :cond_1
    move v1, v2

    .line 64
    :goto_2
    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/EmergencyButtonController;Z)V

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 70
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 76
.end method
