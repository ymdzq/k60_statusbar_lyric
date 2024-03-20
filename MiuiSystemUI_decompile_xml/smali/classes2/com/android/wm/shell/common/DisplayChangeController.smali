.class public final Lcom/android/wm/shell/common/DisplayChangeController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mControllerImpl:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

.field public final mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    .line 14
    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;)V

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mControllerImpl:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    .line 21
    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;)V

    .line 25
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final dispatchOnDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 19
    move v2, p1

    .line 21
    move v3, p2

    .line 22
    move v4, p3

    .line 23
    move-object v5, p4

    .line 24
    move-object v6, p5

    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method
