.class public final Lcom/android/systemui/doze/DozeSuppressor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mHostCallback:Lcom/android/systemui/doze/DozeSuppressor$1;

.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/DozeLog;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/doze/DozeSuppressor$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeSuppressor$1;-><init>(Lcom/android/systemui/doze/DozeSuppressor;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mHostCallback:Lcom/android/systemui/doze/DozeSuppressor$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 16
    iput-object p4, p0, Lcom/android/systemui/doze/DozeSuppressor;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 18
    iput-object p5, p0, Lcom/android/systemui/doze/DozeSuppressor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 2
    return-void
    .line 4
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/systemui/doze/DozeSuppressor;->mHostCallback:Lcom/android/systemui/doze/DozeSuppressor$1;

    .line 6
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 9
    if-eq p1, v0, :cond_1

    .line 11
    const/16 p0, 0x9

    .line 13
    if-eq p1, p0, :cond_0

    .line 15
    goto/16 :goto_3

    .line 17
    :cond_0
    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 24
    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    goto/16 :goto_3

    .line 32
    :cond_1
    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 39
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 47
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 51
    move-result p2

    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 58
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    move p1, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move p1, v1

    .line 66
    :goto_0
    const/4 p2, 0x0

    .line 67
    if-nez p1, :cond_3

    .line 68
    const-string p1, "device_unprovisioned"

    .line 70
    goto :goto_2

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSuppressor;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 73
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 79
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 81
    if-eqz v2, :cond_4

    .line 83
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 85
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    .line 87
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 89
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 95
    iget p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 97
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 99
    move-result v2

    .line 102
    if-ne p1, v2, :cond_4

    .line 103
    goto :goto_1

    .line 105
    :cond_4
    move v0, v1

    .line 106
    :goto_1
    if-eqz v0, :cond_5

    .line 107
    const-string p1, "has_pending_auth"

    .line 109
    goto :goto_2

    .line 111
    :cond_5
    move-object p1, p2

    .line 112
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 119
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 126
    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logImmediatelyEndDoze$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logImmediatelyEndDoze$2;

    .line 128
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 130
    const-string v3, "DozeLog"

    .line 132
    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 134
    move-result-object p2

    .line 137
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSuppressor;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 144
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 148
    :cond_6
    :goto_3
    return-void
    .line 151
.end method
