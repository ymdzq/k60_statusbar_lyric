.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $visibleTasks:I

.field public final synthetic $visibleTasksListener:Lcom/android/systemui/wmshell/WMShell$16;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell$16;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasksListener:Lcom/android/systemui/wmshell/WMShell$16;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$displayId:I

    .line 4
    iput p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasks:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasksListener:Lcom/android/systemui/wmshell/WMShell$16;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$displayId:I

    .line 4
    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;->$visibleTasks:I

    .line 6
    const/4 v2, 0x0

    .line 8
    if-lez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p0, v2

    .line 13
    :goto_0
    if-nez v1, :cond_1

    .line 14
    iget-object v0, v0, Lcom/android/systemui/wmshell/WMShell$16;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 16
    iget-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 18
    const/high16 v3, 0x4000000

    .line 20
    invoke-virtual {v1, v3, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 22
    iget-object p0, v0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 30
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    :goto_1
    return-void
    .line 37
.end method
