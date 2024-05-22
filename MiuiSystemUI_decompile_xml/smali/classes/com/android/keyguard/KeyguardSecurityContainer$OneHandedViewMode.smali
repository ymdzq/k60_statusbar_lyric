.class public final Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;


# instance fields
.field public mCurrentSide:I

.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mView$com$android$keyguard$KeyguardSecurityContainer$SidedSecurityMode:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final getTargetSideAccordingTouch(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView$com$android$keyguard$KeyguardSecurityContainer$SidedSecurityMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v0

    .line 15
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 16
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView$com$android$keyguard$KeyguardSecurityContainer$SidedSecurityMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 36
    move-result-object p0

    .line 39
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 40
    const/4 v1, 0x2

    .line 42
    if-ne p0, v1, :cond_1

    .line 43
    int-to-float p0, v0

    .line 45
    const v0, 0x3ec18937    # 0.378f

    .line 46
    mul-float/2addr v0, p0

    .line 49
    cmpg-float v0, p1, v0

    .line 50
    if-gez v0, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    const v0, 0x3f1f3b64    # 0.622f

    .line 55
    mul-float/2addr p0, v0

    .line 58
    cmpl-float p0, p1, p0

    .line 59
    if-lez p0, :cond_3

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    int-to-float p0, v0

    .line 64
    const v0, 0x3ec7ae14    # 0.39f

    .line 65
    mul-float/2addr v0, p0

    .line 68
    cmpg-float v0, p1, v0

    .line 69
    if-gez v0, :cond_2

    .line 71
    :goto_0
    const/4 v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const v0, 0x3f1c28f6    # 0.61f

    .line 75
    mul-float/2addr p0, v0

    .line 78
    cmpl-float p0, p1, p0

    .line 79
    if-lez p0, :cond_3

    .line 81
    goto :goto_1

    .line 83
    :cond_3
    const/4 v1, 0x0

    .line 84
    :goto_1
    return v1
    .line 85
.end method

.method public final handleDoubleTap(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->getTargetSideAccordingTouch(F)I

    .line 6
    move-result p1

    .line 9
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    .line 10
    if-eq v0, p1, :cond_2

    .line 12
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    const/16 v1, 0x8

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x6

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x5

    .line 25
    :goto_0
    const/16 v2, 0x3f

    .line 26
    invoke-static {v2, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(IZ)V

    .line 31
    :cond_2
    return-void
    .line 34
.end method

.method public final init(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityViewFlipper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView$com$android$keyguard$KeyguardSecurityContainer$SidedSecurityMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 6
    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    .line 8
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(IZ)V

    .line 11
    return-void
    .line 14
.end method

.method public final resetAlign()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(IZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final updatePositionByTouchX(F)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->getTargetSideAccordingTouch(F)I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(IZ)V

    .line 7
    return-void
    .line 10
.end method

.method public final updateSecurityViewLocation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(IZ)V

    return-void
.end method

.method public final updateSecurityViewLocation(IZ)V
    .locals 3

    .line 3
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewTransition;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardSecurityViewTransition;-><init>()V

    invoke-static {p2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 5
    :cond_0
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 11
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    .line 13
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 14
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    return-void
.end method
