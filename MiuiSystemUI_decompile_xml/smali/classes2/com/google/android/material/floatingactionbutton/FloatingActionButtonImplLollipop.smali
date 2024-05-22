.class public final Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public stateListAnimator:Landroid/animation/StateListAnimator;


# virtual methods
.method public final createElevationAnimator(FF)Landroid/animation/Animator;
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [F

    .line 8
    const/4 v3, 0x0

    .line 10
    aput p1, v2, v3

    .line 11
    const-string p1, "elevation"

    .line 13
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 17
    move-result-object p1

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 27
    move-result-object p1

    .line 30
    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 31
    new-array v1, v1, [F

    .line 33
    aput p2, v1, v3

    .line 35
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 37
    move-result-object p0

    .line 40
    const-wide/16 v1, 0x64

    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 47
    sget-object p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    .line 50
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    return-object v0
    .line 55
.end method

.method public final createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 9
    return-object v0
    .line 12
.end method

.method public final getElevation()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getElevation()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getPadding(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 10
    goto :goto_2

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    .line 14
    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 17
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 21
    move-result v0

    .line 24
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    .line 25
    if-lt v0, v3, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 32
    :goto_1
    if-nez v0, :cond_3

    .line 33
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    .line 35
    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 37
    move-result v0

    .line 40
    sub-int/2addr p0, v0

    .line 41
    div-int/lit8 p0, p0, 0x2

    .line 42
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    :goto_2
    return-void
    .line 51
.end method

.method public final initializeBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    if-eqz p2, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 13
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 18
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {p2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 26
    const/4 p2, 0x0

    .line 29
    if-lez p4, :cond_3

    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 35
    new-instance v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 36
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {v1, v2}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 43
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 46
    const v2, 0x7f060105    # @color/design_fab_stroke_top_outer_color '#2effffff'

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 51
    move-result v2

    .line 54
    const v3, 0x7f060104    # @color/design_fab_stroke_top_inner_color '#1affffff'

    .line 55
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 58
    move-result v3

    .line 61
    const v4, 0x7f060102    # @color/design_fab_stroke_end_inner_color '#0a000000'

    .line 62
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 65
    move-result v4

    .line 68
    const v5, 0x7f060103    # @color/design_fab_stroke_end_outer_color '#0f000000'

    .line 69
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 72
    move-result v0

    .line 75
    iput v2, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    .line 76
    iput v3, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    .line 78
    iput v4, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    .line 80
    iput v0, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    .line 82
    int-to-float p4, p4

    .line 84
    iget v0, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 85
    cmpl-float v0, v0, p4

    .line 87
    const/4 v2, 0x1

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iput p4, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 92
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Landroid/graphics/Paint;

    .line 94
    const v3, 0x3faaa993    # 1.3333f

    .line 96
    mul-float/2addr p4, v3

    .line 99
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iput-boolean v2, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 103
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 110
    move-result-object p4

    .line 113
    iget v0, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 114
    invoke-virtual {p1, p4, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 116
    move-result p4

    .line 119
    iput p4, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 120
    :cond_2
    iput-object p1, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    .line 122
    iput-boolean v2, v1, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 124
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 126
    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 129
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 131
    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 133
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    filled-new-array {p4, v0}, [Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object p4

    .line 146
    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 147
    goto :goto_0

    .line 150
    :cond_3
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 151
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 153
    :goto_0
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    .line 155
    invoke-static {p3}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 157
    move-result-object p3

    .line 160
    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
    .line 168
.end method

.method public final jumpDrawableToCurrentState()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onCompatShadowChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDrawableStateChanged([I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onElevationsChanged(FFF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getStateListAnimator()Landroid/animation/StateListAnimator;

    .line 4
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->stateListAnimator:Landroid/animation/StateListAnimator;

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 12
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 17
    move-result-object p3

    .line 20
    sget-object v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 21
    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 26
    move-result-object p3

    .line 29
    sget-object v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 30
    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 35
    move-result-object p3

    .line 38
    sget-object v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 39
    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 44
    move-result-object p2

    .line 47
    sget-object p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    .line 48
    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 50
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 53
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 55
    new-instance p3, Ljava/util/ArrayList;

    .line 58
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const/4 v2, 0x1

    .line 63
    new-array v3, v2, [F

    .line 64
    const/4 v4, 0x0

    .line 66
    aput p1, v3, v4

    .line 67
    const-string p1, "elevation"

    .line 69
    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    move-result-object p1

    .line 74
    const-wide/16 v5, 0x0

    .line 75
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 84
    new-array v2, v2, [F

    .line 86
    const/4 v3, 0x0

    .line 88
    aput v3, v2, v4

    .line 89
    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 91
    move-result-object p1

    .line 94
    const-wide/16 v5, 0x64

    .line 95
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    move-result-object p1

    .line 100
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-array p1, v4, [Landroid/animation/Animator;

    .line 104
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 109
    check-cast p1, [Landroid/animation/Animator;

    .line 110
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 112
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    .line 115
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    sget-object p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 120
    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 122
    invoke-virtual {p0, v3, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    .line 125
    move-result-object p1

    .line 128
    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    .line 129
    invoke-virtual {v1, p2, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 131
    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->stateListAnimator:Landroid/animation/StateListAnimator;

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldAddPadding()Z

    .line 139
    move-result p1

    .line 142
    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 145
    :cond_1
    return-void
    .line 148
.end method

.method public final setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 8
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 18
    :goto_0
    return-void
    .line 21
.end method

.method public final shouldAddPadding()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 6
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    .line 11
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    .line 18
    move-result v0

    .line 21
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    .line 22
    if-lt v0, p0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move p0, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move p0, v1

    .line 29
    :goto_1
    if-nez p0, :cond_2

    .line 30
    goto :goto_2

    .line 32
    :cond_2
    move v1, v2

    .line 33
    :cond_3
    :goto_2
    return v1
    .line 34
.end method

.method public final updateFromViewRotation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
