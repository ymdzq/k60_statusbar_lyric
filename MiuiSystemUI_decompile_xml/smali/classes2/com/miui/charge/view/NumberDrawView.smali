.class public Lcom/miui/charge/view/NumberDrawView;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDot:Ljava/lang/String;

.field public mDotWidth:I

.field public mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field public mLargeMaxNumWidth:I

.field public mLargeTextPaint:Landroid/text/TextPaint;

.field public mLargeTextSizePx:I

.field public mLevel:Ljava/lang/String;

.field public mLocaleName:Ljava/lang/String;

.field public mNormalTypeface:Landroid/graphics/Typeface;

.field public mPercentTextPaint:Landroid/text/TextPaint;

.field public mPercentTextSizePx:I

.field public mPercentWidth:I

.field public mRegularTypeface:Landroid/graphics/Typeface;

.field public mResources:Landroid/content/res/Resources;

.field public mScreenSize:Landroid/graphics/Point;

.field public mShowLevel:Ljava/lang/String;

.field public mSmallMaxNumWidth:I

.field public mSmallTextPaint:Landroid/text/TextPaint;

.field public mSmallTextSizePx:I

.field public mStrHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/view/NumberDrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/view/NumberDrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    .line 4
    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    const-string p3, "."

    .line 6
    iput-object p3, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mLocaleName:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    .line 10
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mScreenSize:Landroid/graphics/Point;

    const-string/jumbo p2, "window"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 12
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/charge/view/NumberDrawView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "fonts/Mitype2018-60.otf"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mRegularTypeface:Landroid/graphics/Typeface;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/Mitype2018-35.otf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    const/4 p3, -0x1

    .line 17
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 18
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 19
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 20
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 21
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->updateTextPaint()V

    return-void
.end method

.method private getShowWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/charge/view/NumberDrawView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 6
    return p0

    .line 8
    :cond_0
    const/16 p0, 0x438

    .line 9
    return p0
    .line 11
.end method


# virtual methods
.method public final doUpdateDrawParams()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 3
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 5
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureLargeNumWidth()V

    .line 7
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureSmallNumWidth()V

    .line 10
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 13
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 17
    move-result v0

    .line 20
    float-to-int v0, v0

    .line 21
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 22
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 24
    const-string v1, "%"

    .line 26
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 28
    move-result v0

    .line 31
    float-to-int v0, v0

    .line 32
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    move-result-object v0

    .line 38
    const v1, 0x410e147b    # 8.88f

    .line 39
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v1

    .line 45
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    const-string v2, "%1.2f"

    .line 50
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    const/4 v1, 0x1

    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 64
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 66
    move-result v0

    .line 69
    float-to-int v0, v0

    .line 70
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLocaleName:Ljava/lang/String;

    .line 81
    return-void
    .line 83
.end method

.method public final measureLargeNumWidth()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 9
    move-result-object v1

    .line 12
    const/4 v2, 0x4

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 17
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    const-string v3, "%d"

    .line 22
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 28
    move-result v0

    .line 31
    float-to-int v0, v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    const/16 v2, 0x9

    .line 34
    if-gt v1, v2, :cond_2

    .line 36
    iget-object v2, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 40
    move-result-object v4

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v5

    .line 47
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 51
    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 55
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 56
    move-result v2

    .line 59
    float-to-int v2, v2

    .line 60
    if-le v2, v0, :cond_1

    .line 61
    move v0, v2

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 67
    return-void
    .line 69
.end method

