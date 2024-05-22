.class public final synthetic Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FZFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    iput p4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    iput p5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$4:F

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    iget-boolean v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$3:F

    .line 8
    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;->f$4:F

    .line 10
    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 12
    iget-object v4, v4, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 14
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 16
    move-result-object v4

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Float;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result p1

    .line 29
    iget-object v5, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 30
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 32
    move-result-object v5

    .line 35
    invoke-virtual {v4, v5, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 36
    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 39
    if-nez v1, :cond_1

    .line 41
    if-eqz v2, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sub-float v1, p1, v3

    .line 49
    sub-float/2addr p0, v3

    .line 51
    div-float p0, v1, p0

    .line 52
    :goto_1
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 54
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 56
    move-result-object v1

    .line 59
    invoke-virtual {v4, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 60
    iget-object p0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 63
    iget v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 65
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    .line 67
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 69
    float-to-int p1, p1

    .line 71
    add-int/2addr v2, p1

    .line 72
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 73
    monitor-enter p1

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p0

    .line 81
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 91
    check-cast v3, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    .line 92
    invoke-interface {v3, v1, v2, v4}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V

    .line 94
    goto :goto_2

    .line 97
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 99
    iget-object p0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 102
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 106
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0
    .line 112
.end method
