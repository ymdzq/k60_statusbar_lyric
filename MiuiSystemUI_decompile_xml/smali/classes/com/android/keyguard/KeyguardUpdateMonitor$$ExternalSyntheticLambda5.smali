.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(ILcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 19
    return-void

    .line 22
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 30
    return-void

    .line 33
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    move v0, v3

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 39
    move-result v1

    .line 42
    if-ge v0, v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 45
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    .line 47
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 51
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    .line 53
    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    array-length v4, v2

    .line 59
    move v5, v3

    .line 60
    :goto_1
    if-ge v5, v4, :cond_0

    .line 61
    aget v6, v2, v5

    .line 63
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 65
    const/16 v8, 0x130

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v9

    .line 72
    invoke-virtual {v7, v8, v6, v0, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 73
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    return-void

    .line 86
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 89
    return-void

    .line 92
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 95
    return-void

    .line 98
    :pswitch_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 104
    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    .line 110
    move-result-object v1

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 114
    const/16 v2, 0x14a

    .line 116
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void

    .line 125
    :pswitch_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 133
    const-string v4, "Face cancellation not received, transitioning to STOPPED"

    .line 135
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)V

    .line 137
    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 140
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 142
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 144
    return-void

    .line 147
    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 155
    const-string v4, "Fp cancellation not received, transitioning to STOPPED"

    .line 157
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)V

    .line 159
    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 164
    return-void

    .line 167
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 170
    const-string v1, "Retrying fingerprint listening after power pressed error."

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 177
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 182
.end method
