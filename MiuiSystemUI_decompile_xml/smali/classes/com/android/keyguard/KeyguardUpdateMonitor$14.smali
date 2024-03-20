.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$14;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPostureState:I

    .line 4
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mConfigFaceAuthSupportedPosture:I

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v3

    .line 17
    :goto_1
    if-eqz v1, :cond_3

    .line 18
    if-ne p1, v1, :cond_2

    .line 20
    goto :goto_2

    .line 22
    :cond_2
    move v1, v2

    .line 23
    goto :goto_3

    .line 24
    :cond_3
    :goto_2
    move v1, v3

    .line 25
    :goto_3
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPostureState:I

    .line 26
    if-eqz v0, :cond_4

    .line 28
    if-nez v1, :cond_4

    .line 30
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 32
    const-string v0, "New posture does not allow face auth, stopping it"

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_POSTURE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 39
    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 41
    :cond_4
    iget p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPostureState:I

    .line 44
    const/4 v0, 0x3

    .line 46
    if-ne p1, v0, :cond_5

    .line 47
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 49
    const-string v0, "Posture changed to open - attempting to request active unlock"

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 53
    const/16 p1, 0xc

    .line 56
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlockFromWakeReason(IZ)V

    .line 58
    :cond_5
    return-void
    .line 61
.end method
