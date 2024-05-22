.class public final Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/IRemoteAnimationFinishedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

.field public final synthetic val$animationFinishedCallback:Ljava/lang/Runnable;

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$token:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$animationFinishedCallback:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onAnimationFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 9
    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$token:Landroid/os/IBinder;

    .line 11
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$animationFinishedCallback:Ljava/lang/Runnable;

    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 24
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
    .line 30
.end method
