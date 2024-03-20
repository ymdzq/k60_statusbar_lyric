.class public Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mTabSizeStages:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->getTabContainerHeight()I

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 9
    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p0

    .line 20
    const v1, 0x7f0709f1    # @dimen/miuix_appcompat_action_bar_tab_expand_text_size '32.0sp'

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result p0

    .line 27
    const/4 v1, 0x0

    .line 28
    aput p0, v0, v1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p0

    .line 34
    const v1, 0x7f0709f2    # @dimen/miuix_appcompat_action_bar_tab_expand_text_size_1 '26.0sp'

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result p0

    .line 41
    const/4 v1, 0x1

    .line 42
    aput p0, v0, v1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p0

    .line 48
    const p1, 0x7f0709f3    # @dimen/miuix_appcompat_action_bar_tab_expand_text_size_2 '20.0sp'

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    move-result p0

    .line 55
    const/4 p1, 0x2

    .line 56
    aput p0, v0, p1

    .line 57
    return-void
    .line 59
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .locals 0

    .line 1
    const p0, 0x7f04003f    # @attr/actionBarTabTextExpandStyle

    .line 2
    return p0
    .line 5
.end method

.method public getTabBarLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0d01e6    # @layout/miuix_appcompat_action_bar_tabbar_expand 'res/layout/miuix_appcompat_action_bar_tabbar_expand.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getTabContainerHeight()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public getTabViewLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0d01e2    # @layout/miuix_appcompat_action_bar_tab_expand 'res/layout/miuix_appcompat_action_bar_tab_expand.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getTabViewMarginHorizontal()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0709f0    # @dimen/miuix_appcompat_action_bar_tab_expand_margin '16.0dp'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 9
    move-result v1

    .line 12
    aget v3, v0, v2

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->getTabViewMarginHorizontal()I

    .line 15
    move-result v4

    .line 18
    move v5, v2

    .line 19
    :goto_0
    array-length v6, v0

    .line 20
    if-ge v5, v6, :cond_4

    .line 21
    aget v3, v0, v5

    .line 23
    const/4 v6, 0x0

    .line 25
    move v7, v2

    .line 26
    move v8, v7

    .line 27
    :goto_1
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 30
    move-result v9

    .line 33
    if-ge v7, v9, :cond_2

    .line 34
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 36
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v9

    .line 41
    check-cast v9, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 42
    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    .line 44
    move-result-object v9

    .line 47
    if-eqz v9, :cond_1

    .line 48
    if-nez v6, :cond_0

    .line 50
    new-instance v6, Landroid/text/TextPaint;

    .line 52
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 54
    move-result-object v10

    .line 57
    invoke-direct {v6, v10}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 58
    add-int/2addr v8, v4

    .line 61
    :cond_0
    int-to-float v10, v3

    .line 62
    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    int-to-float v8, v8

    .line 66
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 67
    move-result-object v9

    .line 70
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 71
    move-result-object v9

    .line 74
    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 75
    move-result v9

    .line 78
    add-float/2addr v9, v8

    .line 79
    float-to-int v8, v9

    .line 80
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    .line 84
    move-result v6

    .line 87
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 88
    move-result v7

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 92
    move-result v6

    .line 95
    if-gt v8, v6, :cond_3

    .line 96
    goto :goto_2

    .line 98
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 99
    goto :goto_0

    .line 101
    :cond_4
    :goto_2
    move v0, v2

    .line 102
    :goto_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 105
    move-result v1

    .line 108
    if-ge v0, v1, :cond_6

    .line 109
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 113
    move-result-object v1

    .line 116
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 117
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    .line 119
    move-result-object v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    int-to-float v4, v3

    .line 125
    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 129
    goto :goto_3

    .line 131
    :cond_6
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onMeasure(II)V

    .line 132
    return-void
    .line 135
.end method
