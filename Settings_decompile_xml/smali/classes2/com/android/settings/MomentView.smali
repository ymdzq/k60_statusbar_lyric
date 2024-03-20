.class public Lcom/android/settings/MomentView;
.super Landroid/view/View;
.source "MomentView.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mCx:F

.field mCy:F

.field mPaint:Landroid/graphics/Paint;

.field mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/android/settings/MomentView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/android/settings/MomentView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/MomentView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MomentView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->moment_smalldot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MomentView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/settings/MomentView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    iget v0, p0, Lcom/android/settings/MomentView;->mCx:F

    iget v1, p0, Lcom/android/settings/MomentView;->mCy:F

    iget v2, p0, Lcom/android/settings/MomentView;->mRadius:F

    iget-object p0, p0, Lcom/android/settings/MomentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 47
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/MomentView;->mCx:F

    .line 48
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    int-to-float p1, p2

    iput p1, p0, Lcom/android/settings/MomentView;->mCy:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 49
    iput p1, p0, Lcom/android/settings/MomentView;->mRadius:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/MomentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
