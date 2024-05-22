.class public final Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDismissAnimator:Landroid/animation/ValueAnimator;

.field public final mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

.field public final mMagnetizedObject:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$2;

.field public final mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

.field public mMinDismissSize:F

.field public mSizePercent:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/DismissView;Lcom/android/systemui/accessibility/floatingmenu/MenuView;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 7
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    div-float/2addr v0, v1

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 18
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    div-float/2addr v0, v1

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 24
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->updateResources()V

    .line 29
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [F

    .line 33
    fill-array-data v0, :array_0

    .line 35
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 42
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;Lcom/android/wm/shell/bubbles/DismissView;Lcom/android/systemui/accessibility/floatingmenu/MenuView;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;

    .line 52
    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$2;

    .line 60
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 65
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;

    .line 66
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 68
    invoke-direct {v2, v3}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 70
    new-instance v3, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;

    .line 73
    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 75
    invoke-direct {v3, v4}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 77
    invoke-direct {v0, v1, p2, v2, v3}, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$2;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/MenuView;Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;)V

    .line 80
    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mMagnetizedObject:Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController$2;

    .line 83
    new-instance p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 85
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 87
    move-result-object p1

    .line 90
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mMinDismissSize:F

    .line 91
    float-to-int p0, p0

    .line 93
    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(ILcom/android/wm/shell/common/DismissCircleView;)V

    .line 94
    iget-object p0, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    .line 102
    invoke-direct {p0, p2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    const/4 p0, 0x0

    .line 110
    iput-boolean p0, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    .line 111
    return-void

    .line 113
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 114
.end method


# virtual methods
.method public final updateResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f0702cc    # @dimen/dismiss_circle_size '96.0dp'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    const v2, 0x7f0702cd    # @dimen/dismiss_circle_small '60.0dp'

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mMinDismissSize:F

    .line 28
    div-float/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/DismissAnimationController;->mSizePercent:F

    .line 31
    return-void
    .line 33
.end method
