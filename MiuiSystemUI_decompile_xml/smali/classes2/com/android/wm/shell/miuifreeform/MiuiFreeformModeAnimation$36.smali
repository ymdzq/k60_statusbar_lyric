.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field final synthetic val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

.field final synthetic val$finishCallback:Ljava/lang/Runnable;

.field final synthetic val$leash:Landroid/view/SurfaceControl;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field final synthetic val$tx:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$reason:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$tx:Landroid/view/SurfaceControl$Transaction;

    .line 10
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$leash:Landroid/view/SurfaceControl;

    .line 12
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$finishCallback:Ljava/lang/Runnable;

    .line 14
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDestState()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpLCornerState(I)V

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 15
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetCORNER_DEBUG(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "onBegin -> "

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$reason:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " left corner to hide state  from: lCornerX "

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 40
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCornerX()F

    .line 42
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, " lCornerY "

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 54
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCornerY()F

    .line 56
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, " lCAlpha "

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 68
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCAlpha()F

    .line 70
    move-result v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " lCRadius "

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 82
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCRadius()F

    .line 84
    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, " lCDegreeRange "

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 96
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCDegreeRange()F

    .line 98
    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, " lCThickness "

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 110
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCThickness()F

    .line 112
    move-result p0

    .line 115
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    const-string p1, "CornerChange"

    .line 123
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
    .line 128
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetCORNER_DEBUG(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, "onCancel -> "

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$reason:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, " left corner to hide state"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerStateStr()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, " type = "

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 41
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerAnimType()I

    .line 43
    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    const-string v0, "CornerChange"

    .line 54
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 59
    const/4 p1, -0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpLCornerState(I)V

    .line 62
    return-void
    .line 65
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerAnimType()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x6

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLeftCornerState(I)V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 17
    const/4 v0, -0x1

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpLCornerState(I)V

    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$finishCallback:Ljava/lang/Runnable;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 27
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmTransitions(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/transition/Transitions;

    .line 29
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$finishCallback:Ljava/lang/Runnable;

    .line 35
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 42
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetCORNER_DEBUG(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "onComplete -> "

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$reason:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, " to hide state"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 67
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerStateStr()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, " type = "

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 81
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerAnimType()I

    .line 83
    move-result p0

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 93
    const-string p1, "CornerChange"

    .line 94
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    return-void
    .line 99
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$mgetStrokeOffest(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)F

    .line 8
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 12
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 14
    move-result-object v3

    .line 17
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$tx:Landroid/view/SurfaceControl$Transaction;

    .line 18
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$leash:Landroid/view/SurfaceControl;

    .line 20
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 22
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeAlpha()F

    .line 24
    move-result v6

    .line 27
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$taskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 28
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeColors()[F

    .line 30
    move-result-object v7

    .line 33
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 34
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeStrokeThickness()F

    .line 36
    move-result v8

    .line 39
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 40
    move-result-object v9

    .line 43
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$tx:Landroid/view/SurfaceControl$Transaction;

    .line 44
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$leash:Landroid/view/SurfaceControl;

    .line 46
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 48
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCornerX()F

    .line 50
    move-result v2

    .line 53
    add-float v12, v2, v1

    .line 54
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 56
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCAlpha()F

    .line 58
    move-result v13

    .line 61
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 62
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCThickness()F

    .line 64
    move-result v14

    .line 67
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 68
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCRadius()F

    .line 70
    move-result v15

    .line 73
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 74
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCDegreeRange()F

    .line 76
    move-result v16

    .line 79
    invoke-virtual/range {v9 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setLeftBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 80
    move-result-object v17

    .line 83
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$tx:Landroid/view/SurfaceControl$Transaction;

    .line 84
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$leash:Landroid/view/SurfaceControl;

    .line 86
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 88
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCornerX()F

    .line 90
    move-result v4

    .line 93
    add-float v20, v4, v1

    .line 94
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 96
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCAlpha()F

    .line 98
    move-result v21

    .line 101
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 102
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCThickness()F

    .line 104
    move-result v22

    .line 107
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 108
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCRadius()F

    .line 110
    move-result v23

    .line 113
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 114
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCDegreeRange()F

    .line 116
    move-result v24

    .line 119
    move-object/from16 v18, v2

    .line 120
    move-object/from16 v19, v3

    .line 122
    invoke-virtual/range {v17 .. v24}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setRightBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 124
    move-result-object v1

    .line 127
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$tx:Landroid/view/SurfaceControl$Transaction;

    .line 128
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$leash:Landroid/view/SurfaceControl;

    .line 130
    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 132
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;->val$tx:Landroid/view/SurfaceControl$Transaction;

    .line 135
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 137
    return-void
    .line 140
.end method
