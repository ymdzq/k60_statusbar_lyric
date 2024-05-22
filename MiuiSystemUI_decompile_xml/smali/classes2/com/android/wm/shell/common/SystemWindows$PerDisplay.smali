.class public final Lcom/android/wm/shell/common/SystemWindows$PerDisplay;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDisplayId:I

.field public final mWwms:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/wm/shell/common/SystemWindows;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SystemWindows;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->this$0:Lcom/android/wm/shell/common/SystemWindows;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    .line 12
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mDisplayId:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final setShellRootAccessibilityWindow(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mDisplayId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->mWwms:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows$PerDisplay;->this$0:Lcom/android/wm/shell/common/SystemWindows;

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/common/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    .line 17
    if-eqz p2, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Landroid/view/SurfaceControlViewHost;

    .line 27
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    .line 29
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    invoke-interface {v1, v0, p1, p0}, Landroid/view/IWindowManager;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p2, "Error setting accessibility window for "

    .line 40
    const-string v1, ":"

    .line 42
    invoke-static {p2, v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    const-string p2, "SystemWindows"

    .line 48
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_1
    return-void
    .line 53
.end method
