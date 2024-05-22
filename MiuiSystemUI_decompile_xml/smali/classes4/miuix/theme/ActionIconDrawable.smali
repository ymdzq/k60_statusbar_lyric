.class public Lmiuix/theme/ActionIconDrawable;
.super Landroid/graphics/drawable/VectorDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final STATE_DISABLED:[I

.field private static final STATE_PRESSED:[I


# instance fields
.field private mDisabledAlpha:F

.field private mNormalAlpha:F

.field private mPressedAlpha:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, -0x101009e

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_DISABLED:[I

    .line 9
    const v0, 0x101009e    # @android:attr/state_enabled

    .line 11
    const v1, 0x10100a7    # @android:attr/state_pressed

    .line 14
    filled-new-array {v0, v1}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_PRESSED:[I

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 2
    const v0, 0x3f4ccccd    # 0.8f

    .line 5
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 8
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 12
    const v0, 0x3e99999a    # 0.3f

    .line 14
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 17
    return-void
    .line 19
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :goto_0
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconNormalAlpha:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 4
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconPressedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 5
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconDisabledAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iget p1, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    invoke-direct {p0, p1}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    return-void
.end method

.method private setAlphaF(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    .line 6
    return-void
    .line 9
.end method

.method private toDisabledState()Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 2
    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 4
    const/4 p0, 0x1

    .line 7
    return p0
    .line 8
.end method

.method private toNormalState()Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 2
    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 4
    const/4 p0, 0x1

    .line 7
    return p0
    .line 8
.end method

.method private toPressedState()Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 2
    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 4
    const/4 p0, 0x1

    .line 7
    return p0
    .line 8
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lmiuix/theme/ActionIconDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 5
    return-void
.end method

.method public isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->onStateChange([I)Z

    .line 2
    sget-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_DISABLED:[I

    .line 5
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toDisabledState()Z

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    sget-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_PRESSED:[I

    .line 18
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toPressedState()Z

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toNormalState()Z

    .line 31
    move-result p0

    .line 34
    return p0
    .line 35
.end method
