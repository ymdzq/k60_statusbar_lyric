.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$1:Lcom/android/wm/shell/freeform/FreeformTaskListener$State;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/freeform/FreeformTaskListener$State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    .line 4
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 6
    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 12
    const-string v2, "onTaskInfoChanged"

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->addOrMoveFreeformTaskToTop(ILjava/lang/String;)V

    .line 16
    :cond_0
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->putOrUpdateMiuiFreeformTaskInfo(ILandroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 26
    return-void
    .line 29
.end method
