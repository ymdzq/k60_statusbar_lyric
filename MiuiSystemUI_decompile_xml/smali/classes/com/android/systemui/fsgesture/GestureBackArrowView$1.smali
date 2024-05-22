.class public final Lcom/android/systemui/fsgesture/GestureBackArrowView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->val$show:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 21
    if-nez p1, :cond_0

    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->val$show:Z

    .line 26
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 30
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 35
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurArrowAlpha:I

    .line 37
    return-void
    .line 39
.end method
