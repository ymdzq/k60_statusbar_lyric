.class public Lcom/miui/clock/MiuiTextGlassView;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public centerIsNumber:Z

.field public leftEmpty:F

.field public leftIsNumber:Z

.field public leftTextMeasureWidth:F

.field public leftTextWidth:I

.field public final mBoundRect:Landroid/graphics/Rect;

.field public mCenterTextBoxWidth:I

.field public mCustomTextDirection:I

.field public mDiffusionType:Lcom/miui/clock/module/DiffusionType;

.field public mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

.field public mLeftTextBoxWidth:I

.field public mRightTextBoxWidth:I

.field public mTextBoxWidthChs:I

.field public mTextBoxWidthNumber:I

.field public rightEmpty:F

.field public rightIsNumber:Z

.field public rightTextMeasureWidth:F

.field public rightTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 3
    new-instance p1, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p1}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mCustomTextDirection:I

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 8
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateTextDirection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    sget-object p1, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 11
    new-instance p1, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p1}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mCustomTextDirection:I

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 15
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 16
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateTextDirection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    sget-object p1, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 19
    new-instance p1, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p1}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mCustomTextDirection:I

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 24
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateTextDirection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    sget-object p1, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 27
    new-instance p1, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p1}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mCustomTextDirection:I

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 32
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateTextDirection()V

    return-void
.end method


