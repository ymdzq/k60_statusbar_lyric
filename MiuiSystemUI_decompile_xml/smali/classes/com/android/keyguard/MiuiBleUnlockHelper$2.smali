.class public final Lcom/android/keyguard/MiuiBleUnlockHelper$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mGoingToSleep:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    .line 7
    return-void
    .line 10
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mGoingToSleep:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->verifyBLEDeviceRssi()V

    .line 4
    return-void
    .line 7
.end method