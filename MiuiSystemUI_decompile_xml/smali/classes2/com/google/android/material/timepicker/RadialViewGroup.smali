.class Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public radius:I

.field public final updateLayoutParametersRunnable:Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0174    # @layout/material_radial_view_group 'res/layout/material_radial_view_group.xml'

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 5
    new-instance v1, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    .line 6
    iget-object v2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 7
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 9
    iput-object v1, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 10
    iput-object v1, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 11
    iput-object v1, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 12
    iput-object v1, v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 13
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v1, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 19
    sget-object v0, Lcom/google/android/material/R$styleable;->RadialViewGroup:[I

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    .line 22
    new-instance p2, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    move-result p2

    .line 8
    const/4 p3, -0x1

    .line 9
    if-ne p2, p3, :cond_0

    .line 10
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->generateViewId()I

    .line 14
    move-result p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    .line 21
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    iget-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    .line 32
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_1
    return-void
    .line 37
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    .line 5
    return-void
    .line 8
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
    .line 11
.end method

.method public final updateLayoutParams()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    const-string/jumbo v4, "skip"

    .line 9
    if-ge v3, v0, :cond_1

    .line 12
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 33
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 35
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 38
    const/4 v5, 0x0

    .line 41
    :goto_1
    if-ge v2, v0, :cond_4

    .line 42
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 48
    move-result v7

    .line 51
    const v8, 0x7f0a01ed    # @id/circle_center

    .line 52
    if-eq v7, v8, :cond_3

    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 57
    move-result-object v7

    .line 60
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v7

    .line 64
    if-eqz v7, :cond_2

    .line 65
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 68
    move-result v6

    .line 71
    iget v7, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    .line 72
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 74
    move-result-object v6

    .line 77
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 78
    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 80
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 82
    iput v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 84
    sub-int v6, v0, v1

    .line 86
    int-to-float v6, v6

    .line 88
    const/high16 v7, 0x43b40000    # 360.0f

    .line 89
    div-float/2addr v7, v6

    .line 91
    add-float/2addr v7, v5

    .line 92
    move v5, v7

    .line 93
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 97
    return-void
    .line 100
.end method
