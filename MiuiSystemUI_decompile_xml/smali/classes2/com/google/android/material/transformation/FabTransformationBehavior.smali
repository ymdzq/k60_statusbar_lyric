.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public dependencyOriginalTranslationX:F

.field public dependencyOriginalTranslationY:F

.field public final tmpArray:[I

.field public final tmpRect:Landroid/graphics/Rect;

.field public final tmpRectF1:Landroid/graphics/RectF;

.field public final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public static calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p0, p0, v0

    .line 3
    if-eqz p0, :cond_4

    .line 5
    cmpl-float p0, p1, v0

    .line 7
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    cmpg-float p1, p1, v0

    .line 14
    if-ltz p1, :cond_2

    .line 16
    :cond_1
    if-nez p2, :cond_3

    .line 18
    if-lez p0, :cond_3

    .line 20
    :cond_2
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 22
    const-string/jumbo p1, "translationXCurveUpwards"

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 27
    move-result-object p0

    .line 30
    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 31
    const-string/jumbo p2, "translationYCurveUpwards"

    .line 33
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 36
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 41
    const-string/jumbo p1, "translationXCurveDownwards"

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 46
    move-result-object p0

    .line 49
    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 50
    const-string/jumbo p2, "translationYCurveDownwards"

    .line 52
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 55
    move-result-object p1

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 60
    const-string/jumbo p1, "translationXLinear"

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 65
    move-result-object p0

    .line 68
    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 69
    const-string/jumbo p2, "translationYLinear"

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 74
    move-result-object p1

    .line 77
    :goto_1
    new-instance p2, Landroid/util/Pair;

    .line 78
    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-object p2
    .line 83
.end method

.method public static calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;F)F
    .locals 6

    .line 1
    iget-wide v0, p1, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 2
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 4
    const-string v2, "expansion"

    .line 6
    invoke-virtual {p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 8
    move-result-object p0

    .line 11
    iget-wide v2, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 12
    iget-wide v4, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 14
    add-long/2addr v2, v4

    .line 16
    const-wide/16 v4, 0x11

    .line 17
    add-long/2addr v2, v4

    .line 19
    sub-long/2addr v2, v0

    .line 20
    long-to-float p0, v2

    .line 21
    iget-wide v0, p1, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 22
    long-to-float v0, v0

    .line 24
    div-float/2addr p0, v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 26
    move-result-object p1

    .line 29
    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 30
    move-result p0

    .line 33
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 34
    const/4 p1, 0x0

    .line 36
    invoke-static {p1, p2, p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 37
    move-result p0

    .line 40
    return p0
    .line 41
.end method


# virtual methods
.method public final calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 9
    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 11
    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 13
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 22
    move-result p0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 26
    move-result p1

    .line 29
    sub-float/2addr p0, p1

    .line 30
    const/4 p1, 0x0

    .line 31
    add-float/2addr p0, p1

    .line 32
    return p0
    .line 33
.end method

.method public final calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 9
    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 11
    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 13
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 22
    move-result p0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 26
    move-result p1

    .line 29
    sub-float/2addr p0, p1

    .line 30
    const/4 p1, 0x0

    .line 31
    add-float/2addr p0, p1

    .line 32
    return p0
    .line 33
.end method

.method public final calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    const/4 v0, 0x0

    .line 21
    aget v0, p0, v0

    .line 22
    int-to-float v0, v0

    .line 24
    const/4 v1, 0x1

    .line 25
    aget p0, p0, v1

    .line 26
    int-to-float p0, p0

    .line 28
    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 32
    move-result p0

    .line 35
    neg-float p0, p0

    .line 36
    float-to-int p0, p0

    .line 37
    int-to-float p0, p0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 39
    move-result p1

    .line 42
    neg-float p1, p1

    .line 43
    float-to-int p1, p1

    .line 44
    int-to-float p1, p1

    .line 45
    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 46
    return-void
    .line 49
.end method

.method public final layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    move-result p0

    .line 5
    const/16 v0, 0x8

    .line 6
    if-eq p0, v0, :cond_2

    .line 8
    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    move-result p1

    .line 25
    if-ne p0, p1, :cond_1

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    .line 39
.end method

.method public final onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 1
    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/16 p0, 0x50

    .line 6
    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 8
    :cond_0
    return-void
    .line 10
.end method

.method public final onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v4

    .line 13
    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    .line 14
    move-result-object v4

    .line 17
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    .line 20
    move-result v5

    .line 23
    iput v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 26
    move-result v5

    .line 29
    iput v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 30
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 42
    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    .line 44
    move-result v7

    .line 47
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    .line 48
    move-result v8

    .line 51
    sub-float/2addr v7, v8

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x1

    .line 54
    const/4 v10, 0x0

    .line 55
    if-eqz v3, :cond_2

    .line 56
    if-nez p4, :cond_1

    .line 58
    neg-float v7, v7

    .line 60
    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 61
    :cond_1
    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 64
    new-array v11, v9, [F

    .line 66
    aput v8, v11, v10

    .line 68
    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 70
    move-result-object v7

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 75
    new-array v12, v9, [F

    .line 77
    neg-float v7, v7

    .line 79
    aput v7, v12, v10

    .line 80
    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 82
    move-result-object v7

    .line 85
    :goto_0
    iget-object v11, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 86
    const-string v12, "elevation"

    .line 88
    invoke-virtual {v11, v12}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 90
    move-result-object v11

    .line 93
    invoke-virtual {v11, v7}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 94
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 100
    iget-object v11, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 102
    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 104
    move-result v11

    .line 107
    iget-object v12, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 108
    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 110
    move-result v12

    .line 113
    invoke-static {v11, v12, v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    .line 114
    move-result-object v13

    .line 117
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    check-cast v14, Lcom/google/android/material/animation/MotionTiming;

    .line 120
    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    check-cast v13, Lcom/google/android/material/animation/MotionTiming;

    .line 124
    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 126
    iget-object v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 128
    if-eqz v3, :cond_4

    .line 130
    if-nez p4, :cond_3

    .line 132
    neg-float v10, v11

    .line 134
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 135
    neg-float v10, v12

    .line 138
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    :cond_3
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 142
    move-object/from16 v18, v6

    .line 144
    new-array v6, v9, [F

    .line 146
    const/16 v16, 0x0

    .line 148
    const/16 v17, 0x0

    .line 150
    aput v16, v6, v17

    .line 152
    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 154
    move-result-object v6

    .line 157
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 158
    move-object/from16 v19, v6

    .line 160
    new-array v6, v9, [F

    .line 162
    aput v16, v6, v17

    .line 164
    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 166
    move-result-object v6

    .line 169
    neg-float v10, v11

    .line 170
    neg-float v11, v12

    .line 171
    invoke-static {v4, v14, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;F)F

    .line 172
    move-result v10

    .line 175
    invoke-static {v4, v13, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;F)F

    .line 176
    move-result v11

    .line 179
    invoke-virtual {v2, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 180
    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 186
    invoke-virtual {v15, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 189
    invoke-virtual {v15, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 192
    invoke-virtual {v7, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 195
    move-object v10, v6

    .line 198
    move-object/from16 v6, v19

    .line 199
    goto :goto_1

    .line 201
    :cond_4
    move-object/from16 v18, v6

    .line 202
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 204
    new-array v10, v9, [F

    .line 206
    neg-float v11, v11

    .line 208
    const/16 v17, 0x0

    .line 209
    aput v11, v10, v17

    .line 211
    invoke-static {v2, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 213
    move-result-object v6

    .line 216
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 217
    new-array v11, v9, [F

    .line 219
    neg-float v12, v12

    .line 221
    aput v12, v11, v17

    .line 222
    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 224
    move-result-object v10

    .line 227
    :goto_1
    invoke-virtual {v14, v6}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 228
    invoke-virtual {v13, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 231
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 240
    move-result v6

    .line 243
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 244
    move-result v10

    .line 247
    iget-object v11, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 248
    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 250
    move-result v11

    .line 253
    iget-object v12, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 254
    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 256
    move-result v12

    .line 259
    invoke-static {v11, v12, v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    .line 260
    move-result-object v13

    .line 263
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 264
    check-cast v14, Lcom/google/android/material/animation/MotionTiming;

    .line 266
    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 268
    check-cast v13, Lcom/google/android/material/animation/MotionTiming;

    .line 270
    move/from16 v19, v11

    .line 272
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 274
    move/from16 v20, v12

    .line 276
    new-array v12, v9, [F

    .line 278
    if-eqz v3, :cond_5

    .line 280
    move/from16 v9, v19

    .line 282
    goto :goto_2

    .line 284
    :cond_5
    iget v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 285
    :goto_2
    const/16 v17, 0x0

    .line 287
    aput v9, v12, v17

    .line 289
    invoke-static {v1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 291
    move-result-object v9

    .line 294
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 295
    move/from16 v21, v6

    .line 297
    const/4 v12, 0x1

    .line 299
    new-array v6, v12, [F

    .line 300
    if-eqz v3, :cond_6

    .line 302
    move/from16 v12, v20

    .line 304
    goto :goto_3

    .line 306
    :cond_6
    iget v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 307
    :goto_3
    aput v12, v6, v17

    .line 309
    invoke-static {v1, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 311
    move-result-object v6

    .line 314
    invoke-virtual {v14, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 315
    invoke-virtual {v13, v6}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 318
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    instance-of v6, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 327
    if-eqz v6, :cond_b

    .line 329
    instance-of v9, v1, Landroid/widget/ImageView;

    .line 331
    if-nez v9, :cond_7

    .line 333
    goto :goto_5

    .line 335
    :cond_7
    move-object v9, v2

    .line 336
    check-cast v9, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 337
    move-object v11, v1

    .line 339
    check-cast v11, Landroid/widget/ImageView;

    .line 340
    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 342
    move-result-object v11

    .line 345
    if-nez v11, :cond_8

    .line 346
    goto :goto_5

    .line 348
    :cond_8
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 349
    const/16 v12, 0xff

    .line 352
    if-eqz v3, :cond_a

    .line 354
    if-nez p4, :cond_9

    .line 356
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 358
    :cond_9
    sget-object v12, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lcom/google/android/material/animation/DrawableAlphaProperty;

    .line 361
    const/4 v13, 0x0

    .line 363
    filled-new-array {v13}, [I

    .line 364
    move-result-object v14

    .line 367
    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 368
    move-result-object v12

    .line 371
    goto :goto_4

    .line 372
    :cond_a
    sget-object v13, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lcom/google/android/material/animation/DrawableAlphaProperty;

    .line 373
    filled-new-array {v12}, [I

    .line 375
    move-result-object v12

    .line 378
    invoke-static {v11, v13, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 379
    move-result-object v12

    .line 382
    :goto_4
    new-instance v13, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    .line 383
    invoke-direct {v13, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Landroid/view/View;)V

    .line 385
    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    iget-object v13, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 391
    const-string v14, "iconFade"

    .line 393
    invoke-virtual {v13, v14}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 395
    move-result-object v13

    .line 398
    invoke-virtual {v13, v12}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 399
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v12, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    .line 405
    invoke-direct {v12, v9, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    .line 407
    move-object/from16 v9, v18

    .line 410
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    goto :goto_6

    .line 415
    :cond_b
    :goto_5
    move-object/from16 v9, v18

    .line 416
    :goto_6
    if-nez v6, :cond_c

    .line 418
    move-object/from16 v20, v4

    .line 420
    move/from16 v18, v6

    .line 422
    move-object v3, v9

    .line 424
    goto/16 :goto_9

    .line 425
    :cond_c
    move-object v11, v2

    .line 427
    check-cast v11, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 428
    iget-object v12, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 430
    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 432
    iget v13, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 435
    iget v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 437
    invoke-virtual {v7, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 439
    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 442
    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 445
    move-result v12

    .line 448
    neg-float v12, v12

    .line 449
    const/4 v13, 0x0

    .line 450
    invoke-virtual {v15, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 451
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    .line 454
    move-result v12

    .line 457
    iget v13, v15, Landroid/graphics/RectF;->left:F

    .line 458
    sub-float/2addr v12, v13

    .line 460
    iget-object v13, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 461
    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 463
    iget v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 466
    move/from16 v18, v6

    .line 468
    iget v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 470
    invoke-virtual {v7, v14, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 472
    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 475
    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    .line 478
    move-result v0

    .line 481
    neg-float v0, v0

    .line 482
    const/4 v6, 0x0

    .line 483
    invoke-virtual {v15, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 484
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    .line 487
    move-result v0

    .line 490
    iget v6, v15, Landroid/graphics/RectF;->top:F

    .line 491
    sub-float/2addr v0, v6

    .line 493
    move-object v6, v1

    .line 494
    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 495
    invoke-static {v6}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 497
    move-result v7

    .line 500
    if-eqz v7, :cond_d

    .line 501
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    .line 503
    move-result v7

    .line 506
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getHeight()I

    .line 507
    move-result v13

    .line 510
    const/4 v14, 0x0

    .line 511
    invoke-virtual {v8, v14, v14, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 512
    invoke-virtual {v6, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    .line 515
    :cond_d
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 518
    move-result v6

    .line 521
    int-to-float v6, v6

    .line 522
    const/high16 v7, 0x40000000    # 2.0f

    .line 523
    div-float/2addr v6, v7

    .line 525
    iget-object v7, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 526
    const-string v8, "expansion"

    .line 528
    invoke-virtual {v7, v8}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 530
    move-result-object v7

    .line 533
    if-eqz v3, :cond_11

    .line 534
    if-nez p4, :cond_e

    .line 536
    new-instance v8, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 538
    invoke-direct {v8, v12, v0, v6}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    .line 540
    invoke-interface {v11, v8}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 543
    :cond_e
    if-eqz p4, :cond_f

    .line 546
    invoke-interface {v11}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 548
    move-result-object v6

    .line 551
    iget v6, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 552
    :cond_f
    move/from16 v8, v21

    .line 554
    invoke-static {v12, v0, v8, v10}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFF)F

    .line 556
    move-result v8

    .line 559
    invoke-static {v11, v12, v0, v8}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    .line 560
    move-result-object v8

    .line 563
    new-instance v10, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    .line 564
    invoke-direct {v10, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    .line 566
    invoke-virtual {v8, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    iget-wide v13, v7, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 572
    float-to-int v10, v12

    .line 574
    float-to-int v0, v0

    .line 575
    move-object/from16 p0, v8

    .line 576
    move-object v15, v9

    .line 578
    const-wide/16 v8, 0x0

    .line 579
    cmp-long v12, v13, v8

    .line 581
    if-lez v12, :cond_10

    .line 583
    invoke-static {v2, v10, v0, v6, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 585
    move-result-object v0

    .line 588
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 589
    invoke-virtual {v0, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 592
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_10
    move-object/from16 v8, p0

    .line 598
    move-object/from16 v20, v4

    .line 600
    move-object/from16 v22, v11

    .line 602
    goto/16 :goto_8

    .line 604
    :cond_11
    move-object v15, v9

    .line 606
    invoke-interface {v11}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 607
    move-result-object v8

    .line 610
    iget v8, v8, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 611
    invoke-static {v11, v12, v0, v6}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    .line 613
    move-result-object v9

    .line 616
    iget-wide v13, v7, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 617
    float-to-int v10, v12

    .line 619
    float-to-int v0, v0

    .line 620
    move-object/from16 v22, v11

    .line 621
    const-wide/16 v11, 0x0

    .line 623
    cmp-long v20, v13, v11

    .line 625
    if-lez v20, :cond_12

    .line 627
    invoke-static {v2, v10, v0, v8, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 629
    move-result-object v8

    .line 632
    invoke-virtual {v8, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 633
    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 636
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_12
    iget-object v8, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 642
    iget-object v8, v8, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    .line 644
    iget v13, v8, Landroidx/collection/SimpleArrayMap;->size:I

    .line 646
    const/4 v14, 0x0

    .line 648
    :goto_7
    if-ge v14, v13, :cond_13

    .line 649
    invoke-virtual {v8, v14}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 651
    move-result-object v20

    .line 654
    move-object/from16 v21, v8

    .line 655
    move-object/from16 v8, v20

    .line 657
    check-cast v8, Lcom/google/android/material/animation/MotionTiming;

    .line 659
    move-object/from16 v20, v4

    .line 661
    iget-wide v3, v8, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 663
    move-object/from16 p0, v9

    .line 665
    iget-wide v8, v8, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 667
    add-long/2addr v3, v8

    .line 669
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 670
    move-result-wide v11

    .line 673
    add-int/lit8 v14, v14, 0x1

    .line 674
    move-object/from16 v9, p0

    .line 676
    move/from16 v3, p3

    .line 678
    move-object/from16 v4, v20

    .line 680
    move-object/from16 v8, v21

    .line 682
    goto :goto_7

    .line 684
    :cond_13
    move-object/from16 v20, v4

    .line 685
    move-object/from16 p0, v9

    .line 687
    iget-wide v3, v7, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 689
    iget-wide v8, v7, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 691
    add-long/2addr v3, v8

    .line 693
    cmp-long v8, v3, v11

    .line 694
    if-gez v8, :cond_14

    .line 696
    invoke-static {v2, v10, v0, v6, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 698
    move-result-object v0

    .line 701
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 702
    sub-long/2addr v11, v3

    .line 705
    invoke-virtual {v0, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 706
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_14
    move-object/from16 v8, p0

    .line 712
    :goto_8
    invoke-virtual {v7, v8}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 714
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;

    .line 720
    move-object/from16 v3, v22

    .line 722
    invoke-direct {v0, v3}, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    .line 724
    move-object v3, v15

    .line 727
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :goto_9
    if-nez v18, :cond_15

    .line 731
    move/from16 v7, p3

    .line 733
    move-object/from16 v4, v20

    .line 735
    goto :goto_c

    .line 737
    :cond_15
    move-object v0, v2

    .line 738
    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 739
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 741
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 743
    move-result-object v4

    .line 746
    if-eqz v4, :cond_16

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    .line 749
    move-result-object v6

    .line 752
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 753
    move-result v7

    .line 756
    invoke-virtual {v4, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 757
    move-result v4

    .line 760
    goto :goto_a

    .line 761
    :cond_16
    const/4 v4, 0x0

    .line 762
    :goto_a
    const v6, 0xffffff

    .line 763
    and-int/2addr v6, v4

    .line 766
    move/from16 v7, p3

    .line 767
    if-eqz v7, :cond_18

    .line 769
    if-nez p4, :cond_17

    .line 771
    invoke-interface {v0, v4}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 773
    :cond_17
    sget-object v4, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    .line 776
    filled-new-array {v6}, [I

    .line 778
    move-result-object v6

    .line 781
    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 782
    move-result-object v0

    .line 785
    goto :goto_b

    .line 786
    :cond_18
    sget-object v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    .line 787
    filled-new-array {v4}, [I

    .line 789
    move-result-object v4

    .line 792
    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 793
    move-result-object v0

    .line 796
    :goto_b
    sget-object v4, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    .line 797
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 799
    move-object/from16 v4, v20

    .line 802
    iget-object v6, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 804
    const-string v8, "color"

    .line 806
    invoke-virtual {v6, v8}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 808
    move-result-object v6

    .line 811
    invoke-virtual {v6, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 812
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :goto_c
    instance-of v0, v2, Landroid/view/ViewGroup;

    .line 818
    if-nez v0, :cond_19

    .line 820
    goto :goto_f

    .line 822
    :cond_19
    const v6, 0x7f0a0660    # @id/mtrl_child_content_container

    .line 823
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 826
    move-result-object v6

    .line 829
    const/4 v8, 0x0

    .line 830
    if-eqz v6, :cond_1a

    .line 831
    instance-of v0, v6, Landroid/view/ViewGroup;

    .line 833
    if-eqz v0, :cond_1d

    .line 835
    move-object v8, v6

    .line 837
    check-cast v8, Landroid/view/ViewGroup;

    .line 838
    goto :goto_e

    .line 840
    :cond_1a
    instance-of v6, v2, Lcom/google/android/material/transformation/TransformationChildLayout;

    .line 841
    if-nez v6, :cond_1c

    .line 843
    instance-of v6, v2, Lcom/google/android/material/transformation/TransformationChildCard;

    .line 845
    if-eqz v6, :cond_1b

    .line 847
    goto :goto_d

    .line 849
    :cond_1b
    if-eqz v0, :cond_1d

    .line 850
    move-object v8, v2

    .line 852
    check-cast v8, Landroid/view/ViewGroup;

    .line 853
    goto :goto_e

    .line 855
    :cond_1c
    :goto_d
    move-object v0, v2

    .line 856
    check-cast v0, Landroid/view/ViewGroup;

    .line 857
    const/4 v6, 0x0

    .line 859
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 860
    move-result-object v0

    .line 863
    instance-of v6, v0, Landroid/view/ViewGroup;

    .line 864
    if-eqz v6, :cond_1d

    .line 866
    move-object v8, v0

    .line 868
    check-cast v8, Landroid/view/ViewGroup;

    .line 869
    :cond_1d
    :goto_e
    if-nez v8, :cond_1e

    .line 871
    :goto_f
    const/4 v10, 0x0

    .line 873
    goto :goto_11

    .line 874
    :cond_1e
    if-eqz v7, :cond_20

    .line 875
    if-nez p4, :cond_1f

    .line 877
    sget-object v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    .line 879
    const/4 v6, 0x0

    .line 881
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 882
    move-result-object v6

    .line 885
    invoke-virtual {v0, v8, v6}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    :cond_1f
    sget-object v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    .line 889
    const/4 v6, 0x1

    .line 891
    new-array v6, v6, [F

    .line 892
    const/high16 v9, 0x3f800000    # 1.0f

    .line 894
    const/4 v10, 0x0

    .line 896
    aput v9, v6, v10

    .line 897
    invoke-static {v8, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 899
    move-result-object v0

    .line 902
    goto :goto_10

    .line 903
    :cond_20
    const/4 v6, 0x1

    .line 904
    const/4 v10, 0x0

    .line 905
    sget-object v0, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    .line 906
    new-array v6, v6, [F

    .line 908
    const/4 v9, 0x0

    .line 910
    aput v9, v6, v10

    .line 911
    invoke-static {v8, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 913
    move-result-object v0

    .line 916
    :goto_10
    iget-object v4, v4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 917
    const-string v6, "contentFade"

    .line 919
    invoke-virtual {v4, v6}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    .line 921
    move-result-object v4

    .line 924
    invoke-virtual {v4, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 925
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :goto_11
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 931
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 933
    invoke-static {v0, v5}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 936
    new-instance v4, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    .line 939
    invoke-direct {v4, v7, v2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    .line 941
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 944
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 947
    move-result v1

    .line 950
    :goto_12
    if-ge v10, v1, :cond_21

    .line 951
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 953
    move-result-object v2

    .line 956
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 957
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 959
    add-int/lit8 v10, v10, 0x1

    .line 962
    goto :goto_12

    .line 964
    :cond_21
    return-object v0
    .line 965
.end method

.method public abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
