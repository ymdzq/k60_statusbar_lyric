.class public Lmiuix/appcompat/app/ButtonForegroundDrawable;
.super Lmiuix/appcompat/app/AlphaBlendingDrawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    sget-object p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    .line 5
    const/4 v0, 0x0

    .line 7
    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p4, p3, p2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    move-result-object p1

    .line 18
    :goto_0
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 20
    move-result p3

    .line 23
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 24
    move-result p4

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    sget p1, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 31
    const/4 v1, -0x1

    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    const-string p1, "ro.miui.ui.version.code"

    .line 36
    invoke-static {p1, v0}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 38
    move-result p1

    .line 41
    sput p1, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 42
    :cond_1
    sget p1, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 44
    const/16 v1, 0xf

    .line 46
    if-lt p1, v1, :cond_2

    .line 48
    move v0, p2

    .line 50
    :cond_2
    if-eqz v0, :cond_4

    .line 51
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 53
    if-ne p1, p3, :cond_3

    .line 55
    goto :goto_1

    .line 57
    :cond_3
    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 60
    goto :goto_1

    .line 63
    :cond_4
    iget p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 64
    if-ne p1, p4, :cond_5

    .line 66
    goto :goto_1

    .line 68
    :cond_5
    iput p4, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 71
    :goto_1
    return-void
    .line 74
.end method
