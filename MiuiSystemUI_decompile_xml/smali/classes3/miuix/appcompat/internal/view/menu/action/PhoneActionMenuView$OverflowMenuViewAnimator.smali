.class public final Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCollapseAnimator:Landroid/animation/AnimatorSet;

.field public mExpandAnimator:Landroid/animation/AnimatorSet;

.field public overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 8
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 13
    const/4 v2, 0x2

    .line 15
    new-array v3, v2, [F

    .line 16
    fill-array-data v3, :array_0

    .line 18
    const-string v4, "Value"

    .line 21
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 30
    invoke-direct {v3, p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v3, v3, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 35
    filled-new-array {v1, v3}, [Landroid/animation/Animator;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 44
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 49
    const/high16 v3, 0x10e0000    # @android:integer/config_shortAnimTime

    .line 50
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 52
    move-result v1

    .line 55
    int-to-long v5, v1

    .line 56
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 57
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 60
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 71
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 73
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 75
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 78
    new-array v2, v2, [F

    .line 80
    fill-array-data v2, :array_1

    .line 82
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 85
    move-result-object v1

    .line 88
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 89
    const/4 v4, 0x0

    .line 91
    invoke-direct {v2, p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 95
    filled-new-array {v1, p1}, [Landroid/animation/Animator;

    .line 97
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 101
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 104
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p1

    .line 109
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 110
    move-result p1

    .line 113
    int-to-long v1, p1

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 115
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 118
    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 120
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 129
    :cond_0
    return-void

    .line 131
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 132
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 140
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 2
    iget-object v0, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 4
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 6
    if-eq v0, v1, :cond_2

    .line 8
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 19
    if-ne v0, v1, :cond_3

    .line 21
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setValue(F)V

    .line 25
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 29
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setValue(F)V

    .line 34
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 38
    :cond_3
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 41
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    .line 43
    return-void
    .line 46
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 2
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 4
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 8
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    cmpl-float p1, p1, v0

    .line 13
    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 17
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 19
    iput-object v0, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 21
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 28
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 32
    move-result p1

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 36
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 38
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    cmpl-float p1, p1, v0

    .line 43
    if-nez p1, :cond_1

    .line 45
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 47
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 49
    iput-object v0, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 51
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 57
    iget-object v0, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 59
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    .line 68
    return-void
    .line 71
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 4
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 10
    move-result-object p0

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final reverse()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "android.animation.AnimatorSet"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "reverse"

    .line 8
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 17
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 32
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 40
    new-array v1, v2, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v0, "PhoneActionMenuView"

    .line 49
    const-string v1, "reverse: "

    .line 51
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_1
    :goto_0
    return-void
    .line 56
.end method

.method public final setContentViewImportantForAccessibility(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 17
    move-result-object p0

    .line 20
    const/4 p1, 0x4

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method
