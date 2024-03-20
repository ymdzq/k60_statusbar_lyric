.class public final Lcom/android/wm/shell/common/SystemWindows;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayListener:Lcom/android/wm/shell/common/SystemWindows$1;

.field public final mPerDisplay:Landroid/util/SparseArray;

.field public final mViewRoots:Ljava/util/HashMap;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 17
    new-instance v0, Lcom/android/wm/shell/common/SystemWindows$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/SystemWindows$1;-><init>(Lcom/android/wm/shell/common/SystemWindows;)V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mDisplayListener:Lcom/android/wm/shell/common/SystemWindows$1;

    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/common/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    .line 26
    iput-object p1, p0, Lcom/android/wm/shell/common/SystemWindows;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 30
    :try_start_0
    new-instance p0, Lcom/android/wm/shell/common/SystemWindows$2;

    .line 33
    invoke-direct {p0}, Lcom/android/wm/shell/common/SystemWindows$2;-><init>()V

    .line 35
    invoke-interface {p2, p0}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string p1, "SystemWindows"

    .line 43
    const-string p2, "Unable to create layer"

    .line 45
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :goto_0
    return-void
    .line 50
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object v2

    .line 8
    check-cast v2, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 9
    if-nez v2, :cond_0

    .line 11
    new-instance v2, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 13
    invoke-direct {v2, p0}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;-><init>(Lcom/android/wm/shell/common/SystemWindows;)V

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    :cond_0
    iget-object p0, v2, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    .line 27
    iget v1, v2, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mDisplayId:I

    .line 29
    const-string v3, "SystemWindows"

    .line 31
    iget-object v4, v2, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->this$0:Lcom/android/wm/shell/common/SystemWindows;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    goto :goto_2

    .line 37
    :cond_1
    new-instance v0, Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;

    .line 38
    invoke-direct {v0}, Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;-><init>()V

    .line 40
    const/4 v5, 0x0

    .line 43
    :try_start_0
    iget-object v6, v4, Lcom/android/wm/shell/common/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    .line 44
    invoke-interface {v6, v1, v0, p3}, Landroid/view/IWindowManager;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    .line 46
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-object v0, v5

    .line 51
    :goto_0
    if-nez v0, :cond_2

    .line 52
    const-string p0, "Unable to get root surfacecontrol for systemui"

    .line 54
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    iget-object v6, v4, Lcom/android/wm/shell/common/SystemWindows;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 60
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 62
    move-result-object v6

    .line 65
    if-nez v6, :cond_3

    .line 66
    const-string p0, "Unable to get display context for systemui"

    .line 68
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_1
    move-object v0, v5

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    new-instance v5, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    .line 75
    invoke-direct {v5, v6, v0}, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;-><init>(Landroid/content/Context;Landroid/view/SurfaceControl;)V

    .line 77
    invoke-virtual {p0, p3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    goto :goto_1

    .line 83
    :goto_2
    if-nez v0, :cond_4

    .line 84
    const-string p0, "Unable to create systemui root"

    .line 86
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_3

    .line 91
    :cond_4
    iget-object p0, v4, Lcom/android/wm/shell/common/SystemWindows;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 94
    move-result-object p0

    .line 97
    new-instance v1, Landroid/view/SurfaceControlViewHost;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v5

    .line 103
    invoke-direct {v1, v5, p0, v0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 104
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    const/high16 v0, 0x1000000

    .line 109
    or-int/2addr p0, v0

    .line 111
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    invoke-virtual {v1, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 114
    iget-object p0, v4, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 117
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v2, p3, p1}, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->setShellRootAccessibilityWindow(ILandroid/view/View;)V

    .line 122
    :goto_3
    return-void
    .line 125
.end method

.method public final getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControlViewHost;

    .line 8
    if-nez p0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "Couldn\'t get focus grant token since view does not exist in SystemWindow:"

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    const-string p1, "SystemWindows"

    .line 26
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getFocusGrantToken()Landroid/os/IBinder;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public final getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v3

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    move v3, v0

    .line 12
    :goto_1
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v4

    .line 16
    check-cast v4, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 17
    iget-object v4, v4, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v4

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;

    .line 31
    iget-object v4, v4, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 38
    check-cast v4, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    .line 39
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;->getSurfaceControlForWindow(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 41
    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    return-object v4

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    return-object p0
    .line 55
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControlViewHost;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "SystemWindows"

    .line 12
    const-string p1, "SurfaceControlViewHost is gone."

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 20
    return-void
    .line 23
.end method

.method public final updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControlViewHost;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 15
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
