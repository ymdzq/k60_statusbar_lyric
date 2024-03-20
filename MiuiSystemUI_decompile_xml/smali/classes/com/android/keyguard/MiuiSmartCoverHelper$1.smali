.class public final Lcom/android/keyguard/MiuiSmartCoverHelper$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiSmartCoverHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 2
    iget-boolean v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 18
    iget-object v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 28
    iget-object v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 32
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 41
    iget-object v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    const-string v0, "MiuiSmartCoverHelper"

    .line 48
    const-string v1, "keyguardDone after onFinishedGoingToSleep"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 55
    iget-object v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 62
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 65
    return-void
    .line 67
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onStartedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper$1;->this$0:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mShouldDelayKeyguardDone:Z

    .line 5
    return-void
    .line 7
.end method
