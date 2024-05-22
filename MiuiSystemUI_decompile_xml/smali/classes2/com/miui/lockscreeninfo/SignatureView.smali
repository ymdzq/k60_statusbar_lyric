.class public Lcom/miui/lockscreeninfo/SignatureView;
.super Lcom/miui/lockscreeninfo/VerticalTextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/lockscreeninfo/SignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/lockscreeninfo/SignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/lockscreeninfo/VerticalTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/lockscreeninfo/model/SignatureInfo;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v1

    .line 30
    iget v2, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->textsize:I

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 33
    move-result v1

    .line 36
    invoke-static {v0}, Lcom/miui/lockscreeninfo/c;->a(Landroid/content/Context;)F

    .line 37
    move-result v0

    .line 40
    mul-float/2addr v0, v1

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1, v0}, Lcom/miui/lockscreeninfo/VerticalTextView;->setTextSize(IF)V

    .line 43
    iget-object v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->content:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->alignment:I

    .line 51
    invoke-virtual {p0, v0}, Lcom/miui/lockscreeninfo/VerticalTextView;->setGravity(I)V

    .line 53
    iget-boolean v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->verticalMode:Z

    .line 56
    const/4 v2, 0x0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    iget v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->letterSpaceValue:F

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/lockscreeninfo/VerticalTextView;->setCJKVerticalSpace(F)V

    .line 63
    iget v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lineSpaceValue:F

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    iget v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->letterSpaceValue:F

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 71
    const v0, 0x7f0705ea    # @dimen/linespacing_h '17.0dp'

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/lockscreeninfo/BaseTextView;->a(I)I

    .line 77
    move-result v0

    .line 80
    int-to-float v0, v0

    .line 81
    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 82
    const-string v0, "\'liga\' off"

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 87
    iget-object v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->fontFamily:Ljava/lang/String;

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    :try_start_0
    iget-object v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->fontFamily:Ljava/lang/String;

    .line 98
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 100
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-object v2, Lcom/miui/lockscreeninfo/VerticalTextView;->j:Ljava/lang/String;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    const-string v4, "init: "

    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 125
    move-result-object v0

    .line 128
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    iget p1, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lines:I

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 134
    return-void
    .line 137
.end method