# virtual methods
.method public final getSlideExtraWidth(IFZ)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 2
    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getPercentages()[F

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getCHSPercentages()[F

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    int-to-float p1, p1

    .line 15
    const/4 p3, 0x0

    .line 16
    aget p3, p0, p3

    .line 17
    const/4 v0, 0x1

    .line 19
    aget v0, p0, v0

    .line 20
    add-float/2addr p3, v0

    .line 22
    const/4 v0, 0x2

    .line 23
    aget v0, p0, v0

    .line 24
    add-float/2addr p3, v0

    .line 26
    const/4 v0, 0x3

    .line 27
    aget p0, p0, v0

    .line 28
    add-float/2addr p3, p0

    .line 30
    mul-float/2addr p3, p1

    .line 31
    sub-float/2addr p3, p2

    .line 32
    sub-float/2addr p1, p2

    .line 33
    const/high16 p0, 0x40000000    # 2.0f

    .line 34
    div-float/2addr p1, p0

    .line 36
    sub-float/2addr p3, p1

    .line 37
    return p3
    .line 38
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateTextDirection()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 19
    move-result v0

    .line 22
    const v1, 0x800005

    .line 23
    and-int/2addr v0, v1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 32
    sget-object v0, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    .line 35
    iput-object v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 37
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    return-void
    .line 42
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 5
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p2

    .line 16
    if-nez p2, :cond_6

    .line 17
    iget-object p2, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 19
    sget-object v0, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    .line 21
    if-ne p2, v0, :cond_0

    .line 23
    goto/16 :goto_2

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 27
    move-result p2

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 31
    move-result-object v0

    .line 34
    int-to-float v1, p2

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 36
    move-result v0

    .line 39
    cmpl-float v0, v1, v0

    .line 40
    if-nez v0, :cond_6

    .line 42
    iget-object v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    const/4 v2, 0x1

    .line 52
    if-eq v0, v2, :cond_4

    .line 53
    const/4 v3, 0x2

    .line 55
    if-eq v0, v3, :cond_1

    .line 56
    const/4 p1, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 60
    move-result p1

    .line 63
    if-ne p1, v2, :cond_3

    .line 64
    iget-boolean p1, p0, Lcom/miui/clock/MiuiTextGlassView;->centerIsNumber:Z

    .line 66
    if-eqz p1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 70
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getPercentages()[F

    .line 72
    move-result-object p1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 77
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getCHSPercentages()[F

    .line 79
    move-result-object p1

    .line 82
    :goto_0
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mCenterTextBoxWidth:I

    .line 83
    int-to-float v0, v0

    .line 85
    const/4 v4, 0x0

    .line 86
    aget v4, p1, v4

    .line 87
    aget v2, p1, v2

    .line 89
    add-float/2addr v4, v2

    .line 91
    aget v2, p1, v3

    .line 92
    add-float/2addr v4, v2

    .line 94
    const/4 v2, 0x3

    .line 95
    aget p1, p1, v2

    .line 96
    add-float/2addr v4, p1

    .line 98
    const/high16 p1, 0x40000000    # 2.0f

    .line 99
    mul-float/2addr v4, p1

    .line 101
    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    sub-float/2addr v4, p1

    .line 104
    mul-float/2addr v4, v0

    .line 105
    sub-float p1, v4, v1

    .line 106
    goto :goto_1

    .line 108
    :cond_3
    iget p1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftTextMeasureWidth:F

    .line 109
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mLeftTextBoxWidth:I

    .line 111
    iget-boolean v1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftIsNumber:Z

    .line 113
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/clock/MiuiTextGlassView;->getSlideExtraWidth(IFZ)F

    .line 115
    move-result p1

    .line 118
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->rightTextMeasureWidth:F

    .line 119
    iget v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mRightTextBoxWidth:I

    .line 121
    iget-boolean v2, p0, Lcom/miui/clock/MiuiTextGlassView;->rightIsNumber:Z

    .line 123
    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/clock/MiuiTextGlassView;->getSlideExtraWidth(IFZ)F

    .line 125
    move-result v0

    .line 128
    add-float/2addr p1, v0

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget p1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightTextMeasureWidth:F

    .line 131
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mRightTextBoxWidth:I

    .line 133
    iget-boolean v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightIsNumber:Z

    .line 135
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/clock/MiuiTextGlassView;->getSlideExtraWidth(IFZ)F

    .line 137
    move-result p1

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    iget p1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftTextMeasureWidth:F

    .line 142
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mLeftTextBoxWidth:I

    .line 144
    iget-boolean v1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftIsNumber:Z

    .line 146
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/clock/MiuiTextGlassView;->getSlideExtraWidth(IFZ)F

    .line 148
    move-result p1

    .line 151
    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 152
    add-float/2addr p1, v0

    .line 154
    float-to-int p1, p1

    .line 155
    add-int/2addr p2, p1

    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeightAndState()I

    .line 157
    move-result p1

    .line 160
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 161
    :cond_6
    :goto_2
    return-void
    .line 164
.end method

.method public setEnableDiffusion(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateDiffusionResource()V

    .line 2
    return-void
    .line 5
.end method

.method public setSameNumberWidth(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const-string/jumbo p1, "tnum"

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    const-string p1, ""

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 10
    return-void
    .line 13
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateDiffusionResource()V

    .line 5
    return-void
    .line 8
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateBoxWidth()V

    .line 5
    return-void
    .line 8
.end method

.method public setTimeLayoutDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/MiuiTextGlassView;->mCustomTextDirection:I

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiTextGlassView;->updateTextDirection()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateBoxWidth()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    move-result-object v0

    .line 5
    const-string/jumbo v1, "\u65f6"

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 9
    move-result v1

    .line 12
    float-to-double v1, v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 14
    move-result-wide v1

    .line 17
    double-to-int v1, v1

    .line 18
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthChs:I

    .line 19
    const-string v1, "0"

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 23
    move-result v0

    .line 26
    float-to-double v0, v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 28
    move-result-wide v0

    .line 31
    double-to-int v0, v0

    .line 32
    iput v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthNumber:I

    .line 33
    return-void
    .line 35
.end method

.method public final updateDiffusionResource()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 18
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v2, :cond_1

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 29
    move-result v2

    .line 32
    const v5, 0x800005

    .line 33
    and-int/2addr v2, v5

    .line 36
    if-ne v2, v5, :cond_0

    .line 37
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v4

    .line 41
    :cond_1
    :goto_0
    sget-object v2, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    .line 42
    iput-object v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    if-eq v2, v3, :cond_4

    .line 52
    const/4 v5, 0x2

    .line 54
    if-eq v2, v5, :cond_2

    .line 55
    return-void

    .line 57
    :cond_2
    if-ne v1, v3, :cond_3

    .line 58
    move v6, v3

    .line 60
    move v2, v4

    .line 61
    move v5, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v2, v3

    .line 64
    move v5, v2

    .line 65
    move v6, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move v5, v3

    .line 68
    move v2, v4

    .line 69
    move v6, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move v2, v3

    .line 72
    move v5, v4

    .line 73
    move v6, v5

    .line 74
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 75
    move-result-object v7

    .line 78
    if-eqz v2, :cond_7

    .line 79
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    move v8, v3

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move v8, v4

    .line 90
    :goto_2
    iput-boolean v8, p0, Lcom/miui/clock/MiuiTextGlassView;->leftIsNumber:Z

    .line 91
    iget-object v8, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {v7, v2, v4, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 95
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 98
    move-result v2

    .line 101
    iput v2, p0, Lcom/miui/clock/MiuiTextGlassView;->leftTextMeasureWidth:F

    .line 102
    iget-object v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 104
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 106
    int-to-float v8, v8

    .line 108
    iput v8, p0, Lcom/miui/clock/MiuiTextGlassView;->leftEmpty:F

    .line 109
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 111
    move-result v2

    .line 114
    iput v2, p0, Lcom/miui/clock/MiuiTextGlassView;->leftTextWidth:I

    .line 115
    iget-boolean v2, p0, Lcom/miui/clock/MiuiTextGlassView;->leftIsNumber:Z

    .line 117
    if-eqz v2, :cond_6

    .line 119
    iget v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthNumber:I

    .line 121
    goto :goto_3

    .line 123
    :cond_6
    iget v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthChs:I

    .line 124
    :goto_3
    iput v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mLeftTextBoxWidth:I

    .line 126
    :cond_7
    if-eqz v5, :cond_9

    .line 128
    add-int/lit8 v2, v1, -0x1

    .line 130
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 135
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    move v2, v3

    .line 139
    goto :goto_4

    .line 140
    :catch_1
    move v2, v4

    .line 141
    :goto_4
    iput-boolean v2, p0, Lcom/miui/clock/MiuiTextGlassView;->rightIsNumber:Z

    .line 142
    iget-object v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 144
    invoke-virtual {v7, v1, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 146
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 149
    move-result v1

    .line 152
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightTextMeasureWidth:F

    .line 153
    iget-object v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 155
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 157
    int-to-float v5, v5

    .line 159
    sub-float/2addr v1, v5

    .line 160
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightEmpty:F

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 163
    move-result v1

    .line 166
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightTextWidth:I

    .line 167
    iget-boolean v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightIsNumber:Z

    .line 169
    if-eqz v1, :cond_8

    .line 171
    iget v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthNumber:I

    .line 173
    goto :goto_5

    .line 175
    :cond_8
    iget v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthChs:I

    .line 176
    :goto_5
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mRightTextBoxWidth:I

    .line 178
    :cond_9
    if-eqz v6, :cond_b

    .line 180
    iget-object v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 182
    invoke-virtual {v7, v0, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 184
    iget-object v1, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 187
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 189
    int-to-float v1, v1

    .line 191
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftEmpty:F

    .line 192
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 194
    move-result v1

    .line 197
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightTextMeasureWidth:F

    .line 198
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftTextMeasureWidth:F

    .line 200
    iget-object v2, p0, Lcom/miui/clock/MiuiTextGlassView;->mBoundRect:Landroid/graphics/Rect;

    .line 202
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 204
    int-to-float v5, v5

    .line 206
    sub-float/2addr v1, v5

    .line 207
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightEmpty:F

    .line 208
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 210
    move-result v1

    .line 213
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->rightTextWidth:I

    .line 214
    iput v1, p0, Lcom/miui/clock/MiuiTextGlassView;->leftTextWidth:I

    .line 216
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    goto :goto_6

    .line 221
    :catch_2
    move v3, v4

    .line 222
    :goto_6
    iput-boolean v3, p0, Lcom/miui/clock/MiuiTextGlassView;->centerIsNumber:Z

    .line 223
    if-eqz v3, :cond_a

    .line 225
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthNumber:I

    .line 227
    goto :goto_7

    .line 229
    :cond_a
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mTextBoxWidthChs:I

    .line 230
    :goto_7
    iput v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mCenterTextBoxWidth:I

    .line 232
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 234
    return-void
    .line 237
.end method

.method public final updateTextDirection()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/MiuiTextGlassView;->mCustomTextDirection:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 6
    goto :goto_1

    .line 9
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x3

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 19
    :goto_1
    return-void
    .line 22
.end method
