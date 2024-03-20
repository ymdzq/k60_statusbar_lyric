.class public final Lcom/google/android/material/card/MaterialCardViewHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final COS_45:D


# instance fields
.field public final bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public checkable:Z

.field public checkedIcon:Landroid/graphics/drawable/Drawable;

.field public checkedIconGravity:I

.field public checkedIconMargin:I

.field public checkedIconSize:I

.field public checkedIconTint:Landroid/content/res/ColorStateList;

.field public clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field public fgDrawable:Landroid/graphics/drawable/Drawable;

.field public final foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public isBackgroundOverwritten:Z

.field public final materialCardView:Lcom/google/android/material/card/MaterialCardView;

.field public rippleColor:Landroid/content/res/ColorStateList;

.field public rippleDrawable:Landroid/graphics/drawable/Drawable;

.field public shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public strokeColor:Landroid/content/res/ColorStateList;

.field public strokeWidth:I

.field public final userContentPadding:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 11
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 15
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    const v2, 0x7f1407e5    # @style/Widget.MaterialComponents.CardView

    .line 23
    invoke-direct {v0, v1, p2, p3, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 29
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor()V

    .line 38
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 41
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 48
    invoke-direct {v1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 50
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 53
    move-result-object p1

    .line 56
    sget-object v0, Lcom/google/android/material/R$styleable;->CardView:[I

    .line 57
    const v2, 0x7f14015c    # @style/CardView

    .line 59
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 62
    move-result-object p1

    .line 65
    const/4 p2, 0x3

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 67
    move-result p3

    .line 70
    if-eqz p3, :cond_0

    .line 71
    const/4 p3, 0x0

    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 74
    move-result p2

    .line 77
    invoke-virtual {v1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)V

    .line 78
    :cond_0
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 81
    invoke-direct {p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 86
    new-instance p2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 88
    invoke-direct {p2, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
    .line 99
.end method

.method public static calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    .line 8
    sub-double/2addr v0, v2

    .line 10
    float-to-double p0, p1

    .line 11
    mul-double/2addr v0, p0

    .line 12
    double-to-float p0, v0

    .line 13
    return p0

    .line 14
    :cond_0
    instance-of p0, p0, Lcom/google/android/material/shape/CutCornerTreatment;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    const/high16 p0, 0x40000000    # 2.0f

    .line 19
    div-float/2addr p1, p0

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
    .line 24
.end method


# virtual methods
.method public final calculateActualCornerPadding()F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    .line 8
    move-result v2

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 12
    move-result v0

    .line 15
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 16
    iget-object v2, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 18
    iget-object v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 20
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 22
    iget-object v3, v3, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 26
    move-result-object v4

    .line 29
    invoke-interface {v3, v4}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 30
    move-result v3

    .line 33
    invoke-static {v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 34
    move-result v2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 38
    move-result v0

    .line 41
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 42
    iget-object v2, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 44
    iget-object v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 46
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 48
    iget-object v3, v3, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 52
    move-result-object v4

    .line 55
    invoke-interface {v3, v4}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 56
    move-result v3

    .line 59
    invoke-static {v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 60
    move-result v2

    .line 63
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 64
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 66
    iget-object v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 68
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 70
    iget-object v3, v3, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 72
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 74
    move-result-object v1

    .line 77
    invoke-interface {v3, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 78
    move-result v1

    .line 81
    invoke-static {p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateCornerPaddingForCornerTreatment(Lcom/google/android/material/shape/CornerTreatment;F)F

    .line 82
    move-result p0

    .line 85
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 86
    move-result p0

    .line 89
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 90
    move-result p0

    .line 93
    return p0
    .line 94
.end method

.method public final getClickableForeground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 6
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 10
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 13
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 15
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 17
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 19
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 22
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 27
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 31
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 35
    iget-object v3, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    filled-new-array {v1, v2, v3}, [Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 43
    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 46
    const/4 v1, 0x2

    .line 48
    const v2, 0x7f0a065f    # @id/mtrl_card_checked_layer_id

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 55
    return-object p0
    .line 57
.end method

.method public final insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 10
    move-result v1

    .line 13
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 14
    mul-float/2addr v1, v2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 17
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 24
    move-result v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_0
    add-float/2addr v1, v2

    .line 30
    float-to-double v1, v1

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 32
    move-result-wide v1

    .line 35
    double-to-int v1, v1

    .line 36
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 37
    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 47
    move-result v3

    .line 50
    :cond_1
    add-float/2addr v0, v3

    .line 51
    float-to-double v2, v0

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 53
    move-result-wide v2

    .line 56
    double-to-int p0, v2

    .line 57
    move v6, p0

    .line 58
    move v7, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    move v6, v1

    .line 62
    move v7, v6

    .line 63
    :goto_1
    new-instance p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;

    .line 64
    move-object v2, p0

    .line 66
    move-object v3, p1

    .line 67
    move v4, v6

    .line 68
    move v5, v7

    .line 69
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/card/MaterialCardViewHelper$1;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 70
    return-object p0
    .line 73
.end method

.method public final recalculateCheckedIconPosition(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 4
    if-eqz v1, :cond_c

    .line 6
    iget-object v1, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 8
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 10
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 17
    move-result v2

    .line 20
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 21
    mul-float/2addr v2, v4

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 24
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_0

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 31
    move-result v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v5

    .line 36
    :goto_0
    add-float/2addr v2, v4

    .line 37
    const/high16 v4, 0x40000000    # 2.0f

    .line 38
    mul-float/2addr v2, v4

    .line 40
    float-to-double v6, v2

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 42
    move-result-wide v6

    .line 45
    double-to-int v2, v6

    .line 46
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 47
    move-result v6

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 51
    move-result v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 57
    move-result v5

    .line 60
    :cond_1
    add-float/2addr v6, v5

    .line 61
    mul-float/2addr v6, v4

    .line 62
    float-to-double v4, v6

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 64
    move-result-wide v4

    .line 67
    double-to-int v4, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v2, v3

    .line 70
    move v4, v2

    .line 71
    :goto_1
    iget v5, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    .line 72
    const v6, 0x800005

    .line 74
    and-int v7, v5, v6

    .line 77
    const/4 v8, 0x1

    .line 79
    if-ne v7, v6, :cond_3

    .line 80
    move v7, v8

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v7, v3

    .line 84
    :goto_2
    if-eqz v7, :cond_4

    .line 85
    iget v7, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 87
    sub-int v7, p1, v7

    .line 89
    iget v9, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    .line 91
    sub-int/2addr v7, v9

    .line 93
    sub-int/2addr v7, v4

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    iget v7, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 96
    :goto_3
    and-int/lit8 v9, v5, 0x50

    .line 98
    const/16 v10, 0x50

    .line 100
    if-ne v9, v10, :cond_5

    .line 102
    move v9, v8

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v9, v3

    .line 106
    :goto_4
    if-eqz v9, :cond_6

    .line 107
    iget v9, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 109
    goto :goto_5

    .line 111
    :cond_6
    iget v9, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 112
    sub-int v9, p2, v9

    .line 114
    iget v11, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    .line 116
    sub-int/2addr v9, v11

    .line 118
    sub-int/2addr v9, v2

    .line 119
    :goto_5
    move/from16 v16, v9

    .line 120
    and-int v9, v5, v6

    .line 122
    if-ne v9, v6, :cond_7

    .line 124
    move v6, v8

    .line 126
    goto :goto_6

    .line 127
    :cond_7
    move v6, v3

    .line 128
    :goto_6
    if-eqz v6, :cond_8

    .line 129
    iget v4, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 131
    goto :goto_7

    .line 133
    :cond_8
    iget v6, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 134
    sub-int v6, p1, v6

    .line 136
    iget v9, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    .line 138
    sub-int/2addr v6, v9

    .line 140
    sub-int v4, v6, v4

    .line 141
    :goto_7
    and-int/2addr v5, v10

    .line 143
    if-ne v5, v10, :cond_9

    .line 144
    move v3, v8

    .line 146
    :cond_9
    if-eqz v3, :cond_a

    .line 147
    iget v3, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 149
    sub-int v3, p2, v3

    .line 151
    iget v5, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    .line 153
    sub-int/2addr v3, v5

    .line 155
    sub-int/2addr v3, v2

    .line 156
    move v14, v3

    .line 157
    goto :goto_8

    .line 158
    :cond_a
    iget v2, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    .line 159
    move v14, v2

    .line 161
    :goto_8
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 162
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 164
    move-result v1

    .line 167
    if-ne v1, v8, :cond_b

    .line 168
    move v13, v4

    .line 170
    move v15, v7

    .line 171
    goto :goto_9

    .line 172
    :cond_b
    move v15, v4

    .line 173
    move v13, v7

    .line 174
    :goto_9
    iget-object v11, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 175
    const/4 v12, 0x2

    .line 177
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 178
    :cond_c
    return-void
    .line 181
.end method

.method public final setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    .line 17
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    if-eqz v0, :cond_2

    .line 23
    if-eqz p1, :cond_0

    .line 25
    const/16 p1, 0xff

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 31
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 38
    if-eqz p1, :cond_3

    .line 40
    const v0, 0x7f0a065f    # @id/mtrl_card_checked_layer_id

    .line 42
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 47
    :cond_3
    return-void
    .line 50
.end method

.method public final setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 9
    move-result v1

    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 15
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public final shouldAddCornerPaddingOutsideCardBackground()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final updateContentPadding()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    move v2, v3

    .line 32
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 33
    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    .line 36
    move-result v2

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v2, v1

    .line 41
    :goto_2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 54
    sget-wide v5, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D

    .line 56
    sub-double/2addr v3, v5

    .line 58
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    .line 59
    move-result v1

    .line 62
    float-to-double v5, v1

    .line 63
    mul-double/2addr v3, v5

    .line 64
    double-to-float v1, v3

    .line 65
    :cond_4
    sub-float/2addr v2, v1

    .line 66
    float-to-int v1, v2

    .line 67
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    .line 68
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 70
    add-int/2addr v2, v1

    .line 72
    iget v3, p0, Landroid/graphics/Rect;->top:I

    .line 73
    add-int/2addr v3, v1

    .line 75
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 76
    add-int/2addr v4, v1

    .line 78
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 79
    add-int/2addr p0, v1

    .line 81
    invoke-virtual {v0, v2, v3, v4, p0}, Lcom/google/android/material/card/MaterialCardView;->setAncestorContentPadding(IIII)V

    .line 82
    return-void
    .line 85
.end method

.method public final updateInsets()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Lcom/google/android/material/card/MaterialCardViewHelper$1;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
    .line 26
.end method
