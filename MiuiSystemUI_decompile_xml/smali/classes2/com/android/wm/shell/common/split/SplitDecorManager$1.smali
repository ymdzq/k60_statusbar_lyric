.class public final Lcom/android/wm/shell/common/split/SplitDecorManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

.field public final synthetic val$animFinishedCallback:Ljava/util/function/Consumer;

.field public final synthetic val$animT:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animFinishedCallback:Ljava/util/function/Consumer;

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 8
    iget v0, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 23
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 28
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 33
    const/4 v0, 0x0

    .line 35
    iput-object v0, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 36
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 38
    if-nez p1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animFinishedCallback:Ljava/util/function/Consumer;

    .line 42
    if-eqz p0, :cond_0

    .line 44
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-void

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->releaseDecor(Landroid/view/SurfaceControl$Transaction;)V

    .line 56
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 59
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 64
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 66
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 69
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 71
    if-nez p1, :cond_1

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->val$animFinishedCallback:Ljava/util/function/Consumer;

    .line 75
    if-eqz p0, :cond_1

    .line 77
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 86
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager$1;->this$0:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 11
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 15
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 17
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
