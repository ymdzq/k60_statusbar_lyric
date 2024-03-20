.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final synthetic f$1:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic f$2:Z

.field public final synthetic f$3:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;Z[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$1:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$2:Z

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$1:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$2:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 8
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotifyKeyguardShowingRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    .line 10
    const/16 v4, 0x1d

    .line 12
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 14
    if-nez v1, :cond_1

    .line 16
    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    .line 18
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation()V

    .line 26
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;->run()V

    .line 31
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 34
    goto :goto_4

    .line 37
    :cond_1
    const-string v0, "RemoteException"

    .line 38
    const-string v6, "KeyguardViewMediator"

    .line 40
    if-eqz p0, :cond_4

    .line 42
    array-length p0, p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    goto :goto_2

    .line 47
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    .line 48
    if-eqz v2, :cond_3

    .line 51
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    :try_start_1
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_3
    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 62
    goto :goto_4

    .line 65
    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 66
    throw p0

    .line 69
    :cond_4
    :goto_2
    const-string p0, "Keyguard exit without a corresponding app to show."

    .line 70
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_2
    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    .line 75
    if-eqz v2, :cond_5

    .line 78
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;->run()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_5

    .line 85
    :catch_1
    :try_start_3
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :cond_5
    :goto_3
    invoke-virtual {v5, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 89
    :goto_4
    return-void

    .line 92
    :goto_5
    invoke-virtual {v5, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 93
    throw p0
    .line 96
.end method
