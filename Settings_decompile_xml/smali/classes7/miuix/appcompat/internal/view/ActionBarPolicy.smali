.class public Lmiuix/appcompat/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;
    .locals 1

    .line 25
    new-instance v0, Lmiuix/appcompat/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 1

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xe

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 0

    .line 42
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getStackedTabMaxWidth()I
    .locals 1

    .line 80
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_stacked_tab_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getTabContainerHeight()I
    .locals 6

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const v3, 0x10102f4    # @android:attr/actionBarTabBarStyle

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-gtz v5, :cond_0

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const v0, 0x10102ce    # @android:attr/actionBarStyle

    invoke-virtual {p0, v2, v1, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    .line 67
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return v5
.end method

.method public hasEmbeddedTabs()Z
    .locals 2

    .line 46
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->actionBarEmbedTabs:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public isTightTitle()Z
    .locals 2

    .line 50
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->actionBarTightTitle:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public isTitleEnableEllipsis()Z
    .locals 2

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->actionBarTitleEnableEllipsis:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public showsOverflowMenuButton()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
