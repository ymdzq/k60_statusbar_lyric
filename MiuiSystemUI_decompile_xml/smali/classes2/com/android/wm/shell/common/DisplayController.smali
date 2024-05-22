.class public final Lcom/android/wm/shell/common/DisplayController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayChangedListeners:Ljava/util/ArrayList;

.field public final mDisplayContainerListener:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

.field public final mDisplays:Landroid/util/SparseArray;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 17
    iput-object p4, p0, Lcom/android/wm/shell/common/DisplayController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 19
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayController;->mWmService:Landroid/view/IWindowManager;

    .line 23
    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController;

    .line 25
    invoke-direct {p1, p2, p3, p4}, Lcom/android/wm/shell/common/DisplayChangeController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 30
    new-instance p1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    .line 32
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;-><init>(Lcom/android/wm/shell/common/DisplayController;)V

    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayContainerListener:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    .line 37
    new-instance p1, Lcom/android/wm/shell/common/DisplayController$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayController;)V

    .line 41
    invoke-virtual {p3, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 44
    return-void
    .line 47
.end method


# virtual methods
.method public final addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v2

    .line 26
    if-ge v1, v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    move-result v2

    .line 34
    invoke-interface {p1, v2}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayAdded(I)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
    .line 45
.end method

.method public final getDisplay(I)Landroid/view/Display;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    .line 2
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 10
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getDisplayContext(I)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
    .line 16
.end method

.method public final getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
    .line 16
.end method

.method public final onDisplayAdded(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 15
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_1
    if-nez p1, :cond_2

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 33
    :goto_0
    new-instance v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    .line 34
    invoke-direct {v3}, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;-><init>()V

    .line 36
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    .line 39
    invoke-direct {v4, v2, v1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 41
    iput-object v2, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    .line 44
    iput-object v4, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v1

    .line 51
    iget-object v2, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mInsetsState:Landroid/view/InsetsState;

    .line 52
    iput-object v2, v4, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 54
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    const/4 v1, 0x0

    .line 64
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v2

    .line 70
    if-ge v1, v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 79
    invoke-interface {v2, p1}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayAdded(I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
    .line 91
.end method

.method public final removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
    .line 14
.end method
