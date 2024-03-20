.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FFFLandroid/view/View;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$0:F

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$5:Z

    .line 15
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$6:Landroid/view/View;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$0:F

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$4:Z

    .line 10
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$5:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;->f$6:Landroid/view/View;

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    cmpl-float v7, v0, v6

    .line 34
    if-eqz v7, :cond_3

    .line 36
    cmpg-float v1, p1, v1

    .line 38
    if-gez v1, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    sub-float v1, p1, v2

    .line 43
    div-float/2addr v1, v0

    .line 45
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    .line 46
    move-result v0

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 52
    move-result v0

    .line 55
    if-eqz v3, :cond_2

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    sub-float v0, v1, v0

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    move v0, v6

    .line 62
    :goto_1
    if-eqz v4, :cond_4

    .line 63
    if-nez v5, :cond_5

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    .line 67
    move-result v1

    .line 70
    cmpl-float v1, v0, v1

    .line 71
    if-gez v1, :cond_5

    .line 73
    :cond_4
    if-nez v4, :cond_6

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    .line 77
    move-result v1

    .line 80
    cmpl-float v1, v1, v6

    .line 81
    if-eqz v1, :cond_6

    .line 83
    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 85
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 88
    :goto_2
    return-void
    .line 91
.end method
