.class public final Landroidx/lifecycle/ProcessLifecycleOwner$3$1;
.super Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;->this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;

    .line 2
    invoke-direct {p0}, Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;->this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityResumed()V

    .line 6
    return-void
    .line 9
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;->this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 4
    iget p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 6
    const/4 v0, 0x1

    .line 8
    add-int/2addr p1, v0

    .line 9
    iput p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 10
    if-ne p1, v0, :cond_0

    .line 12
    iget-boolean p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 18
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 20
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 22
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 26
    :cond_0
    return-void
    .line 28
.end method
