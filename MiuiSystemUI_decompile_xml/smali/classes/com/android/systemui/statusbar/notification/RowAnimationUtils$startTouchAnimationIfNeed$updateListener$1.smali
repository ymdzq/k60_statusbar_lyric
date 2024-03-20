.class public final Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Float;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 26
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Float;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleY(F)V

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Float;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$updateListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 61
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Float;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 69
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 73
    return-void
    .line 76
.end method
