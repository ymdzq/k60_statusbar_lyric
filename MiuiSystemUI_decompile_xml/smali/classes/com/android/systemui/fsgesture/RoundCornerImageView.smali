.class public Lcom/android/systemui/fsgesture/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPath:Landroid/graphics/Path;

.field public mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/RoundCornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iput-object p1, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mPath:Landroid/graphics/Path;

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo p4, "window"

    .line 11
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 12
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 15
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v1, v0}, Lcom/android/systemui/fsgesture/CornerRadiusUtils;->getPhoneRadius(Landroid/content/Context;Landroid/view/WindowInsets;)I

    .line 11
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    iput v0, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mRadius:F

    .line 16
    return-void
    .line 18
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mPath:Landroid/graphics/Path;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mPath:Landroid/graphics/Path;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 14
    move-result v0

    .line 17
    int-to-float v4, v0

    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 19
    move-result v0

    .line 22
    int-to-float v5, v0

    .line 23
    iget v7, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mRadius:F

    .line 24
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 26
    move v6, v7

    .line 28
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/fsgesture/RoundCornerImageView;->mPath:Landroid/graphics/Path;

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 40
    return-void
    .line 43
.end method