.method public final measureSmallNumWidth()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 9
    move-result-object v1

    .line 12
    const/4 v2, 0x4

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 17
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    const-string v3, "%d"

    .line 22
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 28
    move-result v0

    .line 31
    float-to-int v0, v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    const/16 v2, 0x9

    .line 34
    if-gt v1, v2, :cond_2

    .line 36
    iget-object v2, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 40
    move-result-object v4

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v5

    .line 47
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 51
    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 55
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 56
    move-result v2

    .line 59
    float-to-int v2, v2

    .line 60
    if-le v2, v0, :cond_1

    .line 61
    move v0, v2

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 67
    return-void
    .line 69
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLocaleName:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->doUpdateDrawParams()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    .line 11
    return-void
    .line 13
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 13
    const-string v2, "%"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 17
    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureLargeNumWidth()V

    .line 21
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureSmallNumWidth()V

    .line 24
    const/4 v3, -0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne v0, v3, :cond_2

    .line 30
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    move-result v0

    .line 37
    sub-int/2addr v0, v5

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 39
    move-result v3

    .line 42
    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 43
    mul-int/2addr v5, v0

    .line 45
    iget v6, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    .line 46
    add-int/2addr v5, v6

    .line 48
    sub-int/2addr v3, v5

    .line 49
    div-int/lit8 v3, v3, 0x2

    .line 50
    if-nez v1, :cond_0

    .line 52
    int-to-float v1, v3

    .line 54
    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 55
    int-to-float v5, v5

    .line 57
    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 58
    invoke-virtual {p1, v2, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    .line 63
    add-int/2addr v3, v1

    .line 65
    :goto_0
    if-ge v4, v0, :cond_7

    .line 66
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 68
    add-int/lit8 v2, v4, 0x1

    .line 70
    add-int/lit8 v5, v4, 0x2

    .line 72
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 78
    mul-int/2addr v4, v5

    .line 80
    add-int/2addr v4, v3

    .line 81
    int-to-float v4, v4

    .line 82
    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 83
    int-to-float v5, v5

    .line 85
    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 86
    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    move v4, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    :goto_1
    if-ge v4, v0, :cond_1

    .line 93
    iget-object v5, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 95
    add-int/lit8 v6, v4, 0x1

    .line 97
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    move-result-object v5

    .line 102
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 103
    mul-int/2addr v4, v7

    .line 105
    add-int/2addr v4, v3

    .line 106
    int-to-float v4, v4

    .line 107
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 108
    int-to-float v7, v7

    .line 110
    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 111
    invoke-virtual {p1, v5, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    move v4, v6

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 118
    mul-int/2addr v1, v0

    .line 120
    add-int/2addr v1, v3

    .line 121
    int-to-float v0, v1

    .line 122
    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 123
    int-to-float v1, v1

    .line 125
    iget-object p0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 126
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    goto/16 :goto_6

    .line 131
    :cond_2
    if-nez v1, :cond_4

    .line 133
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 135
    move-result v1

    .line 138
    add-int/lit8 v3, v0, -0x1

    .line 139
    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 141
    mul-int/2addr v4, v3

    .line 143
    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 146
    move-result v6

    .line 149
    sub-int/2addr v6, v3

    .line 150
    add-int/lit8 v6, v6, -0x2

    .line 151
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 153
    mul-int/2addr v6, v7

    .line 155
    add-int/2addr v6, v4

    .line 156
    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    .line 157
    add-int/2addr v6, v4

    .line 159
    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    .line 160
    add-int/2addr v6, v4

    .line 162
    sub-int/2addr v1, v6

    .line 163
    div-int/lit8 v1, v1, 0x2

    .line 164
    int-to-float v4, v1

    .line 166
    iget v6, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 167
    int-to-float v6, v6

    .line 169
    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 170
    invoke-virtual {p1, v2, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    iget v2, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    .line 175
    add-int/2addr v1, v2

    .line 177
    move v2, v5

    .line 178
    :goto_2
    if-ge v2, v0, :cond_3

    .line 179
    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 181
    add-int/lit8 v6, v2, 0x1

    .line 183
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 188
    add-int/lit8 v2, v2, -0x1

    .line 189
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 191
    mul-int/2addr v2, v7

    .line 193
    add-int/2addr v2, v1

    .line 194
    int-to-float v2, v2

    .line 195
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 196
    int-to-float v7, v7

    .line 198
    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 199
    invoke-virtual {p1, v4, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    move v2, v6

    .line 204
    goto :goto_2

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    .line 206
    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 208
    mul-int/2addr v4, v3

    .line 210
    add-int/2addr v4, v1

    .line 211
    int-to-float v4, v4

    .line 212
    iget v6, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 213
    int-to-float v6, v6

    .line 215
    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 216
    invoke-virtual {p1, v2, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 218
    iget v2, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    .line 221
    add-int/2addr v1, v2

    .line 223
    add-int/lit8 v2, v0, 0x1

    .line 224
    :goto_3
    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 226
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 228
    move-result v4

    .line 231
    if-ge v2, v4, :cond_7

    .line 232
    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 234
    add-int/lit8 v6, v2, 0x1

    .line 236
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 238
    move-result-object v4

    .line 241
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 242
    mul-int/2addr v7, v3

    .line 244
    add-int/2addr v7, v1

    .line 245
    sub-int/2addr v2, v0

    .line 246
    sub-int/2addr v2, v5

    .line 247
    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 248
    mul-int/2addr v2, v8

    .line 250
    add-int/2addr v2, v7

    .line 251
    int-to-float v2, v2

    .line 252
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 253
    int-to-float v7, v7

    .line 255
    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 256
    invoke-virtual {p1, v4, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    move v2, v6

    .line 261
    goto :goto_3

    .line 262
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 263
    move-result v1

    .line 266
    iget v3, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 267
    mul-int/2addr v3, v0

    .line 269
    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 270
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 272
    move-result v6

    .line 275
    sub-int/2addr v6, v0

    .line 276
    add-int/lit8 v6, v6, -0x2

    .line 277
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 279
    mul-int/2addr v6, v7

    .line 281
    add-int/2addr v6, v3

    .line 282
    iget v3, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    .line 283
    add-int/2addr v6, v3

    .line 285
    iget v3, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    .line 286
    add-int/2addr v6, v3

    .line 288
    sub-int/2addr v1, v6

    .line 289
    div-int/lit8 v1, v1, 0x2

    .line 290
    :goto_4
    if-ge v4, v0, :cond_5

    .line 292
    iget-object v3, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 294
    add-int/lit8 v6, v4, 0x1

    .line 296
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 298
    move-result-object v3

    .line 301
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 302
    mul-int/2addr v4, v7

    .line 304
    add-int/2addr v4, v1

    .line 305
    int-to-float v4, v4

    .line 306
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 307
    int-to-float v7, v7

    .line 309
    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 310
    invoke-virtual {p1, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    move v4, v6

    .line 315
    goto :goto_4

    .line 316
    :cond_5
    iget-object v3, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    .line 317
    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 319
    mul-int/2addr v4, v0

    .line 321
    add-int/2addr v4, v1

    .line 322
    int-to-float v4, v4

    .line 323
    iget v6, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 324
    int-to-float v6, v6

    .line 326
    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 327
    invoke-virtual {p1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    iget v3, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    .line 332
    add-int/2addr v1, v3

    .line 334
    iget v3, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    .line 335
    mul-int/2addr v3, v0

    .line 337
    add-int/2addr v3, v1

    .line 338
    add-int/lit8 v1, v0, 0x1

    .line 339
    :goto_5
    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 341
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 343
    move-result v4

    .line 346
    sub-int/2addr v4, v5

    .line 347
    if-ge v1, v4, :cond_6

    .line 348
    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 350
    add-int/lit8 v6, v1, 0x1

    .line 352
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 354
    move-result-object v4

    .line 357
    sub-int/2addr v1, v0

    .line 358
    sub-int/2addr v1, v5

    .line 359
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 360
    mul-int/2addr v1, v7

    .line 362
    add-int/2addr v1, v3

    .line 363
    int-to-float v1, v1

    .line 364
    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 365
    int-to-float v7, v7

    .line 367
    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 368
    invoke-virtual {p1, v4, v1, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 370
    move v1, v6

    .line 373
    goto :goto_5

    .line 374
    :cond_6
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 375
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 377
    move-result v1

    .line 380
    sub-int/2addr v1, v0

    .line 381
    add-int/lit8 v1, v1, -0x2

    .line 382
    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    .line 384
    mul-int/2addr v1, v0

    .line 386
    add-int/2addr v1, v3

    .line 387
    int-to-float v0, v1

    .line 388
    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 389
    int-to-float v1, v1

    .line 391
    iget-object p0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 392
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    :cond_7
    :goto_6
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/charge/view/NumberDrawView;->getShowWidth()I

    .line 2
    move-result p1

    .line 5
    iget p2, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    .line 6
    add-int/lit8 p2, p2, 0x3

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 10
    return-void
    .line 13
.end method

.method public setLevelText(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iput-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result v0

    .line 25
    const/4 v2, 0x5

    .line 26
    if-le v0, v2, :cond_2

    .line 27
    const-string p1, "100"

    .line 29
    :cond_2
    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    .line 33
    const v2, 0x7f1305bb    # @string/keyguard_charging_battery_level '%s%%'

    .line 35
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 46
    const-string v0, " "

    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 59
    return-void
    .line 62
.end method

.method public setSize(III)V
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 10
    move-result p1

    .line 13
    float-to-int p1, p1

    .line 14
    iput p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextSizePx:I

    .line 15
    int-to-float p1, p2

    .line 17
    iget-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    .line 18
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    move-result-object p2

    .line 23
    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 24
    move-result p1

    .line 27
    float-to-int p1, p1

    .line 28
    iput p1, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextSizePx:I

    .line 29
    int-to-float p1, p3

    .line 31
    iget-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    .line 32
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    move-result-object p2

    .line 37
    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    move-result p1

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextSizePx:I

    .line 43
    iget p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextSizePx:I

    .line 45
    int-to-float p1, p1

    .line 47
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->updateTextPaint()V

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 54
    return-void
    .line 57
.end method

.method public final updateTextPaint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 2
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 4
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 9
    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextSizePx:I

    .line 11
    int-to-float v1, v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    .line 17
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 23
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 25
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mRegularTypeface:Landroid/graphics/Typeface;

    .line 27
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    .line 32
    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextSizePx:I

    .line 34
    int-to-float v1, v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 40
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mRegularTypeface:Landroid/graphics/Typeface;

    .line 42
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    .line 47
    iget p0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextSizePx:I

    .line 49
    int-to-float p0, p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 52
    return-void
    .line 55
.end method
