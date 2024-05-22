.class public final Lcom/google/android/material/internal/TextScale;
.super Landroidx/transition/Transition;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    instance-of v0, p0, Landroid/widget/TextView;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Landroid/widget/TextView;

    .line 8
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getScaleX()F

    .line 12
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p0

    .line 19
    check-cast p1, Ljava/util/HashMap;

    .line 20
    const-string v0, "android:textscale:scale"

    .line 22
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    instance-of v0, p0, Landroid/widget/TextView;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Landroid/widget/TextView;

    .line 8
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getScaleX()F

    .line 12
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p0

    .line 19
    check-cast p1, Ljava/util/HashMap;

    .line 20
    const-string v0, "android:textscale:scale"

    .line 22
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    if-eqz p3, :cond_4

    .line 5
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 7
    instance-of p1, p1, Landroid/widget/TextView;

    .line 9
    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 13
    instance-of v0, p1, Landroid/widget/TextView;

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .line 20
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 22
    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 24
    check-cast p2, Ljava/util/HashMap;

    .line 26
    const-string v0, "android:textscale:scale"

    .line 28
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    if-eqz v1, :cond_1

    .line 36
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 41
    check-cast p2, Ljava/lang/Float;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 44
    move-result p2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move p2, v2

    .line 49
    :goto_0
    check-cast p3, Ljava/util/HashMap;

    .line 50
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 61
    check-cast p3, Ljava/lang/Float;

    .line 62
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 64
    move-result v2

    .line 67
    :cond_2
    cmpl-float p3, p2, v2

    .line 68
    if-nez p3, :cond_3

    .line 70
    return-object p0

    .line 72
    :cond_3
    const/4 p0, 0x2

    .line 73
    new-array p0, p0, [F

    .line 74
    const/4 p3, 0x0

    .line 76
    aput p2, p0, p3

    .line 77
    const/4 p2, 0x1

    .line 79
    aput v2, p0, p2

    .line 80
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 82
    move-result-object p0

    .line 85
    new-instance p2, Lcom/google/android/material/internal/TextScale$1;

    .line 86
    invoke-direct {p2, p1}, Lcom/google/android/material/internal/TextScale$1;-><init>(Landroid/widget/TextView;)V

    .line 88
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    :cond_4
    :goto_1
    return-object p0
    .line 94
.end method
