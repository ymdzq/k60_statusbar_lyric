.class public final synthetic Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;->f$0:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;->f$0:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 2
    sget v0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->$r8$clinit:I

    .line 4
    :try_start_0
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string v0, "RemoteAnimRunnerCompat"

    .line 11
    const-string v1, "Failed to call app controlled animation finished callback"

    .line 13
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_0
    return-void
    .line 18
.end method
