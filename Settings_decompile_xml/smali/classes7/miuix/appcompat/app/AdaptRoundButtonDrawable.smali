.class public Lmiuix/appcompat/app/AdaptRoundButtonDrawable;
.super Lmiuix/smooth/SmoothContainerDrawable2;
.source "AdaptRoundButtonDrawable.java"


# instance fields
.field private mCapsuleRaidus:F

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 38
    sget-object v0, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    invoke-static {p1, p3, p2, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mRadius:F

    .line 40
    sget p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonCapsuleRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mCapsuleRaidus:F

    .line 41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    .line 26
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable2;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 28
    invoke-static {}, Lmiuix/core/util/RomUtils;->isMiuiXVSdkSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mRadius:F

    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    goto :goto_0

    .line 33
    :cond_0
    iget p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mCapsuleRaidus:F

    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    :goto_0
    return-void
.end method
