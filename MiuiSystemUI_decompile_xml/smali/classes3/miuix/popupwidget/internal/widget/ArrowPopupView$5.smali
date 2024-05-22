.class public final Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 11
    iget-object v0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 17
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 20
    iget-object v0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 26
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 29
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 31
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 34
    iput-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 37
    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [F

    .line 40
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 42
    invoke-virtual {v1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    .line 44
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 47
    const v4, 0x3f19999a    # 0.6f

    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    .line 52
    const v6, 0x3f19999a    # 0.6f

    .line 54
    const/high16 v7, 0x3f800000    # 1.0f

    .line 57
    const/4 v8, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    aget v9, v0, v3

    .line 61
    const/4 v10, 0x0

    .line 63
    aget v11, v0, v2

    .line 64
    move-object v3, v1

    .line 66
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 67
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 70
    const/4 v3, 0x0

    .line 72
    const/high16 v4, 0x3f800000    # 1.0f

    .line 73
    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 75
    const-wide/16 v3, 0x64

    .line 78
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 80
    const-wide/16 v3, 0x118

    .line 83
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 85
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 88
    iget-object v3, v3, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 90
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 95
    iget-object v1, v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 97
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 102
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 104
    iget-object v0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;

    .line 106
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 111
    iget-object v0, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 113
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 115
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 117
    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 125
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    return v2
    .line 132
.end method
