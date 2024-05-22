.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onAnimatorFinishEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string p2, "onAnimatorStateChange task end drag resize anim."

    .line 5
    const-string p3, "MiuiFreeformModeController"

    .line 7
    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 12
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 14
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 20
    move-result p1

    .line 23
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 24
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setInDragTaskResizeAnim(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 35
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->-$$Nest$fgetmIsFreeformInElude(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 43
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 55
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 57
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 63
    move-result-object v0

    .line 66
    const/16 v1, 0xe

    .line 67
    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "freeformToElude while onAnimatorFinishEnd miuiFreeformModeTaskInfo="

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 85
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNeedImeToAvoid()Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    const-string v0, "applyMiuiFreeformAvoidAnimation from ime need avoid anim."

    .line 95
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 100
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 102
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 104
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 108
    move-result-object p0

    .line 111
    const/16 p3, 0xc

    .line 112
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 114
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setNeedImeToAvoid(Z)V

    .line 117
    :cond_3
    return-void
    .line 120
.end method

.method public onAnimatorStateChange(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p3, "onAnimatorStateChange task is in dragging resize anim.taskId = "

    .line 2
    const-string v0, "MiuiFreeformModeController"

    .line 4
    invoke-static {p3, p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 11
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 17
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    if-nez p2, :cond_1

    .line 24
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setInDragTaskResizeAnim(Z)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public onAnimatorStopping(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
