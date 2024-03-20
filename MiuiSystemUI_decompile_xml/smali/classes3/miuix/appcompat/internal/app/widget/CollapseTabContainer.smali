.class public Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;->getTabContainerHeight()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .locals 0

    .line 1
    const p0, 0x10102f5    # @android:attr/actionBarTabTextStyle

    .line 2
    return p0
    .line 5
.end method

.method public getTabBarLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0d01e4    # @layout/miuix_appcompat_action_bar_tabbar 'res/layout/miuix_appcompat_action_bar_tabbar.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getTabContainerHeight()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 6
    const/4 v1, 0x0

    .line 8
    const v2, 0x10102f4    # @android:attr/actionBarTabBarStyle

    .line 9
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    move-result-object v2

    .line 16
    const/4 v4, 0x5

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 18
    move-result v5

    .line 21
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    if-gtz v5, :cond_0

    .line 25
    const v2, 0x10102ce    # @android:attr/actionBarStyle

    .line 27
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0, v4, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 34
    move-result v5

    .line 37
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    :cond_0
    return v5
    .line 41
.end method

.method public getTabViewLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0d01e1    # @layout/miuix_appcompat_action_bar_tab 'res/layout/miuix_appcompat_action_bar_tab.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getTabViewMarginHorizontal()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    .line 5
    move-result p1

    .line 8
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 11
    move-result p3

    .line 14
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 17
    move-result p4

    .line 20
    sub-int/2addr p1, p3

    .line 21
    div-int/lit8 p1, p1, 0x2

    .line 22
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 24
    add-int/2addr p3, p1

    .line 26
    invoke-virtual {p0, p2, p1, p4, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 27
    return-void
    .line 30
.end method
