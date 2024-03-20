.class public Lcom/google/android/setupdesign/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public backButton:Landroid/widget/Button;

.field public moreButton:Landroid/widget/Button;

.field public nextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public static getThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    .line 1
    const v0, 0x1010031    # @android:attr/colorBackground

    .line 2
    const v1, 0x7f0407a0    # @attr/sudNavBarTheme

    .line 5
    const v2, 0x1010030    # @android:attr/colorForeground

    .line 8
    filled-new-array {v1, v2, v0}, [I

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    const/4 v2, 0x3

    .line 26
    new-array v3, v2, [F

    .line 27
    new-array v2, v2, [F

    .line 29
    const/4 v4, 0x1

    .line 31
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 32
    move-result v5

    .line 35
    invoke-static {v5, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 36
    const/4 v5, 0x2

    .line 39
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 40
    move-result v6

    .line 43
    invoke-static {v6, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 44
    aget v3, v3, v5

    .line 47
    aget v2, v2, v5

    .line 49
    cmpl-float v2, v3, v2

    .line 51
    if-lez v2, :cond_0

    .line 53
    move v1, v4

    .line 55
    :cond_0
    if-eqz v1, :cond_1

    .line 56
    const v1, 0x7f14034e    # @style/SudNavBarThemeDark

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    const v1, 0x7f14034f    # @style/SudNavBarThemeLight

    .line 62
    :goto_0
    move v2, v1

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 69
    invoke-direct {v0, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 71
    return-object v0
    .line 74
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->backButton:Landroid/widget/Button;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMoreButton()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->moreButton:Landroid/widget/Button;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->nextButton:Landroid/widget/Button;

    .line 2
    return-object p0
    .line 4
.end method

.method public final init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    const v1, 0x7f0d039e    # @layout/sud_navbar_view 'res/layout/sud_navbar_view.xml'

    .line 13
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    const v0, 0x7f0a092b    # @id/sud_navbar_next

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->nextButton:Landroid/widget/Button;

    .line 28
    const v0, 0x7f0a0929    # @id/sud_navbar_back

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/Button;

    .line 37
    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->backButton:Landroid/widget/Button;

    .line 39
    const v0, 0x7f0a092a    # @id/sud_navbar_more

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/Button;

    .line 48
    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->moreButton:Landroid/widget/Button;

    .line 50
    return-void
    .line 52
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setNavigationBarListener(Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
