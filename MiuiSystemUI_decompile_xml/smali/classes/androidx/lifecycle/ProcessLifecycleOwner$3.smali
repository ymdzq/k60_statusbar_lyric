.class public final Landroidx/lifecycle/ProcessLifecycleOwner$3;
.super Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ProcessLifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 2
    invoke-direct {p0}, Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 2
    iget p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 6
    iput p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 8
    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Landroidx/lifecycle/ProcessLifecycleOwner$1;

    .line 14
    const-wide/16 v0, 0x2bc

    .line 16
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;

    .line 2
    invoke-direct {p2, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner$3;)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    return-void
    .line 10
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 2
    iget p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 6
    iput p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 8
    if-nez p1, :cond_0

    .line 10
    iget-boolean p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 18
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 24
    :cond_0
    return-void
    .line 26
.end method
