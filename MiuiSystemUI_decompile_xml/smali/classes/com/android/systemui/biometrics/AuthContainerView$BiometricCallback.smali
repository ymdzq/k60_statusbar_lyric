.class final Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthBiometricView$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthContainerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAction(I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "AuthController"

    .line 3
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 8
    const-string p0, "Unhandled action: "

    .line 11
    const-string v0, "AuthContainerView"

    .line 13
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    goto/16 :goto_1

    .line 18
    :pswitch_0
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 20
    goto/16 :goto_1

    .line 23
    :pswitch_1
    iget-object p0, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 27
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/AuthContainerView;->getRequestId()J

    .line 29
    move-result-wide v2

    .line 32
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 33
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string p0, "onStartUdfpsNow: Receiver is null"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto/16 :goto_1

    .line 44
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onStartFingerprintNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto/16 :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 51
    const-string p1, "RemoteException when sending onDialogAnimatedIn"

    .line 52
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    goto/16 :goto_1

    .line 57
    :pswitch_2
    iget-object p1, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 59
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 61
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/AuthContainerView;->getRequestId()J

    .line 63
    move-result-wide v4

    .line 66
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 67
    move-result-object p1

    .line 70
    if-nez p1, :cond_1

    .line 71
    const-string p1, "Skip onDeviceCredentialPressed"

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 78
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDeviceCredentialPressed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    goto :goto_0

    .line 82
    :catch_1
    move-exception p1

    .line 83
    const-string v2, "RemoteException when handling credential button"

    .line 84
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    iget-object p1, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;

    .line 91
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 93
    iget-object p0, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const-wide/16 v2, 0x12c

    .line 101
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    goto :goto_1

    .line 106
    :pswitch_3
    const/4 p0, 0x5

    .line 107
    invoke-virtual {v3, p0, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 108
    goto :goto_1

    .line 111
    :pswitch_4
    iget-object p0, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    .line 112
    check-cast p0, Ljava/util/HashSet;

    .line 114
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 116
    iget-object p0, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 121
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/AuthContainerView;->getRequestId()J

    .line 123
    move-result-wide v2

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 127
    move-result-object p0

    .line 130
    if-nez p0, :cond_2

    .line 131
    const-string p0, "Skip onTryAgainPressed"

    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    goto :goto_1

    .line 138
    :cond_2
    :try_start_2
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onTryAgainPressed()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    goto :goto_1

    .line 142
    :catch_2
    move-exception p0

    .line 143
    const-string p1, "RemoteException when handling try again"

    .line 144
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    goto :goto_1

    .line 149
    :pswitch_5
    const/4 p0, 0x2

    .line 150
    invoke-virtual {v3, p0, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 151
    goto :goto_1

    .line 154
    :pswitch_6
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/AuthContainerView;->sendEarlyUserCanceled()V

    .line 155
    invoke-virtual {v3, v2, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 158
    goto :goto_1

    .line 161
    :pswitch_7
    const/4 p0, 0x4

    .line 162
    invoke-virtual {v3, p0, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 163
    :goto_1
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 168
.end method
