.class public Lcom/android/settingslib/androidx/Fragment;
.super Lmiuix/appcompat/app/Fragment;
.source "Fragment.java"


# instance fields
.field mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/android/settingslib/androidx/Fragment;->initLifecycle()V

    return-void
.end method

.method private initLifecycle()V
    .locals 1

    .line 72
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p0, :cond_0

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Lcom/android/settingslib/androidx/Fragment$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/androidx/Fragment$1;-><init>(Lcom/android/settingslib/androidx/Fragment;)V

    iput-object p1, p0, Lcom/android/settingslib/androidx/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 67
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
