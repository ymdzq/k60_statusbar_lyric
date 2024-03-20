.class public Lcom/android/systemui/toast/view/RoundRect;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBottom:F

.field public mCenterX:F

.field public mRX:F

.field public mRY:F

.field public mRealCenterX:F

.field public mRectF:Landroid/graphics/RectF;

.field public mRectPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/toast/view/RoundRect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/toast/view/RoundRect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectPaint:Landroid/graphics/Paint;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071114    # @dimen/strong_toast_width_window '337.0dp'

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iput p3, p0, Lcom/android/systemui/toast/view/RoundRect;->mCenterX:F

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f071113    # @dimen/strong_toast_width '320.0dp'

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    iput p3, p0, Lcom/android/systemui/toast/view/RoundRect;->mRealCenterX:F

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f07110d    # @dimen/strong_toast_bg_padding '0.0dp'

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0603c7    # @color/miui_strong_bg '#000000'

    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object p1, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    .line 13
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07110e    # @dimen/strong_toast_height '48.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float p2, p1, v0

    .line 14
    iput p2, p0, Lcom/android/systemui/toast/view/RoundRect;->mRX:F

    .line 15
    iput p2, p0, Lcom/android/systemui/toast/view/RoundRect;->mRY:F

    .line 16
    iput p1, p0, Lcom/android/systemui/toast/view/RoundRect;->mBottom:F

    .line 17
    iget-object p3, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 18
    iget v0, p0, Lcom/android/systemui/toast/view/RoundRect;->mCenterX:F

    sub-float v1, v0, p2

    iput v1, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    .line 19
    iput p2, p3, Landroid/graphics/RectF;->right:F

    .line 20
    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mTop :0.0  mCenterX - mRX"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/toast/view/RoundRect;->mCenterX:F

    iget p3, p0, Lcom/android/systemui/toast/view/RoundRect;->mRX:F

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "  right:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/toast/view/RoundRect;->mCenterX:F

    iget p3, p0, Lcom/android/systemui/toast/view/RoundRect;->mRX:F

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " bottom: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/toast/view/RoundRect;->mBottom:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RoundRect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getRoundRectWidth()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 4
    iget p0, p0, Landroid/graphics/RectF;->left:F

    .line 6
    sub-float/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    .line 2
    iget v1, p0, Lcom/android/systemui/toast/view/RoundRect;->mRX:F

    .line 4
    iget v2, p0, Lcom/android/systemui/toast/view/RoundRect;->mRY:F

    .line 6
    iget-object v3, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 13
    return-void
    .line 16
.end method

.method public setRectProgress(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/view/RoundRect;->mCenterX:F

    .line 2
    iget v1, p0, Lcom/android/systemui/toast/view/RoundRect;->mBottom:F

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    div-float v3, v1, v2

    .line 8
    sub-float v3, v0, v3

    .line 10
    div-float v4, v1, v2

    .line 12
    add-float/2addr v4, v0

    .line 14
    iget v0, p0, Lcom/android/systemui/toast/view/RoundRect;->mRealCenterX:F

    .line 15
    div-float/2addr v1, v2

    .line 17
    sub-float/2addr v0, v1

    .line 18
    iget-object v1, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    .line 19
    mul-float/2addr p1, v0

    .line 21
    sub-float/2addr v3, p1

    .line 22
    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 23
    add-float/2addr v4, p1

    .line 25
    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v0, "right :"

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/toast/view/RoundRect;->mRectF:Landroid/graphics/RectF;

    .line 36
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    const-string v0, "RoundRect"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    return-void
    .line 55
.end method
