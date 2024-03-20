.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isShown:Z

.field public final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field public final mCollapseAnimationListener:Lcom/android/systemui/qs/customize/QSCustomizer$1;

.field public mCustomizing:Z

.field public mIsShowingNavBackdrop:Z

.field public mOpening:Z

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mTransparentView:Landroid/view/View;

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Lcom/android/systemui/qs/customize/QSCustomizer$1;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object p1

    .line 19
    const p2, 0x7f0d02f5    # @layout/qs_customize_panel_content 'res/layout/qs_customize_panel_content.xml'

    .line 20
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    new-instance p1, Lcom/android/systemui/qs/QSDetailClipper;

    .line 26
    const p2, 0x7f0a027c    # @id/customize_container

    .line 28
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 38
    const p1, 0x10201c1    # @android:id/action_bar_container

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/Toolbar;

    .line 47
    new-instance p2, Landroid/util/TypedValue;

    .line 49
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 51
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 56
    move-result-object v0

    .line 59
    const v1, 0x101030b    # @android:attr/homeAsUpIndicator

    .line 60
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 64
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object v0

    .line 72
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 73
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 77
    move-result-object v1

    .line 80
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 88
    move-result-object p2

    .line 91
    const v0, 0x10408bc    # @android:string/status_bar_cdma_eri

    .line 92
    const/4 v1, 0x0

    .line 95
    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 96
    move-result-object p2

    .line 99
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    const p2, 0x7f130949    # @string/qs_edit 'Edit'

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 106
    :cond_0
    const p1, 0x102000a    # @android:id/list

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object p1

    .line 115
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    const p2, 0x7f0a027d    # @id/customizer_transparent_view

    .line 120
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p2

    .line 126
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    .line 127
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 129
    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 131
    const-wide/16 v0, 0x96

    .line 134
    iput-wide v0, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 136
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateTransparentViewHeight()V

    .line 141
    return-void
    .line 144
.end method

.method public static reloadAdapterTileHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lcom/android/systemui/qs/customize/TileAdapter;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f070ff4    # @dimen/qs_tile_height '88.0dp'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTempTextView:Landroid/widget/TextView;

    .line 21
    const v3, 0x7f071005    # @dimen/qs_tile_text_size '11.64sp'

    .line 23
    invoke-static {v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 26
    const/4 v3, 0x0

    .line 29
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result v3

    .line 33
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    const v3, 0x7f070fff    # @dimen/qs_tile_padding '12.0dp'

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v0

    .line 47
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 48
    move-result v2

    .line 51
    mul-int/lit8 v2, v2, 0x2

    .line 52
    mul-int/lit8 v0, v0, 0x2

    .line 54
    add-int/2addr v0, v2

    .line 56
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinTileViewHeight:I

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isShown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 2
    return p0
    .line 4
.end method

.method public setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 2
    return-void
    .line 4
.end method

.method public setEditLocation(II)V
    .locals 2

    .line 1
    const v0, 0x7f0a027c    # @id/customize_container

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget v1, v0, v1

    .line 14
    sub-int/2addr p1, v1

    .line 16
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 17
    const/4 p1, 0x1

    .line 19
    aget p1, v0, p1

    .line 20
    sub-int/2addr p2, p1

    .line 22
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 23
    return-void
    .line 25
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    return-void
    .line 4
.end method

.method public final updateNavBackDrop(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 5

    .line 1
    const v0, 0x7f0a0674    # @id/nav_bar_background

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 9
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x258

    .line 12
    const/4 v4, 0x0

    .line 14
    if-ge v1, v3, :cond_1

    .line 15
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 17
    const/4 v1, 0x2

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move p1, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move p1, v2

    .line 25
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    .line 26
    if-eqz v0, :cond_3

    .line 28
    if-eqz p1, :cond_2

    .line 30
    move p1, v4

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const/16 p1, 0x8

    .line 34
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    .line 39
    if-eqz p1, :cond_4

    .line 41
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 43
    if-eqz p0, :cond_4

    .line 45
    goto :goto_3

    .line 47
    :cond_4
    move v2, v4

    .line 48
    :goto_3
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 49
    if-ne p0, v2, :cond_5

    .line 51
    goto :goto_4

    .line 53
    :cond_5
    iput-boolean v2, p2, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 54
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 56
    :goto_4
    return-void
    .line 59
.end method

.method public final updateTransparentViewHeight()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    .line 24
    move-result v1

    .line 27
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    return-void
    .line 35
.end method
