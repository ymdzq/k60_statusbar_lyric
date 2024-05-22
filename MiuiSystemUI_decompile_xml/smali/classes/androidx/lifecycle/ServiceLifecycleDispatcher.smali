.class public final Landroidx/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mLastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

.field public final mRegistry:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    .line 8
    iput-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    new-instance p1, Landroid/os/Handler;

    .line 13
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    .line 6
    :cond_0
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 9
    iget-object v1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 13
    iput-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 16
    iget-object p0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 20
    return-void
    .line 23
.end method
