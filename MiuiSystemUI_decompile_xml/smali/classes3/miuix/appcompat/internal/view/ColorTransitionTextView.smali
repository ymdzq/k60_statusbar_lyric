.class public Lmiuix/appcompat/internal/view/ColorTransitionTextView;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public hasTransitedColor:Z

.field public mAnimateColor:I

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mNormalColor:I

.field public mOriginColor:Landroid/content/res/ColorStateList;

.field public mTransitedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->setupColors()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimateColor:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 22
    return-void

    .line 25
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 26
    return-void
    .line 29
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->setupColors()V

    .line 5
    return-void
    .line 8
.end method

.method public final setupColors()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 6
    sget-object v1, Landroid/widget/TextView;->ENABLED_STATE_SET:[I

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v2

    .line 13
    const v3, 0x7f0603f5    # @color/miuix_appcompat_action_bar_title_text_color_light '#cc000000'

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 21
    move-result v0

    .line 24
    iput v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 27
    sget-object v2, Landroid/widget/TextView;->ENABLED_SELECTED_STATE_SET:[I

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 31
    move-result v0

    .line 34
    iput v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 35
    iget v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 37
    if-eq v1, v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 42
    :cond_0
    return-void
    .line 44
.end method

.method public final startColorTransition(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 15
    return-void
    .line 18
.end method
