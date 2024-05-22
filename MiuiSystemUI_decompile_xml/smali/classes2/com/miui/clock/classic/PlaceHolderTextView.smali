.class public Lcom/miui/clock/classic/PlaceHolderTextView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mRectPaint:Landroid/graphics/Paint;

.field public needDrawRect:Z

.field public rectHeight:I

.field public rectPadding:I

.field public rectRadius:I

.field public rectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/classic/PlaceHolderTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/classic/PlaceHolderTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/miui/clock/classic/PlaceHolderTextView;->init()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->needDrawRect:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    .line 9
    move-result v0

    .line 12
    iget v1, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectHeight:I

    .line 13
    sub-int/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectPadding:I

    .line 16
    mul-int/lit8 v1, v1, 0x2

    .line 18
    add-int/2addr v1, v0

    .line 20
    int-to-float v0, v1

    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 22
    div-float v4, v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    .line 26
    move-result v0

    .line 29
    const-string v1, "paddingStart = "

    .line 30
    const-string/jumbo v2, "zggg"

    .line 32
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectPadding:I

    .line 38
    int-to-float v3, v0

    .line 40
    iget v1, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectWidth:I

    .line 41
    sub-int/2addr v1, v0

    .line 43
    int-to-float v5, v1

    .line 44
    iget v1, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectHeight:I

    .line 45
    int-to-float v1, v1

    .line 47
    add-float/2addr v1, v4

    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 49
    int-to-float v0, v0

    .line 51
    sub-float v6, v1, v0

    .line 52
    iget v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectRadius:I

    .line 54
    int-to-float v7, v0

    .line 56
    int-to-float v8, v0

    .line 57
    iget-object v9, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->mRectPaint:Landroid/graphics/Paint;

    .line 58
    move-object v2, p1

    .line 60
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 61
    :cond_0
    return-void
    .line 64
.end method

.method public final getDimen(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 15
    move-result p0

    .line 18
    mul-float/2addr p0, p1

    .line 19
    float-to-int p0, p0

    .line 20
    return p0
    .line 21
.end method

.method public final init()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->mRectPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    .line 13
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->mRectPaint:Landroid/graphics/Paint;

    .line 20
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 27
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->needDrawRect:Z

    .line 35
    const v0, 0x7f0711f4    # @dimen/text_placeholder_width '46.0dp'

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/PlaceHolderTextView;->getDimen(I)I

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectWidth:I

    .line 44
    const v0, 0x7f0711f0    # @dimen/text_placeholder_height '24.0dp'

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/PlaceHolderTextView;->getDimen(I)I

    .line 49
    move-result v0

    .line 52
    iput v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectHeight:I

    .line 53
    const v0, 0x7f0711f2    # @dimen/text_placeholder_padding '2.0dp'

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/PlaceHolderTextView;->getDimen(I)I

    .line 58
    move-result v0

    .line 61
    iput v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectPadding:I

    .line 62
    const v0, 0x7f0711f3    # @dimen/text_placeholder_radius '4.0dp'

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/PlaceHolderTextView;->getDimen(I)I

    .line 67
    move-result v0

    .line 70
    iput v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectRadius:I

    .line 71
    iget-boolean v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->needDrawRect:Z

    .line 73
    const/4 v1, 0x0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectWidth:I

    .line 78
    goto :goto_0

    .line 80
    :cond_0
    move v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    return-void
    .line 85
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 5
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->needDrawRect:Z

    .line 13
    const/4 p2, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget p1, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->rectWidth:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move p1, p2

    .line 21
    :goto_0
    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 22
    return-void
    .line 25
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object p0, p0, Lcom/miui/clock/classic/PlaceHolderTextView;->mRectPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    return-void
    .line 10
.end method
