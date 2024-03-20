.class public final Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final mHideAnimator:Landroid/animation/ObjectAnimator;

.field public final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mShowAnimator:Landroid/animation/ObjectAnimator;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 7
    iget-object p2, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 9
    const/4 v0, 0x2

    .line 11
    new-array v1, v0, [F

    .line 12
    fill-array-data v1, :array_0

    .line 14
    const-string v2, "alpha"

    .line 17
    invoke-static {p2, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object p2

    .line 22
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 23
    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 28
    new-array p2, v0, [F

    .line 30
    fill-array-data p2, :array_1

    .line 32
    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 54
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 12
    if-ne p1, v1, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 16
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 21
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 12
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    cmpl-float p1, p1, v0

    .line 17
    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 21
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 23
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 25
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 28
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 36
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 38
    const/16 p1, 0x8

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 12
    if-ne p1, v0, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 20
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 27
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 29
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 34
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 36
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method
