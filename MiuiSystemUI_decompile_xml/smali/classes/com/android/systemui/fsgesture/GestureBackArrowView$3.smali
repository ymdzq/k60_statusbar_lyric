.class public final Lcom/android/systemui/fsgesture/GestureBackArrowView$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 10
    sget-object v2, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 12
    if-ne v1, v2, :cond_0

    .line 14
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Float;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 33
    return-void

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Float;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 44
    move-result v1

    .line 47
    iput v1, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 50
    move-result-wide v0

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    cmp-long p1, v0, v2

    .line 56
    if-lez p1, :cond_1

    .line 58
    const-wide/16 v2, 0x32

    .line 60
    cmp-long p1, v0, v2

    .line 62
    if-gez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 66
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 69
    iput-boolean v0, p1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 80
.end method
