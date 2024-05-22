.class public Lcom/google/android/material/imageview/ShapeableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/material/shape/Shapeable;


# instance fields
.field public final borderPaint:Landroid/graphics/Paint;

.field public bottomContentPadding:I

.field public final clearPaint:Landroid/graphics/Paint;

.field public final destination:Landroid/graphics/RectF;

.field public endContentPadding:I

.field public hasAdjustedPaddingAfterLayoutDirectionResolved:Z

.field public leftContentPadding:I

.field public final maskPath:Landroid/graphics/Path;

.field public final maskRect:Landroid/graphics/RectF;

.field public final path:Landroid/graphics/Path;

.field public final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field public rightContentPadding:I

.field public shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public startContentPadding:I

.field public strokeColor:Landroid/content/res/ColorStateList;

.field public strokeWidth:F

.field public topContentPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const v0, 0x7f14081d    # @style/Widget.MaterialComponents.ShapeableImageView

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 5
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, -0x1

    .line 11
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 15
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 16
    sget-object v2, Lcom/google/android/material/R$styleable;->ShapeableImageView:[I

    .line 17
    invoke-virtual {v1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 18
    invoke-virtual {p0, v5, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/16 v4, 0x9

    .line 19
    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    const/16 v4, 0xa

    .line 20
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 21
    invoke-virtual {v2, p1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 23
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 24
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 25
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    const/4 v4, 0x3

    .line 26
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    const/4 v4, 0x6

    .line 27
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    const/4 v4, 0x4

    .line 28
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 29
    invoke-virtual {v2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    const/4 p1, 0x5

    const/high16 v4, -0x80000000

    .line 30
    invoke-virtual {v2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 31
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 32
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    invoke-static {v1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 37
    new-instance p1, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;

    invoke-direct {p1, p0}, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;-><init>(Lcom/google/android/material/imageview/ShapeableImageView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public getContentPaddingBottom()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 2
    return p0
    .line 4
.end method

.method public final getContentPaddingEnd()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 18
    :goto_0
    return p0
    .line 20
.end method

.method public getContentPaddingLeft()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-ne v0, v1, :cond_1

    .line 6
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 24
    if-eq v0, v1, :cond_2

    .line 26
    return v0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 35
    if-eq v0, v1, :cond_3

    .line 37
    return v0

    .line 39
    :cond_3
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 40
    return p0
    .line 42
.end method

.method public getContentPaddingRight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-ne v0, v1, :cond_1

    .line 6
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 24
    if-eq v0, v1, :cond_2

    .line 26
    return v0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 35
    if-eq v0, v1, :cond_3

    .line 37
    return v0

    .line 39
    :cond_3
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 40
    return p0
    .line 42
.end method

.method public final getContentPaddingStart()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 18
    :goto_0
    return p0
    .line 20
.end method

.method public getContentPaddingTop()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 2
    return p0
    .line 4
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    .line 6
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public getPaddingEnd()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    .line 6
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    .line 6
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public getPaddingRight()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    .line 6
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public getPaddingStart()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    .line 6
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public getPaddingTop()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    .line 6
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStrokeWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 2
    return p0
    .line 4
.end method

.method public final isRtl()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
    .line 11
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 5
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 17
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    .line 26
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 30
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 32
    move-result v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 36
    move-result v0

    .line 39
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 40
    const/4 v2, 0x0

    .line 42
    cmpl-float v1, v1, v2

    .line 43
    if-lez v1, :cond_1

    .line 45
    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 54
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    :cond_1
    :goto_0
    return-void
    .line 61
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isLayoutDirectionResolved()Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPaddingRelative()Z

    .line 20
    move-result p2

    .line 23
    if-nez p2, :cond_5

    .line 24
    iget p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 26
    const/high16 v0, -0x80000000

    .line 28
    if-ne p2, v0, :cond_3

    .line 30
    iget p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 32
    if-eq p2, v0, :cond_2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 38
    goto :goto_1

    .line 40
    :cond_4
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 41
    move-result p1

    .line 44
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 45
    move-result p2

    .line 48
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 49
    move-result v0

    .line 52
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 53
    move-result v1

    .line 56
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    .line 57
    return-void

    .line 60
    :cond_5
    :goto_1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    .line 61
    move-result p1

    .line 64
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 65
    move-result p2

    .line 68
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    .line 69
    move-result v0

    .line 72
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 73
    move-result v1

    .line 76
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPaddingRelative(IIII)V

    .line 77
    return-void
    .line 80
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    .line 5
    return-void
    .line 8
.end method

.method public setContentPadding(IIII)V
    .locals 5

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 4
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 6
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 11
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 12
    sub-int/2addr v0, v1

    .line 14
    add-int/2addr v0, p1

    .line 15
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 16
    move-result v1

    .line 19
    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 20
    sub-int/2addr v1, v2

    .line 22
    add-int/2addr v1, p2

    .line 23
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 24
    move-result v2

    .line 27
    iget v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 28
    sub-int/2addr v2, v3

    .line 30
    add-int/2addr v2, p3

    .line 31
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 32
    move-result v3

    .line 35
    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 36
    sub-int/2addr v3, v4

    .line 38
    add-int/2addr v3, p4

    .line 39
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 40
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 43
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 45
    iput p3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 47
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 49
    return-void
    .line 51
.end method

.method public setContentPaddingRelative(IIII)V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    .line 6
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    add-int/2addr v0, p1

    .line 11
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 12
    move-result v1

    .line 15
    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 16
    sub-int/2addr v1, v2

    .line 18
    add-int/2addr v1, p2

    .line 19
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    .line 20
    move-result v2

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    .line 24
    move-result v3

    .line 27
    sub-int/2addr v2, v3

    .line 28
    add-int/2addr v2, p3

    .line 29
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 30
    move-result v3

    .line 33
    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 34
    sub-int/2addr v3, v4

    .line 36
    add-int/2addr v3, p4

    .line 37
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    move v0, p3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v0, p1

    .line 49
    :goto_0
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 50
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    .line 54
    move-result p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    move p1, p3

    .line 61
    :goto_1
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 62
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 64
    return-void
    .line 66
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    .line 7
    move-result p1

    .line 10
    add-int/2addr p1, p2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    .line 12
    move-result p2

    .line 15
    add-int/2addr p2, p3

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    .line 17
    move-result p3

    .line 20
    add-int/2addr p3, p4

    .line 21
    invoke-super {p0, v0, p1, p2, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 22
    return-void
    .line 25
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    .line 2
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    .line 7
    move-result p1

    .line 10
    add-int/2addr p1, p2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    .line 12
    move-result p2

    .line 15
    add-int/2addr p2, p3

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    .line 17
    move-result p3

    .line 20
    add-int/2addr p3, p4

    .line 21
    invoke-super {p0, v0, p1, p2, p3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 22
    return-void
    .line 25
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 25
    return-void
    .line 28
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
    .line 13
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    .line 11
    return-void
    .line 14
.end method

.method public final updateShapeMask(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingLeft()I

    .line 4
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingTop()I

    .line 9
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingRight()I

    .line 14
    move-result v3

    .line 17
    sub-int v3, p1, v3

    .line 18
    int-to-float v3, v3

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingBottom()I

    .line 21
    move-result v4

    .line 24
    sub-int v4, p2, v4

    .line 25
    int-to-float v4, v4

    .line 27
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    iget-object v5, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 31
    iget-object v6, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 33
    iget-object v8, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 35
    iget-object v10, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 37
    const/high16 v7, 0x3f800000    # 1.0f

    .line 39
    const/4 v9, 0x0

    .line 41
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/MaterialShapeDrawable$1;Landroid/graphics/Path;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 47
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 50
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 57
    int-to-float p1, p1

    .line 59
    int-to-float p2, p2

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 65
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 67
    sget-object p2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 69
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 71
    return-void
    .line 74
.end method
