.class public final Lcom/android/systemui/biometrics/UdfpsController$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget p1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 8
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    const-string p1, "reason"

    .line 25
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p1, "unknown"

    .line 34
    :goto_0
    const-string p2, "ACTION_CLOSE_SYSTEM_DIALOGS received, reason: "

    .line 37
    const-string v0, ", mRequestReason: "

    .line 39
    invoke-static {p2, p1, v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 45
    iget-object p2, p2, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 47
    iget p2, p2, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 49
    const-string v0, "UdfpsController"

    .line 51
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 56
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->controllerCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    .line 63
    invoke-interface {p1}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;->onUserCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 68
    :catch_0
    move-exception p1

    .line 69
    const-string p2, "UdfpsControllerOverlay"

    .line 70
    const-string v0, "Remote exception"

    .line 72
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    .line 79
    :cond_1
    return-void
    .line 82
.end method
