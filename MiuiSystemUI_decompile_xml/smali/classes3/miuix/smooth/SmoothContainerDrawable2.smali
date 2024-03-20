.class public Lmiuix/smooth/SmoothContainerDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public final mClipPath:Landroid/graphics/Path;

.field public final mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

.field public final mLayer:Landroid/graphics/RectF;

.field public mRadius:F

.field public mStrokeColor:I

.field public mStrokePaint:Landroid/graphics/Paint;

.field public mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 5
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 6
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->init$1()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 10
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    invoke-direct {v0, p3, p0, p1, p2}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;-><init>(Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 11
    iget p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 12
    iget p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeColor:I

    .line 13
    iget p1, p3, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 14
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2;->init$1()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;)V

    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 5
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 7
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 11
    return-void
    .line 14
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    :goto_0
    const/4 p0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_1
    return p0
    .line 19
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mBounds:Landroid/graphics/Rect;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mLayer:Landroid/graphics/RectF;

    .line 16
    iget-object v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mBounds:Landroid/graphics/Rect;

    .line 18
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 20
    int-to-float v2, v2

    .line 22
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 23
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 25
    int-to-float v2, v2

    .line 27
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 28
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 30
    int-to-float v2, v2

    .line 32
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 33
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 35
    int-to-float v1, v1

    .line 37
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 38
    iget-object v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 40
    iget v2, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 42
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 44
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 46
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mClipPath:Landroid/graphics/Path;

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 51
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 54
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 56
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    iget v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 63
    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mBounds:Landroid/graphics/Rect;

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 69
    int-to-float v3, v1

    .line 71
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 72
    int-to-float v4, v1

    .line 74
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 75
    int-to-float v5, v1

    .line 77
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 78
    int-to-float v6, v0

    .line 80
    iget v8, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 81
    iget-object v9, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 83
    move-object v2, p1

    .line 85
    move v7, v8

    .line 86
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 87
    :cond_1
    return-void
    .line 90
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDirtyBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2:[I

    .line 5
    const/4 v1, 0x0

    .line 7
    if-nez p4, :cond_0

    .line 8
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p4, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 15
    move-result-object v0

    .line 18
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 19
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    invoke-virtual {p0, v2}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 24
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 28
    move-result v3

    .line 31
    const/4 v4, 0x3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x2

    .line 34
    if-nez v3, :cond_1

    .line 35
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 37
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 43
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 55
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 58
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 61
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 64
    iget-object v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 72
    :cond_2
    const/16 v3, 0x8

    .line 75
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 77
    move-result v3

    .line 80
    iget-object v7, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 81
    iget v8, v7, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 83
    if-eq v8, v3, :cond_3

    .line 85
    iput v3, v7, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 87
    iput v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 89
    iget-object v7, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 91
    int-to-float v3, v3

    .line 93
    const/high16 v8, 0x40000000    # 2.0f

    .line 94
    mul-float/2addr v3, v8

    .line 96
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 100
    :cond_3
    const/4 v3, 0x7

    .line 103
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 104
    move-result v3

    .line 107
    iget-object v7, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 108
    iget v8, v7, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 110
    if-eq v8, v3, :cond_4

    .line 112
    iput v3, v7, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 114
    iput v3, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeColor:I

    .line 116
    iget-object v7, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 123
    :cond_4
    const/4 v3, 0x5

    .line 126
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 127
    move-result v1

    .line 130
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 131
    const/16 v1, 0x9

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 136
    move-result v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    invoke-static {}, Lmiuix/smooth/SmoothCornerHelper;->setSmoothCornerEnable()V

    .line 142
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 148
    move-result v0

    .line 151
    add-int/2addr v0, v2

    .line 152
    :cond_6
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 153
    move-result v1

    .line 156
    if-eq v1, v2, :cond_c

    .line 157
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 159
    move-result v3

    .line 162
    if-ge v3, v0, :cond_7

    .line 163
    if-eq v1, v4, :cond_c

    .line 165
    :cond_7
    if-eq v1, v6, :cond_8

    .line 167
    goto :goto_1

    .line 169
    :cond_8
    if-gt v3, v0, :cond_6

    .line 170
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 175
    const-string v3, "child"

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v1

    .line 181
    if-nez v1, :cond_9

    .line 182
    goto :goto_1

    .line 184
    :cond_9
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 185
    move-result v0

    .line 188
    if-ne v0, v5, :cond_a

    .line 189
    goto :goto_2

    .line 191
    :cond_a
    if-ne v0, v6, :cond_b

    .line 192
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 194
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>()V

    .line 196
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 199
    move-result-object p1

    .line 202
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 205
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 208
    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 210
    goto :goto_3

    .line 212
    :cond_b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 220
    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string p2, ": <child> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 236
    throw p0

    .line 239
    :cond_c
    :goto_3
    return-void
    .line 240
.end method

.method public final init$1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 15
    iget v1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeColor:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 22
    iget p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokeWidth:I

    .line 24
    int-to-float p0, p0

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    mul-float/2addr p0, v1

    .line 29
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    return-void
    .line 33
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    return-void
    .line 5
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final jumpToCurrentState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 8
    return-void
    .line 11
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onStateChange([I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 14
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

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

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 2
    return-void
    .line 5
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object v1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object v1, v1, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 11
    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mStrokePaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    return-void
    .line 26
.end method

.method public final setChangingConfigurations(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 8
    return-void
    .line 11
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    return-void
    .line 11
.end method

.method public final setCornerRadius(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p1, v0

    .line 10
    if-gez v1, :cond_1

    .line 12
    move p1, v0

    .line 14
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 15
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    .line 17
    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mRadius:F

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    return-void
    .line 24
.end method

.method public final setDither(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final setFilterBitmap(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final setLayerType(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 7
    iget v1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 9
    if-eq v1, p1, :cond_0

    .line 11
    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    :cond_0
    return-void

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string p1, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
    .line 26
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method
