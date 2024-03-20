.class public Lcom/android/settings/widget/MultiGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MultiGradientDrawable.java"


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColors:[I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPositions:[F

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    .line 30
    iput v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mAlpha:I

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p4

    const/4 v0, 0x1

    add-int/2addr p4, v0

    .line 62
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 63
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, p4, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-le v2, p4, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gradient"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    sget-object v1, Lcom/android/settings/R$styleable;->GradientsList:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    invoke-direct {p0, p1, v1}, Lcom/android/settings/widget/MultiGradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_3
    const-string v2, "corners"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    sget-object v1, Lcom/android/settings/R$styleable;->GradientsCorner:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    invoke-direct {p0, v1}, Lcom/android/settings/widget/MultiGradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 84
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad element under me: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiGradientDrawable"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 90
    sget v0, Lcom/android/settings/R$styleable;->GradientsCorner_gradient_radius:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mRadius:F

    return-void
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 4

    .line 94
    sget v0, Lcom/android/settings/R$array;->gradient_colors:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColors:[I

    .line 95
    sget p1, Lcom/android/settings/R$styleable;->GradientsList_gradient_colors:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 97
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColors:[I

    move v1, v0

    .line 98
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColors:[I

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPositions:[F

    .line 103
    sget p1, Lcom/android/settings/R$styleable;->GradientsList_gradient_positions:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    array-length p2, p1

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPositions:[F

    .line 106
    :goto_1
    array-length p2, p1

    if-ge v0, p2, :cond_1

    .line 107
    iget-object p2, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPositions:[F

    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaddingRect:Landroid/graphics/Rect;

    sget v1, Lcom/android/settings/R$styleable;->MultiGradientDrawable_left:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaddingRect:Landroid/graphics/Rect;

    sget v1, Lcom/android/settings/R$styleable;->MultiGradientDrawable_top:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaddingRect:Landroid/graphics/Rect;

    sget v1, Lcom/android/settings/R$styleable;->MultiGradientDrawable_right:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaddingRect:Landroid/graphics/Rect;

    sget v0, Lcom/android/settings/R$styleable;->MultiGradientDrawable_bottom:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 117
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaddingRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 118
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 119
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 120
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 121
    iget v1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mRadius:F

    iget-object p0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    .line 0
    const/4 p0, -0x3

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaddingRect:Landroid/graphics/Rect;

    .line 42
    sget-object v0, Lcom/android/settings/R$styleable;->MultiGradientDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/android/settings/widget/MultiGradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/MultiGradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 9

    .line 126
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 127
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColors:[I

    iget-object v6, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 128
    iget-object p0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 134
    iput p1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mAlpha:I

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/android/settings/widget/MultiGradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
