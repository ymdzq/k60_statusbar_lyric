.class public final Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAlpha:F

.field public mDetached:Z

.field public final mIsAcceptAlphaChange:Z

.field public final mViews:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 10
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final animTo(FILmiuix/animation/base/AnimConfig;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    .line 12
    :goto_0
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 14
    const-string v1, "to"

    .line 16
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 18
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 21
    float-to-double v2, p1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object v0

    .line 27
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 28
    const/4 v2, 0x0

    .line 30
    int-to-double v3, v2

    .line 31
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 32
    move-result-object v0

    .line 35
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 36
    int-to-double v3, p2

    .line 38
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 39
    move-result-object v0

    .line 42
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p0

    .line 50
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Landroid/view/View;

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 63
    move-result v3

    .line 66
    if-nez v3, :cond_3

    .line 67
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 70
    move-result v3

    .line 73
    cmpl-float v3, v3, p1

    .line 74
    if-nez v3, :cond_4

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 78
    move-result v3

    .line 81
    int-to-float v4, v2

    .line 82
    cmpl-float v3, v3, v4

    .line 83
    if-nez v3, :cond_4

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 87
    move-result v3

    .line 90
    int-to-float v4, p2

    .line 91
    cmpl-float v3, v3, v4

    .line 92
    if-eqz v3, :cond_2

    .line 94
    :cond_4
    filled-new-array {v1}, [Landroid/view/View;

    .line 96
    move-result-object v1

    .line 99
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 100
    move-result-object v1

    .line 103
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 104
    move-result-object v1

    .line 107
    filled-new-array {p3}, [Lmiuix/animation/base/AnimConfig;

    .line 108
    move-result-object v3

    .line 111
    invoke-interface {v1, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 112
    goto :goto_1

    .line 115
    :cond_5
    return-void
    .line 116
.end method

.method public final attachViews(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;

    .line 13
    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;-><init>()V

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
    .line 24
.end method

.method public final detachView(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 4
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/View;

    .line 23
    filled-new-array {v0}, [Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public final onHide()V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/View;

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 22
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method

.method public final onShow()V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/View;

    .line 20
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public final setAnimFrom(FIZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 7
    const-string v1, "from"

    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 14
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    .line 16
    if-eqz v2, :cond_1

    .line 18
    float-to-double v2, p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    .line 22
    float-to-double v2, v2

    .line 24
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object v0

    .line 28
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 29
    const/4 v2, 0x0

    .line 31
    int-to-double v3, v2

    .line 32
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 33
    move-result-object v0

    .line 36
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 37
    int-to-double v3, p2

    .line 39
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 40
    move-result-object v0

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 51
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    check-cast v1, Landroid/view/View;

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 64
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    if-eqz p3, :cond_3

    .line 71
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 73
    int-to-float v3, v2

    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 77
    int-to-float v3, p2

    .line 80
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 81
    :cond_3
    filled-new-array {v1}, [Landroid/view/View;

    .line 84
    move-result-object v1

    .line 87
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 88
    move-result-object v1

    .line 91
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 92
    move-result-object v1

    .line 95
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 96
    goto :goto_1

    .line 99
    :cond_4
    return-void
    .line 100
.end method

.method public final setVisibility(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/View;

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method
