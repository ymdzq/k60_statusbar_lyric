.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$17;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic val$mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$mainExecutor:Ljava/util/concurrent/Executor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$17;I)V

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$mainExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$17;I)V

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->val$mainExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method
