.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->$wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final dispatchNewState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->$wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel$Companion;->fromWakefulnessLifecycle(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 8
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 10
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 20
    move-result-object p0

    .line 23
    const-string v0, "Failed to send updated wakefulness state - downstream canceled or failed."

    .line 24
    const-string v1, "KeyguardRepositoryImpl"

    .line 26
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final onFinishedGoingToSleep()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->dispatchNewState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onFinishedWakingUp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->dispatchNewState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onPostFinishedWakingUp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->dispatchNewState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartedGoingToSleep()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->dispatchNewState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$wakefulness$1$observer$1;->dispatchNewState()V

    .line 2
    return-void
    .line 5
.end method
