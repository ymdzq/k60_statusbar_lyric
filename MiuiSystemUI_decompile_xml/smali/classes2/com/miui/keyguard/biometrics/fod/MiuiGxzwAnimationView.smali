.class Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBackgroundBitmap:Landroid/graphics/Bitmap;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mScale:F

.field public mTranslateX:I

.field public mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final clearAnimationSurface()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mScale:F

    .line 8
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateX:I

    .line 11
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateY:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    return-void
    .line 18
.end method

.method public final configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    move-result v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result p0

    .line 22
    int-to-float v2, v2

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr v1, p2

    .line 25
    sub-float/2addr v2, v1

    .line 26
    const/high16 v1, 0x3f000000    # 0.5f

    .line 27
    mul-float/2addr v2, v1

    .line 29
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 30
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    int-to-float p0, p0

    .line 35
    int-to-float p1, p1

    .line 36
    mul-float/2addr p1, p2

    .line 37
    sub-float/2addr p0, p1

    .line 38
    mul-float/2addr p0, v1

    .line 39
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 40
    move-result p0

    .line 43
    int-to-float p0, p0

    .line 44
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 45
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    return-object v0
    .line 51
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 10
    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    return-void

    .line 15
    :cond_0
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mScale:F

    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;

    .line 18
    move-result-object v0

    .line 21
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateX:I

    .line 22
    int-to-float v2, v2

    .line 24
    iget v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateY:I

    .line 25
    int-to-float v3, v3

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 28
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 36
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    iget v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mScale:F

    .line 41
    invoke-virtual {p0, v1, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;

    .line 43
    move-result-object v1

    .line 46
    iget v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateX:I

    .line 47
    int-to-float v3, v3

    .line 49
    iget v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateY:I

    .line 50
    int-to-float v4, v4

    .line 52
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p1, p0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 63
    return-void
    .line 66
.end method
