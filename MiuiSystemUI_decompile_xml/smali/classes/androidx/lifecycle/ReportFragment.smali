.class public final Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mProcessListener:Landroidx/lifecycle/ProcessLifecycleOwner$2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    .line 6
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 8
    move-result-object p0

    .line 11
    instance-of v0, p0, Landroidx/lifecycle/LifecycleRegistry;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;->registerIn(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 5
    move-result-object p0

    .line 8
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 11
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 17
    move-result-object v1

    .line 20
    new-instance v2, Landroidx/lifecycle/ReportFragment;

    .line 21
    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 30
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 33
    :cond_0
    return-void
    .line 36
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ProcessLifecycleOwner$2;

    .line 6
    return-void
    .line 8
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    return-void
    .line 5
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ProcessLifecycleOwner$2;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 9
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityResumed()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ProcessLifecycleOwner$2;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$2;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 9
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 11
    const/4 v1, 0x1

    .line 13
    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 15
    if-ne v0, v1, :cond_0

    .line 17
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 23
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 25
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 27
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 31
    :cond_0
    return-void
    .line 33
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    return-void
    .line 5
.end method
