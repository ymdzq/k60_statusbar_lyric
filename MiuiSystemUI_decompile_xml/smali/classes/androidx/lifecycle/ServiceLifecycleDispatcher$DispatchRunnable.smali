.class public final Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mEvent:Landroidx/lifecycle/Lifecycle$Event;

.field public final mRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public mWasExecuted:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 6
    iput-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 8
    iput-object p2, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Landroidx/lifecycle/Lifecycle$Event;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    iget-object v1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 10
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 14
    :cond_0
    return-void
    .line 16
.end method
