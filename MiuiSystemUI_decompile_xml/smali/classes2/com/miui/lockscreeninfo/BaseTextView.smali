.class public Lcom/miui/lockscreeninfo/BaseTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public a:Z

.field public b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/miui/lockscreeninfo/c;->a(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public a(Lcom/miui/lockscreeninfo/model/SignatureInfo;)V
    .locals 9

    iput-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    iget v2, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->textsize:I

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0}, Lcom/miui/lockscreeninfo/c;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 4
    iget v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lines:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    iget v0, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->letterSpaceValue:F

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const v0, 0x7f0705e9    # @dimen/lineheight '85.0dp'

    invoke-virtual {p0, v0}, Lcom/miui/lockscreeninfo/BaseTextView;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    new-instance v0, Landroid/text/SpannableString;

    .line 8
    iget-object v2, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->content:Ljava/lang/String;

    .line 9
    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->content:Ljava/lang/String;

    .line 11
    new-instance v3, Landroid/graphics/Typeface$Builder;

    const-string v4, "ro.miui.ui.font.mi_font_path"

    const-string v5, "/system/fonts/MiSansVF.ttf"

    invoke-static {v4, v5}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "\'wght\' 430"

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v3

    sget-boolean v4, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v4, v1

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_c

    aget-char v5, v2, v4

    const/16 v6, 0x600

    const/4 v7, 0x1

    if-lt v5, v6, :cond_2

    const/16 v6, 0x6ff

    if-gt v5, v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-eqz v6, :cond_3

    goto/16 :goto_8

    :cond_3
    const/16 v6, 0xf00

    if-lt v5, v6, :cond_4

    const/16 v6, 0xfff

    if-gt v5, v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    if-eqz v6, :cond_5

    goto :goto_8

    :cond_5
    invoke-static {v5}, Lcom/miui/lockscreeninfo/c;->c(I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_8

    :cond_6
    aget-char v5, v2, v4

    .line 12
    invoke-static {v5}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_8

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_8

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_8

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    move v5, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v5, v7

    :goto_5
    const/16 v6, 0x21

    if-eqz v5, :cond_9

    .line 13
    new-instance v5, Landroid/text/style/TypefaceSpan;

    invoke-direct {v5, v3}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    :goto_6
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v5, v4, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_9
    aget-char v5, v2, v4

    const/16 v8, 0x20

    if-lt v5, v8, :cond_a

    const/16 v8, 0x7e

    if-gt v5, v8, :cond_a

    goto :goto_7

    :cond_a
    move v7, v1

    :goto_7
    if-eqz v7, :cond_b

    new-instance v5, Landroid/text/style/TypefaceSpan;

    .line 14
    iget-object v7, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->fontFamily:Ljava/lang/String;

    .line 15
    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->c:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    if-eqz p1, :cond_d

    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->c:Z

    invoke-virtual {p0, p1}, Lcom/miui/lockscreeninfo/BaseTextView;->a(Lcom/miui/lockscreeninfo/model/SignatureInfo;)V

    :cond_d
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/text/Layout;->getBottomPadding()I

    .line 9
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    return-void
    .line 24
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const-string p2, "magazine_b"

    .line 9
    iget-object p1, p1, Lcom/miui/lockscreeninfo/model/SignatureInfo;->templateId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    .line 23
    move-result p2

    .line 26
    iget-object p3, p0, Lcom/miui/lockscreeninfo/BaseTextView;->b:Lcom/miui/lockscreeninfo/model/SignatureInfo;

    .line 27
    iget p3, p3, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lines:I

    .line 29
    if-le p2, p3, :cond_0

    .line 31
    add-int/lit8 p3, p3, -0x1

    .line 33
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    .line 35
    move-result p1

    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 39
    move-result-object p2

    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-interface {p2, p3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 44
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    return-void
    .line 51
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/lockscreeninfo/BaseTextView;->a:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p1, -0x1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    return-void
    .line 10
.end method
