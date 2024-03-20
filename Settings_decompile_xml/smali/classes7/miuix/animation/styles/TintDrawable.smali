.class public Lmiuix/animation/styles/TintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TintDrawable.java"


# static fields
.field private static final sListener:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final TINT_STYLE_HOVER:I

.field private final TINT_STYLE_RECT_ROUND:I

.field private final TINT_STYLE_VIEW_SHAPE:I

.field private final TOUCH_RADIUS_RECT_ROUND_DEFAULT:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/RectF;

.field private mCornerBounds:Landroid/graphics/RectF;

.field private mHoverRadius:F

.field private mOriDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mTintStyle:I

.field private mTouchRadius:[F

.field private mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field private mTouchRectLocationMode:I

.field private mTouchRectRoundPadding:Landroid/graphics/RectF;

.field private mTouchRectRoundRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lmiuix/animation/styles/TintDrawable$1;

    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable$1;-><init>()V

    sput-object v0, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_VIEW_SHAPE:I

    const/4 v1, 0x2

    .line 39
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_RECT_ROUND:I

    const/4 v1, 0x4

    .line 40
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_HOVER:I

    const/high16 v1, 0x41d00000    # 26.0f

    .line 41
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TOUCH_RADIUS_RECT_ROUND_DEFAULT:F

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 82
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 83
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 85
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 86
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 88
    iput-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 90
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 91
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 513
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/animation/styles/TintDrawable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    return-void
.end method

.method private clear()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    return-void
.end method

.method private createBitmap(II)V
    .locals 2

    .line 188
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 194
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    :try_start_0
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "miuix_anim"

    const-string p1, "TintDrawable.createBitmap failed, out of memory"

    .line 198
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private drawBlackeningByExtractingBg(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 424
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 431
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 426
    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private drawHoverTint(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 411
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 412
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 413
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectRound(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 290
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 291
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 292
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 293
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1008

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiuix/animation/styles/TintDrawable;->perFromDrawRoundRectRelative(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FF)V

    .line 308
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 309
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 310
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 311
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 313
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 314
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 316
    :cond_2
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 317
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 319
    :cond_3
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    goto :goto_0

    .line 300
    :cond_4
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FF)V

    .line 301
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public static get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 96
    instance-of v0, p0, Lmiuix/animation/styles/TintDrawable;

    if-eqz v0, :cond_0

    .line 97
    check-cast p0, Lmiuix/animation/styles/TintDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRectRoundEnableFromView(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 457
    :cond_0
    iget p1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    :goto_0
    iput p1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    return-void
.end method

.method private getRectRoundGravityFromView()V
    .locals 2

    .line 461
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 462
    instance-of v1, v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    if-eqz v1, :cond_0

    .line 463
    check-cast v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    :cond_0
    return-void
.end method

.method private getRectRoundPaddingsFromView()V
    .locals 4

    .line 488
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 489
    instance-of v1, v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 490
    check-cast v0, Landroid/graphics/RectF;

    .line 491
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 492
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 493
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 494
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 496
    :cond_0
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 497
    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 498
    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 499
    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method private getRectRoundRadiusFromView()V
    .locals 6

    .line 468
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 469
    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    instance-of v1, v0, Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 472
    fill-array-data v1, :array_0

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 473
    check-cast v0, Landroid/graphics/RectF;

    .line 474
    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v1, v2

    .line 475
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v3

    .line 476
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 477
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 478
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 479
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 480
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 481
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aput v0, p0, v1

    goto :goto_1

    :cond_1
    new-array v0, v3, [F

    const/high16 v1, 0x41d00000    # 26.0f

    aput v1, v0, v2

    .line 483
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    goto :goto_1

    :cond_2
    :goto_0
    new-array v1, v3, [F

    .line 470
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
    .end array-data
.end method

.method private getTouchLocationModeFromView()V
    .locals 2

    .line 516
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 517
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 518
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 520
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    :goto_0
    return-void
.end method

.method private getTouchRectFromView()V
    .locals 2

    .line 504
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 505
    instance-of v1, v0, Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 506
    check-cast v0, Landroid/graphics/RectF;

    .line 507
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private initBitmap(I)V
    .locals 4

    const-string v0, "miuix_anim"

    .line 217
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 223
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 225
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 226
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    .line 234
    :try_start_1
    new-instance p1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {p1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 240
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 241
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "the Bitmap empty or Recycled"

    .line 243
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TintDrawable.initBitmap failed, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    :goto_1
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7f7fffff    # Float.MAX_VALUE
        0x0
    .end array-data
.end method

.method private perFromDrawRoundRectRelative(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 332
    sget-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 351
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    .line 352
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 346
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v2, v0, v1, v3}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 341
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v2, v2, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    .line 354
    :goto_0
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    return-void
.end method

.method private processingOOMForDrawBitmap(Ljava/lang/RuntimeException;Landroid/graphics/Canvas;)V
    .locals 2

    .line 441
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 443
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Canvas: trying to draw too large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0x32

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lmiuix/animation/utils/CommonUtils;->compressImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 447
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TintDrawable.processingOOMForDrawBitmap failed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miuix_anim"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 452
    :cond_0
    throw p1
.end method

.method private realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 2

    .line 364
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 365
    aget p2, p2, v0

    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 366
    :cond_0
    array-length p2, p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 367
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 368
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 369
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    .line 207
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method static setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .locals 2

    .line 104
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lmiuix/animation/styles/TintDrawable;

    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable;-><init>()V

    .line 107
    iput-object p0, v0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/styles/TintDrawable;->setOriDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    sget-object v1, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 111
    new-instance v1, Lmiuix/animation/styles/TintDrawable$2;

    invoke-direct {v1, p0, v0}, Lmiuix/animation/styles/TintDrawable$2;-><init>(Landroid/view/View;Lmiuix/animation/styles/TintDrawable;)V

    invoke-static {p0, v1}, Lmiuix/animation/Folme;->post(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method private setBounds(FF)V
    .locals 5

    .line 380
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 381
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    .line 385
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    add-float v3, v0, p1

    add-float v4, v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 386
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setBounds(FFFF)V
    .locals 3

    .line 400
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 401
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    float-to-int p1, p3

    float-to-int p2, p4

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setOriDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private tintStyleLoadData()V
    .locals 2

    .line 160
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchLocationModeFromView()V

    .line 162
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1008

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 178
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchRectFromView()V

    .line 179
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundGravityFromView()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 174
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundPaddingsFromView()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 170
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchRectFromView()V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 253
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 254
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 255
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 256
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 257
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;->getIntValue(Landroid/view/View;)I

    move-result v0

    .line 262
    :try_start_0
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 263
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 264
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    :cond_0
    iget v1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 277
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawBlackeningByExtractingBg(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawHoverTint(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawRectRound(Landroid/graphics/Canvas;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 280
    :try_start_1
    invoke-direct {p0, v0, p1}, Lmiuix/animation/styles/TintDrawable;->processingOOMForDrawBitmap(Ljava/lang/RuntimeException;Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    throw p0
.end method

.method public getOpacity()I
    .locals 0

    .line 0
    const/4 p0, -0x2

    return p0
.end method

.method initTintBuffer(I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->getRectRoundEnableFromView(I)V

    .line 137
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 147
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 148
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->createBitmap(II)V

    .line 154
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->initBitmap(I)V

    goto :goto_1

    .line 150
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    return-void

    .line 140
    :cond_3
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->tintStyleLoadData()V

    :cond_4
    :goto_1
    return-void
.end method

.method restoreOriginalDrawable()V
    .locals 0

    .line 525
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    .line 526
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method setHoverCorner(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 126
    :cond_0
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    :goto_0
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 127
    iput p1, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    return-void
.end method
