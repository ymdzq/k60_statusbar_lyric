.class public final Lcom/android/systemui/media/controls/ui/LightSourceDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private active:Z

.field private highlightColor:I

.field private paint:Landroid/graphics/Paint;

.field private pressed:Z

.field private rippleAnimation:Landroid/animation/Animator;

.field private final rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

.field private themeAttrs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/media/controls/ui/RippleData;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/RippleData;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    .line 17
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->highlightColor:I

    .line 20
    return-void
    .line 22
.end method

.method public static final synthetic access$getRippleData$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)Lcom/android/systemui/media/controls/ui/RippleData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 2
    return-object p0
    .line 4
.end method

.method public static final synthetic access$setRippleAnimation$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    .line 2
    return-void
    .line 4
.end method

.method private final illuminate()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 18
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    const/4 v2, 0x2

    .line 23
    new-array v3, v2, [F

    .line 24
    fill-array-data v3, :array_0

    .line 26
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 29
    move-result-object v3

    .line 32
    const-wide/16 v4, 0x85

    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 35
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getStartDelay()J

    .line 38
    move-result-wide v4

    .line 41
    const-wide/16 v6, 0x320

    .line 42
    sub-long v4, v6, v4

    .line 44
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 49
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    new-instance v5, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;

    .line 54
    const/4 v8, 0x1

    .line 56
    invoke-direct {v5, p0, v8}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;-><init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;I)V

    .line 57
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    new-array v5, v2, [F

    .line 63
    iget-object v9, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 65
    iget v9, v9, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 67
    const/4 v10, 0x0

    .line 69
    aput v9, v5, v10

    .line 70
    aput v1, v5, v8

    .line 72
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    new-instance v4, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;

    .line 84
    invoke-direct {v4, p0, v2}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;-><init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;I)V

    .line 86
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    filled-new-array {v3, v1}, [Landroid/animation/Animator;

    .line 92
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 96
    new-instance v1, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;

    .line 99
    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;-><init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 107
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    .line 110
    return-void

    .line 112
    nop

    .line 113
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 114
.end method

.method private final setActive(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->active:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->active:Z

    .line 7
    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    .line 11
    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p1, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 22
    const v0, 0x3d4ccccd    # 0.05f

    .line 24
    iput v0, p1, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    .line 30
    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 34
    :cond_3
    const/4 p1, 0x2

    .line 37
    new-array p1, p1, [F

    .line 38
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 40
    iget v0, v0, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 42
    const/4 v1, 0x0

    .line 44
    aput v0, p1, v1

    .line 45
    const/4 v0, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    aput v2, p1, v0

    .line 49
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    move-result-object p1

    .line 54
    const-wide/16 v2, 0xc8

    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 60
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    new-instance v0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$1;-><init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;I)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    new-instance v0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$2;

    .line 73
    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$active$1$2;-><init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    .line 84
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 86
    return-void
    .line 89
.end method

.method private final updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 3
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 12
    move-result v0

    .line 15
    iput v0, v1, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 27
    move-result v0

    .line 30
    iput v0, v1, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 43
    move-result p1

    .line 46
    int-to-float p1, p1

    .line 47
    const/high16 v0, 0x42c80000    # 100.0f

    .line 48
    div-float/2addr p1, v0

    .line 50
    iput p1, p0, Lcom/android/systemui/media/controls/ui/RippleData;->highlight:F

    .line 51
    :cond_2
    return-void
    .line 53
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->themeAttrs:[I

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->themeAttrs:[I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    array-length v0, v0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 2
    iget v1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 4
    iget v2, v0, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 6
    iget v0, v0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 10
    move-result v0

    .line 13
    iget v1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->highlightColor:I

    .line 14
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 16
    iget v2, v2, Lcom/android/systemui/media/controls/ui/RippleData;->alpha:F

    .line 18
    const/16 v3, 0xff

    .line 20
    int-to-float v3, v3

    .line 22
    mul-float/2addr v2, v3

    .line 23
    float-to-int v2, v2

    .line 24
    invoke-static {v1, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 25
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance v10, Landroid/graphics/RadialGradient;

    .line 31
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 33
    iget v4, v3, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 35
    iget v5, v3, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 37
    const/4 v3, 0x0

    .line 39
    filled-new-array {v1, v3}, [I

    .line 40
    move-result-object v7

    .line 43
    sget-object v8, Lcom/android/systemui/media/controls/ui/LightSourceDrawableKt;->GRADIENT_STOPS:[F

    .line 44
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 46
    move-object v3, v10

    .line 48
    move v6, v0

    .line 49
    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 50
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 56
    iget v2, v1, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 58
    iget v1, v1, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 60
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    return-void
    .line 67
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 2
    iget v1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->minSize:F

    .line 4
    iget v2, v0, Lcom/android/systemui/media/controls/ui/RippleData;->maxSize:F

    .line 6
    iget v0, v0, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 10
    move-result v0

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 16
    iget v3, v2, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 18
    sub-float v4, v3, v0

    .line 20
    float-to-int v4, v4

    .line 22
    iget v2, v2, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 23
    sub-float v5, v2, v0

    .line 25
    float-to-int v5, v5

    .line 27
    add-float/2addr v3, v0

    .line 28
    float-to-int v3, v3

    .line 29
    add-float/2addr v2, v0

    .line 30
    float-to-int v0, v2

    .line 31
    invoke-direct {v1, v4, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 39
    return-object v1
    .line 42
.end method

.method public final getHighlightColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->highlightColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public hasFocusStateSpecified()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    .line 2
    invoke-static {p1, p4, p3, p2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 8
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->themeAttrs:[I

    .line 12
    invoke-direct {p0, p1}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    return-void
    .line 20
.end method

.method public isProjected()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public onStateChange([I)Z
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    move-result v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->pressed:Z

    .line 9
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->pressed:Z

    .line 12
    array-length v3, p1

    .line 14
    move v4, v2

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    :goto_0
    const/4 v8, 0x1

    .line 19
    if-ge v4, v3, :cond_1

    .line 20
    aget v9, p1, v4

    .line 22
    sparse-switch v9, :sswitch_data_0

    .line 24
    goto :goto_1

    .line 27
    :sswitch_0
    move v7, v8

    .line 28
    goto :goto_1

    .line 29
    :sswitch_1
    iput-boolean v8, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->pressed:Z

    .line 30
    goto :goto_1

    .line 32
    :sswitch_2
    move v5, v8

    .line 33
    goto :goto_1

    .line 34
    :sswitch_3
    move v6, v8

    .line 35
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    if-eqz v5, :cond_3

    .line 39
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->pressed:Z

    .line 41
    if-nez p1, :cond_2

    .line 43
    if-nez v6, :cond_2

    .line 45
    if-eqz v7, :cond_3

    .line 47
    :cond_2
    move v2, v8

    .line 49
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->setActive(Z)V

    .line 50
    if-eqz v1, :cond_4

    .line 53
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->pressed:Z

    .line 55
    if-nez p1, :cond_4

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->illuminate()V

    .line 59
    :cond_4
    return v0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_3    # @android:attr/state_focused
        0x101009e -> :sswitch_2    # @android:attr/state_enabled
        0x10100a7 -> :sswitch_1    # @android:attr/state_pressed
        0x1010367 -> :sswitch_0    # @android:attr/state_hovered
    .end sparse-switch
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    return-void
    .line 19
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string p1, "Color filters are not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final setHighlightColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->highlightColor:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->highlightColor:I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
    .line 12
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/controls/ui/RippleData;

    .line 2
    iput p1, v0, Lcom/android/systemui/media/controls/ui/RippleData;->x:F

    .line 4
    iput p2, v0, Lcom/android/systemui/media/controls/ui/RippleData;->y:F

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->active:Z

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
