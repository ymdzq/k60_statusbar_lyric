.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;ZILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    iput p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$3:Landroid/content/ComponentName;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    iget p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v2, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 10
    invoke-interface {v2, p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskCreated(I)V

    .line 12
    :cond_0
    if-eqz v1, :cond_1

    .line 15
    iget-boolean p0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    .line 17
    if-nez p0, :cond_2

    .line 19
    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 21
    iget-boolean v0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    .line 23
    invoke-interface {p0, v0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(Z)V

    .line 25
    :cond_2
    return-void
    .line 28
.end method
