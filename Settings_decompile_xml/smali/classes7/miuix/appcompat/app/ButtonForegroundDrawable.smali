.class public Lmiuix/appcompat/app/ButtonForegroundDrawable;
.super Lmiuix/appcompat/app/AlphaBlendingDrawable;
.source "ButtonForegroundDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;-><init>()V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 26
    sget-object p1, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_0
    sget-object p3, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    :goto_0
    sget p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 31
    sget p3, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonCapsuleRadius:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-static {}, Lmiuix/core/util/RomUtils;->isMiuiXVSdkSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 20
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/ButtonForegroundDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method
