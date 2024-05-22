.class public final Landroidx/lifecycle/ProcessLifecycleOwner$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/lifecycle/ProcessLifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 2
    iget v1, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    iput-boolean v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 9
    iget-object v0, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 18
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 20
    if-nez v0, :cond_1

    .line 22
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 28
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 32
    iput-boolean v2, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 35
    :cond_1
    return-void
    .line 37
.end method
