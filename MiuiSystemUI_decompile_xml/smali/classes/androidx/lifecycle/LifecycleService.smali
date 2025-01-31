.class public abstract Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public final mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 5
    invoke-direct {v0, p0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    return-object p0
    .line 6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    const/4 p0, 0x0

    .line 9
    return-object p0
    .line 10
.end method

.method public onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 9
    return-void
    .line 12
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 14
    return-void
    .line 17
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 9
    return-void
    .line 12
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
