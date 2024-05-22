.class public final synthetic Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(IILandroid/graphics/Region;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x2

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->f$0:I

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    .line 11
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 13
    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 15
    iget-object v2, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v2, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;

    .line 26
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;I)V

    .line 28
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    return-void

    .line 34
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->f$0:I

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    .line 37
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 39
    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 41
    iget-object v2, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v2, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    .line 48
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;

    .line 52
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;I)V

    .line 54
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    :cond_1
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method
