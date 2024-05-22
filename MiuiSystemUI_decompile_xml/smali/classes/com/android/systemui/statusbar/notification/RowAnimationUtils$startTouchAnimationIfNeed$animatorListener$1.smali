.class public final Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic $scale:F


# direct methods
.method public constructor <init>(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$scale:F

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 7
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimating:Z

    .line 17
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 21
    move-result-object p0

    .line 24
    if-nez p0, :cond_2

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimator:Landroid/animation/ValueAnimator;

    .line 28
    :goto_2
    return-void
    .line 30
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$scale:F

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    cmpg-float p1, p1, v0

    .line 6
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 21
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object p1, v1

    .line 26
    :goto_1
    if-nez p1, :cond_2

    .line 27
    goto :goto_2

    .line 29
    :cond_2
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimating:Z

    .line 30
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 32
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 34
    move-result-object p1

    .line 37
    if-nez p1, :cond_4

    .line 38
    goto :goto_3

    .line 40
    :cond_4
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimator:Landroid/animation/ValueAnimator;

    .line 41
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RowAnimationUtils$startTouchAnimationIfNeed$animatorListener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateBackgroundBg()V

    .line 45
    return-void
    .line 48
.end method
