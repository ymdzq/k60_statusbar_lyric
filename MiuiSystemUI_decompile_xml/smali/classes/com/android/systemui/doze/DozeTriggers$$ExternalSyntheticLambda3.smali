.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/android/systemui/doze/DozeMachine$State;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;Lcom/android/systemui/doze/DozeMachine$State;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/doze/DozeMachine$State;

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$3:Z

    .line 11
    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$4:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/doze/DozeMachine$State;

    .line 6
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$3:Z

    .line 8
    iget p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$4:I

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    iget-object v4, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 14
    const/4 v5, 0x0

    .line 16
    iget-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    const-string/jumbo p0, "requestPulse - inPocket"

    .line 27
    invoke-virtual {v6, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 30
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 33
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 35
    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 37
    goto :goto_3

    .line 40
    :cond_0
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 41
    iget-boolean p1, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 43
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 45
    const/4 v7, 0x1

    .line 47
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 48
    if-eqz p1, :cond_3

    .line 50
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    move-result-object v8

    .line 55
    check-cast v8, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 56
    iget v8, v8, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 58
    if-ne v8, v7, :cond_1

    .line 60
    move v8, v7

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v8, v5

    .line 64
    :goto_0
    if-nez v8, :cond_3

    .line 65
    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    .line 67
    move-result v8

    .line 70
    if-nez v8, :cond_2

    .line 71
    goto :goto_1

    .line 73
    :cond_2
    iget-object p1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    .line 76
    move-result v0

    .line 79
    xor-int/2addr v0, v7

    .line 80
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 81
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 84
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    .line 86
    goto :goto_3

    .line 89
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 90
    const-string p0, "continuePulseRequest - pulse no longer pending, pulse was cancelled before it could start transitioning to pulsing state."

    .line 92
    invoke-virtual {v6, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 94
    goto :goto_2

    .line 97
    :cond_4
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 102
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 104
    if-ne p0, v7, :cond_5

    .line 106
    move v5, v7

    .line 108
    :cond_5
    if-eqz v5, :cond_6

    .line 109
    const-string p0, "continuePulseRequest - pulsingBlocked"

    .line 111
    invoke-virtual {v6, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 113
    goto :goto_2

    .line 116
    :cond_6
    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    .line 117
    move-result p0

    .line 120
    if-nez p0, :cond_7

    .line 121
    const-string p0, "continuePulseRequest - doze state cannot pulse"

    .line 123
    invoke-virtual {v6, v2, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/String;)V

    .line 125
    :cond_7
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 128
    :goto_3
    return-void
    .line 131
.end method
