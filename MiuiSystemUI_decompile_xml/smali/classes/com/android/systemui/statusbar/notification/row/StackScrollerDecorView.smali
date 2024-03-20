.class public abstract Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContent:Landroid/view/View;

.field public mContentAnimating:Z

.field public final mContentVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

.field public mContentVisible:Z

.field public final mDuration:I

.field public mIsSecondaryVisible:Z

.field public mIsVisible:Z

.field public mSecondaryAnimating:Z

.field public mSecondaryView:Landroid/view/View;

.field public final mSecondaryVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 10
    const/16 p1, 0x104

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mDuration:I

    .line 14
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    .line 21
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 24
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public abstract findContentView()Landroid/view/View;
.end method

.method public abstract findSecondaryView()Landroid/view/View;
.end method

.method public bridge synthetic getBottomCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getBottomRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getMaxRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getTopCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getTopRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSecondaryVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 2
    return p0
    .line 4
.end method

.method public isTransparent()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public needsClippingToShelf()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 2
    return p0
    .line 4
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findContentView()Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findSecondaryView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 18
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    .line 21
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    return-void
    .line 28
.end method

.method public final performAddAnimation(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    return-void
.end method

.method public final performAddAnimation(JJZ)V
    .locals 0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    return-void
.end method

.method public final performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;

    .line 2
    const/4 p2, 0x1

    .line 4
    invoke-direct {p1, p2, p8}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 5
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    .line 9
    const-wide/16 p0, 0x0

    .line 12
    return-wide p0
    .line 14
.end method

.method public setContentVisible(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    return-void
.end method

.method public setContentVisible(ZZLjava/util/function/Consumer;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Ljava/util/function/Consumer;)V

    .line 6
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    if-nez p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;->run()V

    :cond_2
    return-void
.end method

.method public setSecondaryVisible(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;

    .line 12
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/util/function/Consumer;)V

    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 17
    if-nez p1, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryVisibilityEndRunnable:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;

    .line 21
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method

.method public final setViewVisible(Landroid/view/View;ZZLjava/util/function/Consumer;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 19
    if-eqz p2, :cond_2

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-nez p3, :cond_4

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 30
    if-eqz p4, :cond_3

    .line 33
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 37
    :cond_3
    return-void

    .line 40
    :cond_4
    if-eqz p2, :cond_5

    .line 41
    sget-object p2, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 43
    goto :goto_1

    .line 45
    :cond_5
    sget-object p2, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 46
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 56
    move-result-object p1

    .line 59
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mDuration:I

    .line 60
    int-to-long p2, p0

    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 63
    move-result-object p0

    .line 66
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;

    .line 67
    invoke-direct {p1, p4}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;-><init>(Ljava/util/function/Consumer;)V

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 72
    return-void
    .line 75
.end method

.method public setVisible(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 2
    if-eq v0, p1, :cond_3

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    const/4 p2, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    .line 28
    goto :goto_2

    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    move p2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/16 p2, 0x8

    .line 36
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    .line 47
    :cond_3
    :goto_2
    return-void
    .line 50
.end method
