.class public final Lcom/google/android/setupdesign/template/RecyclerMixin;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public defaultDivider:Landroid/graphics/drawable/Drawable;

.field public divider:Landroid/graphics/drawable/Drawable;

.field public dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

.field public dividerInsetEnd:I

.field public dividerInsetStart:I

.field public final header:Landroid/view/View;

.field public final isDividerDisplay:Z

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->isDividerDisplay:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 8
    new-instance v1, Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 19
    iput-object p2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 25
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 28
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    instance-of v1, p2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    .line 34
    if-eqz v1, :cond_0

    .line 36
    move-object v1, p2

    .line 38
    check-cast v1, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    .line 41
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->header:Landroid/view/View;

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 50
    new-instance v2, Landroid/util/TypedValue;

    .line 51
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 56
    move-result-object v1

    .line 59
    const v3, 0x7f040771    # @attr/sudDividerShown

    .line 60
    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    iget v1, v2, Landroid/util/TypedValue;->data:I

    .line 66
    if-eqz v1, :cond_1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 72
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 82
    move-result-object p1

    .line 85
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_DIVIDER_SHOWN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 86
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 88
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 98
    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v2

    .line 105
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    .line 106
    move-result v0

    .line 109
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->isDividerDisplay:Z

    .line 110
    if-eqz v0, :cond_3

    .line 112
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 114
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 116
    :cond_3
    return-void
    .line 119
.end method


# virtual methods
.method public final parseAttributes(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerMixin:[I

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    new-instance v2, Lcom/google/android/setupdesign/items/ItemInflater;

    .line 21
    invoke-direct {v2, v1}, Lcom/google/android/setupdesign/items/ItemInflater;-><init>(Landroid/content/Context;)V

    .line 23
    iget-object v4, v2, Lcom/google/android/setupdesign/items/SimpleInflater;->resources:Landroid/content/res/Resources;

    .line 26
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 28
    move-result-object p2

    .line 31
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/google/android/setupdesign/items/SimpleInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    .line 32
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 36
    check-cast v2, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;

    .line 39
    instance-of p2, v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 41
    if-eqz p2, :cond_0

    .line 43
    move-object p2, v0

    .line 45
    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    .line 46
    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    .line 48
    move-result v4

    .line 51
    invoke-virtual {p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    .line 52
    move-result p2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p2, v3

    .line 57
    move v4, p2

    .line 58
    :goto_0
    new-instance v5, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    .line 59
    invoke-direct {v5, v2, v4, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;-><init>(Lcom/google/android/setupdesign/items/AbstractItemHierarchy;ZZ)V

    .line 61
    const/4 p2, 0x4

    .line 64
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 65
    move-result p2

    .line 68
    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 69
    iget-object p2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 79
    throw p0

    .line 82
    :cond_1
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->isDividerDisplay:Z

    .line 83
    if-nez p2, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void

    .line 90
    :cond_2
    const/4 p2, 0x1

    .line 91
    const/4 v2, -0x1

    .line 92
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 93
    move-result p2

    .line 96
    if-eq p2, v2, :cond_3

    .line 97
    invoke-virtual {p0, p2, v3}, Lcom/google/android/setupdesign/template/RecyclerMixin;->setDividerInsets(II)V

    .line 99
    goto :goto_2

    .line 102
    :cond_3
    const/4 p2, 0x3

    .line 103
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 104
    move-result p2

    .line 107
    const/4 v2, 0x2

    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 109
    move-result v2

    .line 112
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 113
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 119
    move-result-object v0

    .line 122
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 123
    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 125
    move-result v0

    .line 128
    const/4 v4, 0x0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 132
    move-result-object p2

    .line 135
    invoke-virtual {p2, v1, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 136
    move-result p2

    .line 139
    float-to-int p2, p2

    .line 140
    :cond_4
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 141
    move-result-object v0

    .line 144
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 145
    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 147
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 153
    move-result-object v0

    .line 156
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 157
    move-result v0

    .line 160
    float-to-int v2, v0

    .line 161
    :cond_5
    invoke-virtual {p0, p2, v2}, Lcom/google/android/setupdesign/template/RecyclerMixin;->setDividerInsets(II)V

    .line 162
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void
    .line 168
.end method

.method public final setDividerInsets(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetStart:I

    .line 2
    iput p2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetEnd:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->updateDivider()V

    .line 6
    return-void
    .line 9
.end method

.method public final updateDivider()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 10
    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 14
    iget-object v1, v1, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetStart:I

    .line 22
    iget v3, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetEnd:I

    .line 24
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IILcom/google/android/setupcompat/internal/TemplateLayout;)Landroid/graphics/drawable/InsetDrawable;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    .line 41
    iput-object v0, p0, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_1
    return-void
    .line 45
.end method
