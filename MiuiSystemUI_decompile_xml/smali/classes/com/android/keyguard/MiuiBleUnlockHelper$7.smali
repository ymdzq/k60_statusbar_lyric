.class public final Lcom/android/keyguard/MiuiBleUnlockHelper$7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$7;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUnlocked(B)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "mBleListener state: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiBleUnlockHelper"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$7;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 21
    iget-object v0, v0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 25
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 27
    move-result v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 31
    move-result v0

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/4 v4, 0x4

    .line 39
    if-eq v0, v4, :cond_0

    .line 40
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, v3

    .line 44
    :goto_0
    if-nez v0, :cond_4

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$7;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 47
    iget-object v0, v0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 51
    move-result v4

    .line 54
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    goto :goto_3

    .line 61
    :cond_1
    const/4 v0, 0x2

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$7;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 65
    iget-boolean v4, v1, Lcom/android/keyguard/MiuiBleUnlockHelper;->mGoingToSleep:Z

    .line 67
    if-nez v4, :cond_2

    .line 69
    sget-object v4, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 71
    invoke-virtual {v1, v4}, Lcom/android/keyguard/MiuiBleUnlockHelper;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$7;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 85
    goto :goto_1

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$7;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 89
    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    .line 93
    :goto_1
    const-class p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 96
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 102
    if-ne p1, v0, :cond_3

    .line 104
    goto :goto_2

    .line 106
    :cond_3
    move v2, v3

    .line 107
    :goto_2
    const-string p1, "band"

    .line 108
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->setKeyguardUnlockWay(Ljava/lang/String;Z)V

    .line 110
    return-void

    .line 113
    :cond_4
    :goto_3
    const-string p0, "mBleListener cancel"

    .line 114
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
    .line 119
.end method
