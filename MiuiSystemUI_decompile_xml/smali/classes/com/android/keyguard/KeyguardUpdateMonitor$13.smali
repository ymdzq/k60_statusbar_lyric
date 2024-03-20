.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$13;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-static {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-$$Nest$mhandleFaceAcquired(ILcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-string p2, ""

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 16
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-$$Nest$mhandleFaceError(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 17
    return-void
    .line 20
.end method

.method public final onAuthenticationFailed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 13
    const-string v0, "onAuthenticationFailed called after face has been locked out"

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    .line 17
    return-void

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-$$Nest$mhandleFaceAuthFailed(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 23
    return-void
    .line 26
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(I)V

    .line 7
    return-void
    .line 10
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$13;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->isStrongBiometric()Z

    .line 8
    move-result p1

    .line 11
    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-$$Nest$mhandleFaceAuthenticated(ILcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 12
    return-void
    .line 15
.end method
