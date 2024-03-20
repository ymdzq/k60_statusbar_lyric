.class public Lmiuix/theme/ActionIconDrawable;
.super Landroid/graphics/drawable/VectorDrawable;
.source "ActionIconDrawable.java"


# static fields
.field private static final STATE_DISABLED:[I

.field private static final STATE_PRESSED:[I


# instance fields
.field private mActionIconHeight:I

.field private mActionIconWidth:I

.field private mDisabledAlpha:F

.field private mNormalAlpha:F

.field private mPressedAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, -0x101009e

    .line 16
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_DISABLED:[I

    const v0, 0x101009e    # @android:attr/state_enabled

    const v1, 0x10100a7    # @android:attr/state_pressed

    .line 17
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 19
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 20
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    const v0, 0x3e99999a    # 0.3f

    .line 21
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 37
    sget-object p1, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    sget-object p3, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    :goto_0
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconNormalAlpha:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 42
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconPressedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 43
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconDisabledAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 44
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    .line 45
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    iget p1, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    invoke-direct {p0, p1}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    return-void
.end method

.method private setAlphaF(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 121
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    return-void
.end method

.method private toDisabledState()Z
    .locals 1

    .line 105
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    const/4 p0, 0x1

    return p0
.end method

.method private toNormalState()Z
    .locals 1

    .line 116
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    const/4 p0, 0x1

    return p0
.end method

.method private toPressedState()Z
    .locals 1

    .line 111
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 70
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    if-eqz v1, :cond_0

    .line 71
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 72
    iget v1, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    .line 76
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 61
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    if-nez v0, :cond_0

    .line 62
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 52
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p3, p4}, Lmiuix/theme/ActionIconDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->onStateChange([I)Z

    .line 94
    sget-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_DISABLED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toDisabledState()Z

    move-result p0

    return p0

    .line 97
    :cond_0
    sget-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toPressedState()Z

    move-result p0

    return p0

    .line 100
    :cond_1
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toNormalState()Z

    move-result p0

    return p0
.end method
