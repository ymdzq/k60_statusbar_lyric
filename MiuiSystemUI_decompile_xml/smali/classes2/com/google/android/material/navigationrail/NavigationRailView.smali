.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public headerView:Landroid/view/View;

.field public final paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

.field public final paddingTopSystemWindowInsets:Ljava/lang/Boolean;

.field public final topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040570    # @attr/navigationRailStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const v0, 0x7f140812    # @style/Widget.MaterialComponents.NavigationRailView

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 5
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ccb    # @dimen/mtrl_navigation_rail_margin '8.0dp'

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationRailView:[I

    const/4 v7, 0x0

    new-array v6, v7, [I

    const v5, 0x7f140812    # @style/Widget.MaterialComponents.NavigationRailView

    move-object v2, p2

    move v4, p3

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v7, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    const/16 v1, 0x31

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 13
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 15
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 16
    :cond_0
    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 17
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    invoke-virtual {p0, p3, v7, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 p1, 0x2

    .line 21
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    .line 24
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemMinimumHeight(I)V

    :cond_2
    const/4 p1, 0x4

    .line 26
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 27
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    :cond_3
    const/4 p1, 0x3

    .line 28
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 29
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 30
    :cond_4
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 31
    new-instance p1, Lcom/google/android/material/navigationrail/NavigationRailView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigationrail/NavigationRailView$1;-><init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 6
    return-object p0
    .line 8
.end method


# virtual methods
.method public final createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public getItemMinimumHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemMinimumHeight()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public getMaxItemCount()I
    .locals 0

    .line 1
    const/4 p0, 0x7

    .line 2
    return p0
    .line 3
.end method

.method public getMenuGravity()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenuGravity()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 5
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 9
    const/4 p3, 0x1

    .line 11
    const/4 p4, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p2

    .line 18
    const/16 p5, 0x8

    .line 19
    if-eq p2, p5, :cond_0

    .line 21
    move p2, p3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p2, p4

    .line 25
    :goto_0
    if-eqz p2, :cond_1

    .line 26
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 30
    move-result p2

    .line 33
    iget p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    .line 34
    add-int/2addr p2, p0

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    .line 37
    move-result p0

    .line 40
    if-ge p0, p2, :cond_3

    .line 41
    sub-int p4, p2, p0

    .line 43
    goto :goto_2

    .line 45
    :cond_1
    iget-object p2, p1, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    and-int/lit8 p2, p2, 0x70

    .line 50
    const/16 p5, 0x30

    .line 52
    if-ne p2, p5, :cond_2

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    move p3, p4

    .line 57
    :goto_1
    if-eqz p3, :cond_3

    .line 58
    iget p4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    .line 60
    :cond_3
    :goto_2
    if-lez p4, :cond_4

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    .line 64
    move-result p0

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    .line 68
    move-result p2

    .line 71
    add-int/2addr p2, p4

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    .line 73
    move-result p3

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    .line 77
    move-result p5

    .line 80
    add-int/2addr p5, p4

    .line 81
    invoke-virtual {p1, p0, p2, p3, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 82
    :cond_4
    return-void
    .line 85
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    move-result v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    if-eq v1, v2, :cond_0

    .line 12
    if-lez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 16
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 20
    move-result v3

    .line 23
    add-int/2addr v3, v1

    .line 24
    add-int/2addr v3, v0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    move-result p1

    .line 29
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p1

    .line 33
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p1

    .line 37
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 38
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 41
    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 45
    move-result p2

    .line 48
    const/16 v0, 0x8

    .line 49
    if-eq p2, v0, :cond_1

    .line 51
    const/4 p2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 58
    move-result p2

    .line 61
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    move-result v0

    .line 67
    sub-int/2addr p2, v0

    .line 68
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    .line 69
    sub-int/2addr p2, v0

    .line 71
    const/high16 v0, -0x80000000

    .line 72
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result p2

    .line 77
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 82
    :cond_2
    return-void
    .line 85
.end method

.method public setItemMinimumHeight(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    .line 8
    return-void
    .line 11
.end method

.method public setMenuGravity(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 2
    move-result-object p0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    if-eq v1, p1, :cond_0

    .line 10
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
