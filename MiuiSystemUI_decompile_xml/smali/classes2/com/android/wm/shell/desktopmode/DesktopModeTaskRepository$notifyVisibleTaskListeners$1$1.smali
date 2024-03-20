.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $hasVisibleFreeformTasks:Z

.field public final synthetic $listener:Lcom/android/systemui/wmshell/WMShell$16;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell$16;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;->$listener:Lcom/android/systemui/wmshell/WMShell$16;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;->$displayId:I

    .line 4
    iput-boolean p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;->$hasVisibleFreeformTasks:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;->$listener:Lcom/android/systemui/wmshell/WMShell$16;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;->$displayId:I

    .line 4
    iget-boolean p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;->$hasVisibleFreeformTasks:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/android/systemui/wmshell/WMShell$16;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 12
    const/high16 v2, 0x4000000

    .line 14
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 16
    iget-object p0, v0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :goto_0
    return-void
.end method
