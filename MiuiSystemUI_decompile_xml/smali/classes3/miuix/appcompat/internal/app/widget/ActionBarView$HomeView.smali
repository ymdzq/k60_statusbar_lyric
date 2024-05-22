.class Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field public mIconView:Landroid/widget/ImageView;

.field public mUpIndicatorRes:I

.field public mUpView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 12
    move-result-object p1

    .line 15
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
    .line 20
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0a34    # @id/up

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0a03fd    # @id/home

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 37
    filled-new-array {v0}, [Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 43
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 47
    move-result-object v0

    .line 50
    const/high16 v1, 0x42700000    # 60.0f

    .line 51
    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 56
    filled-new-array {v0}, [Landroid/view/View;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 62
    move-result-object v0

    .line 65
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 66
    move-result-object v0

    .line 69
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 70
    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 72
    move-result-object v0

    .line 75
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 76
    const/4 v1, 0x0

    .line 78
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 79
    invoke-interface {v0, p0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 81
    :cond_0
    return-void
    .line 84
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    sub-int/2addr p5, p3

    .line 2
    div-int/lit8 p5, p5, 0x2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 5
    move-result p1

    .line 8
    const/4 p3, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move v0, p3

    .line 14
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 17
    move-result p1

    .line 20
    const/16 v1, 0x8

    .line 21
    if-eq p1, v1, :cond_2

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 35
    move-result p3

    .line 38
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 41
    move-result v1

    .line 44
    div-int/lit8 v2, p3, 0x2

    .line 45
    sub-int v5, p5, v2

    .line 47
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 49
    const/4 v4, 0x0

    .line 51
    add-int v7, v5, p3

    .line 52
    move-object v2, p0

    .line 54
    move v6, v1

    .line 55
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 56
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 59
    add-int/2addr p3, v1

    .line 61
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 62
    add-int/2addr p3, p1

    .line 64
    if-eqz v0, :cond_1

    .line 65
    sub-int/2addr p4, p3

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    add-int/2addr p2, p3

    .line 69
    :cond_2
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 80
    move-result v0

    .line 83
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 86
    move-result v1

    .line 89
    sub-int/2addr p4, p2

    .line 90
    div-int/lit8 p4, p4, 0x2

    .line 91
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    .line 93
    move-result p2

    .line 96
    div-int/lit8 v2, v1, 0x2

    .line 97
    sub-int/2addr p4, v2

    .line 99
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 100
    move-result p2

    .line 103
    add-int v4, p2, p3

    .line 104
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 106
    div-int/lit8 p2, v0, 0x2

    .line 108
    sub-int/2addr p5, p2

    .line 110
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    .line 111
    move-result v5

    .line 114
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 115
    add-int v6, v4, v1

    .line 117
    add-int v7, v5, v0

    .line 119
    move-object v2, p0

    .line 121
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 122
    return-void
    .line 125
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 2
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v2, p1

    .line 7
    move v4, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 20
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 24
    move-result v2

    .line 27
    add-int/2addr v2, v1

    .line 28
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 29
    add-int/2addr v2, v1

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    .line 34
    move-result v1

    .line 37
    const/16 v4, 0x8

    .line 38
    if-ne v1, v4, :cond_0

    .line 40
    move v2, v3

    .line 42
    :cond_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 43
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 47
    move-result v5

    .line 50
    add-int/2addr v5, v1

    .line 51
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 52
    add-int/2addr v0, v5

    .line 54
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 55
    const/4 v10, 0x0

    .line 57
    move-object v5, p0

    .line 58
    move v7, p1

    .line 59
    move v8, v2

    .line 60
    move v9, p2

    .line 61
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 62
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 73
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 77
    move-result v6

    .line 80
    add-int/2addr v6, v5

    .line 81
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 82
    add-int/2addr v6, v5

    .line 84
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    .line 87
    move-result v5

    .line 90
    if-ne v5, v4, :cond_1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    move v3, v6

    .line 94
    :goto_0
    add-int/2addr v2, v3

    .line 95
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 96
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    .line 100
    move-result v4

    .line 103
    add-int/2addr v4, v3

    .line 104
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 105
    add-int/2addr v4, v1

    .line 107
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 108
    move-result v0

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 112
    move-result v1

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 116
    move-result v3

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 120
    move-result p1

    .line 123
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 124
    move-result p2

    .line 127
    const/high16 v4, 0x40000000    # 2.0f

    .line 128
    const/high16 v5, -0x80000000

    .line 130
    if-eq v1, v5, :cond_3

    .line 132
    if-eq v1, v4, :cond_2

    .line 134
    goto :goto_1

    .line 136
    :cond_2
    move v2, p1

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 139
    move-result v2

    .line 142
    :goto_1
    if-eq v3, v5, :cond_5

    .line 143
    if-eq v3, v4, :cond_4

    .line 145
    goto :goto_2

    .line 147
    :cond_4
    move v0, p2

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 150
    move-result v0

    .line 153
    :goto_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 154
    return-void
    .line 157
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setUpIndicator(I)V
    .locals 1

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    return-void
    .line 21
.end method
