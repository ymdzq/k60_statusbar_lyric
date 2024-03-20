.class public final synthetic Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Ljava/lang/Object;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/util/function/Consumer;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    .line 20
    iput-object p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;

    .line 24
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;I)V

    .line 27
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 36
    check-cast v1, Lcom/android/systemui/wmshell/WMShell$16;

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 40
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 44
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addVisibleTasksListener(Lcom/android/systemui/wmshell/WMShell$16;Ljava/util/concurrent/Executor;)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
