.class public final Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public mAlphaDuration:I

.field public mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field public mAnimateAlpha:Z

.field public final mViews:Ljava/util/List;


# direct methods
.method public constructor <init>(I[Landroid/view/View;)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->$r8$classId:I

    .line 2
    const/16 v0, 0x1a4

    .line 4
    const/16 v1, 0x12c

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    array-length p1, p2

    .line 11
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, [Landroid/view/View;

    .line 16
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mViews:Ljava/util/List;

    .line 26
    iput v1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 28
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAnimateAlpha:Z

    .line 33
    iput v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 35
    sget-object p1, Lcom/android/systemui/qs/QSAnimation;->INTERPOLATOR:Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    return-void

    .line 41
    :cond_0
    array-length p1, p2

    .line 42
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, [Landroid/view/View;

    .line 47
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    .line 52
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mViews:Ljava/util/List;

    .line 57
    iput v1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 59
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 61
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAnimateAlpha:Z

    .line 64
    iput v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 66
    sget-object p1, Lcom/android/systemui/qs/QSAnimation;->INTERPOLATOR:Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    return-void
    .line 72
.end method


# virtual methods
.method public final apply(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAnimateAlpha:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object p1

    .line 27
    iget v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 28
    int-to-long v0, v0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    move-result-object p1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 35
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    const/16 p0, 0x8

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 54
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAnimateAlpha:Z

    .line 55
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 66
    move-result-object p1

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 72
    move-result-object p1

    .line 75
    iget v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaDuration:I

    .line 76
    int-to-long v0, v0

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 79
    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 93
    goto :goto_2

    .line 96
    :cond_1
    const/4 p0, 0x0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_2
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 102
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mViews:Ljava/util/List;

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Landroid/view/View;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 48
.end method

.method public final bridge synthetic onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->onAnimationStart$com$android$systemui$controlcenter$phone$widget$HideBeforeAnimatorListener(Landroid/animation/Animator;)V

    .line 8
    return-void

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->onAnimationStart$com$android$systemui$controlcenter$phone$widget$ShowBeforeAnimatorListener(Landroid/animation/Animator;)V

    .line 12
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final onAnimationStart$com$android$systemui$controlcenter$phone$widget$HideBeforeAnimatorListener(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mViews:Ljava/util/List;

    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/View;

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->apply(Landroid/view/View;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public final onAnimationStart$com$android$systemui$controlcenter$phone$widget$ShowBeforeAnimatorListener(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->mViews:Ljava/util/List;

    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/View;

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;->apply(Landroid/view/View;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method
