.class public final Lcom/google/android/setupdesign/template/ListMixin;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public defaultDivider:Landroid/graphics/drawable/Drawable;

.field public divider:Landroid/graphics/drawable/Drawable;

.field public dividerInsetEnd:I

.field public dividerInsetStart:I

.field public listView:Landroid/widget/ListView;

.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudListMixin:[I

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 18
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    new-instance v1, Lcom/google/android/setupdesign/items/ItemInflater;

    .line 24
    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/items/ItemInflater;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v3, v1, Lcom/google/android/setupdesign/items/SimpleInflater;->resources:Landroid/content/res/Resources;

    .line 29
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 31
    move-result-object p3

    .line 34
    :try_start_0
    invoke-virtual {v1, p3}, Lcom/google/android/setupdesign/items/SimpleInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    .line 35
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 39
    check-cast v1, Lcom/google/android/setupdesign/items/ItemGroup;

    .line 42
    new-instance p3, Lcom/google/android/setupdesign/items/ItemAdapter;

    .line 44
    invoke-direct {p3, v1}, Lcom/google/android/setupdesign/items/ItemAdapter;-><init>(Lcom/google/android/setupdesign/items/ItemGroup;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    .line 49
    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 60
    throw p0

    .line 63
    :cond_0
    :goto_0
    const/4 p3, 0x4

    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 66
    move-result p3

    .line 69
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 70
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 76
    move-result-object v3

    .line 79
    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_DIVIDER_SHOWN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 80
    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 88
    move-result-object p3

    .line 91
    invoke-virtual {p3, v0, v4, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    .line 92
    move-result p3

    .line 95
    :cond_1
    if-eqz p3, :cond_5

    .line 96
    const/4 p3, -0x1

    .line 98
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 99
    move-result v1

    .line 102
    if-eq v1, p3, :cond_2

    .line 103
    invoke-virtual {p0, v1, v2}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    .line 105
    goto :goto_1

    .line 108
    :cond_2
    const/4 p3, 0x3

    .line 109
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 110
    move-result p3

    .line 113
    const/4 v1, 0x2

    .line 114
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 115
    move-result v1

    .line 118
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 119
    move-result p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 125
    move-result-object p1

    .line 128
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 129
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 131
    move-result p1

    .line 134
    const/4 v3, 0x0

    .line 135
    if-eqz p1, :cond_3

    .line 136
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 138
    move-result-object p1

    .line 141
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 142
    move-result p1

    .line 145
    float-to-int p3, p1

    .line 146
    :cond_3
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 147
    move-result-object p1

    .line 150
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 151
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 153
    move-result p1

    .line 156
    if-eqz p1, :cond_4

    .line 157
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 159
    move-result-object p1

    .line 162
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 163
    move-result p1

    .line 166
    float-to-int v1, p1

    .line 167
    :cond_4
    invoke-virtual {p0, p3, v1}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    .line 168
    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    .line 172
    move-result-object p0

    .line 175
    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    return-void
    .line 183
.end method


# virtual methods
.method public final getListViewInternal()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->listView:Landroid/widget/ListView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 6
    const v1, 0x102000a    # @android:id/list

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    instance-of v1, v0, Landroid/widget/ListView;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Landroid/widget/ListView;

    .line 19
    iput-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->listView:Landroid/widget/ListView;

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->listView:Landroid/widget/ListView;

    .line 23
    return-object p0
    .line 25
.end method

.method public final setDividerInsets(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    .line 2
    iput p2, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetEnd:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->updateDivider()V

    .line 6
    return-void
    .line 9
.end method

.method public final updateDivider()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/google/android/setupdesign/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 17
    if-nez v2, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/google/android/setupdesign/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/google/android/setupdesign/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 27
    if-eqz v2, :cond_2

    .line 29
    iget v3, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    .line 31
    iget v4, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetEnd:I

    .line 33
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IILcom/google/android/setupcompat/internal/TemplateLayout;)Landroid/graphics/drawable/InsetDrawable;

    .line 35
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/google/android/setupdesign/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_2
    return-void
    .line 44
.end method
