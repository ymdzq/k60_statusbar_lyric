.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/desktopmode/DesktopMode;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addDesktopGestureExclusionRegionListener(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/lang/Object;Ljava/util/concurrent/Executor;I)V

    .line 9
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public final addVisibleTasksListener(Lcom/android/systemui/wmshell/WMShell$16;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/lang/Object;Ljava/util/concurrent/Executor;I)V

    .line 9
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method
