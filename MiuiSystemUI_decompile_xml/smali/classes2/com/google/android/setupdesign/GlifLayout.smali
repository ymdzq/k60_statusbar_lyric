.class public Lcom/google/android/setupdesign/GlifLayout;
.super Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public applyPartnerHeavyThemeResource:Z

.field public backgroundBaseColor:Landroid/content/res/ColorStateList;

.field public backgroundPatterned:Z

.field public primaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    const/4 p1, 0x0

    const p2, 0x7f040794    # @attr/sudLayoutTheme

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    const p1, 0x7f040794    # @attr/sudLayoutTheme

    .line 10
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout:[I

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 21
    move-result v1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 25
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    move v1, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 37
    new-instance v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 39
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 41
    const-class v3, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 44
    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 46
    new-instance v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 49
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 51
    const-class v3, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 54
    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 56
    new-instance v1, Lcom/google/android/setupdesign/template/IconMixin;

    .line 59
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/IconMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 61
    const-class v3, Lcom/google/android/setupdesign/template/IconMixin;

    .line 64
    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 66
    new-instance v1, Lcom/google/android/setupdesign/template/ProfileMixin;

    .line 69
    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/ProfileMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 71
    const-class v3, Lcom/google/android/setupdesign/template/ProfileMixin;

    .line 74
    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 76
    new-instance v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 79
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 81
    const-class p1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 84
    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 86
    new-instance p1, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    .line 89
    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;-><init>(Lcom/google/android/setupdesign/GlifLayout;)V

    .line 91
    const-class p2, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    .line 94
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 96
    new-instance p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 99
    invoke-direct {p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>()V

    .line 101
    const-class p2, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 104
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    .line 109
    move-result-object p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    instance-of p2, p1, Lcom/google/android/setupdesign/view/BottomScrollView;

    .line 115
    if-eqz p2, :cond_2

    .line 117
    check-cast p1, Lcom/google/android/setupdesign/view/BottomScrollView;

    .line 119
    goto :goto_1

    .line 121
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "Cannot set non-BottomScrollView. Found="

    .line 124
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 135
    const-string p2, "ScrollViewDelegate"

    .line 136
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    :goto_1
    const/4 p1, 0x2

    .line 141
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 142
    move-result-object p1

    .line 145
    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    .line 151
    move-result p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    .line 157
    move-result p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 164
    move-result-object p1

    .line 167
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 168
    move-result-object p1

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 172
    move-result-object p2

    .line 175
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 176
    invoke-virtual {p1, p2, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    .line 178
    move-result p1

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 182
    move-result-object p2

    .line 185
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    :cond_6
    :goto_2
    const p1, 0x7f0a091a    # @id/sud_layout_content

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 192
    move-result-object p1

    .line 195
    if-eqz p1, :cond_8

    .line 196
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 198
    move-result p2

    .line 201
    if-eqz p2, :cond_7

    .line 202
    invoke-static {p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    .line 204
    :cond_7
    instance-of p2, p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 207
    if-nez p2, :cond_8

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V

    .line 211
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 217
    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 221
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 224
    move-result p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundPatterned(Z)V

    .line 228
    const/4 p1, 0x3

    .line 231
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 232
    move-result p1

    .line 235
    if-eqz p1, :cond_9

    .line 236
    const p2, 0x7f0a0926    # @id/sud_layout_sticky_header

    .line 238
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 241
    move-result-object p0

    .line 244
    check-cast p0, Landroid/view/ViewStub;

    .line 245
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 250
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    return-void
    .line 256
.end method

.method public static isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 13
    move-result-object p0

    .line 16
    iget-object v0, v0, Landroidx/window/embedding/ActivityEmbeddingController;->backend:Landroidx/window/embedding/EmbeddingBackend;

    .line 17
    check-cast v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    .line 19
    iget-object v0, v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    check-cast v0, Landroidx/window/embedding/EmbeddingCompat;

    .line 25
    iget-object v0, v0, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 27
    invoke-interface {v0, p0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->isActivityEmbedded(Landroid/app/Activity;)Z

    .line 29
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p0, v1

    .line 34
    :goto_0
    if-eqz p0, :cond_1

    .line 35
    const/4 v1, 0x1

    .line 37
    :cond_1
    return v1
    .line 38
.end method


# virtual methods
.method public findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const p1, 0x7f0a091a    # @id/sud_layout_content

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->findContainer(I)Landroid/view/ViewGroup;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDescriptionText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return-object p0
    .line 22
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return-object p0
    .line 22
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return-object p0
    .line 22
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/IconMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return-object p0
    .line 22
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 1
    const v0, 0x7f0a092f    # @id/sud_scroll_view

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    instance-of v0, p0, Landroid/widget/ScrollView;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Landroid/widget/ScrollView;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0
    .line 17
.end method

.method public final onFinishInflate()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    const-class v1, Lcom/google/android/setupdesign/template/IconMixin;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/setupdesign/template/IconMixin;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/IconMixin;->tryApplyPartnerCustomizationStyle()V

    .line 15
    const-class v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryApplyPartnerCustomizationStyle()V

    .line 26
    const-class v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 35
    iget-object v1, v1, Lcom/google/android/setupdesign/template/DescriptionMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 37
    const v2, 0x7f0a0927    # @id/sud_layout_subtitle

    .line 39
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Landroid/widget/TextView;

    .line 46
    sget-object v12, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 48
    sget-object v13, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 50
    sget-object v14, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 52
    sget-object v15, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 54
    sget-object v16, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 56
    if-eqz v2, :cond_0

    .line 58
    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 60
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    .line 66
    sget-object v9, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 68
    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 70
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v3

    .line 75
    invoke-static {v3}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 76
    move-result v11

    .line 79
    move-object v3, v1

    .line 80
    move-object/from16 v4, v16

    .line 81
    move-object v5, v15

    .line 83
    move-object v6, v14

    .line 84
    move-object v7, v13

    .line 85
    move-object v8, v12

    .line 86
    invoke-direct/range {v3 .. v11}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 87
    invoke-static {v2, v1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 90
    :cond_0
    const-class v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 95
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 99
    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    .line 101
    move-result-object v2

    .line 104
    iget-boolean v3, v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    .line 105
    const/4 v4, 0x0

    .line 107
    if-eqz v3, :cond_7

    .line 108
    if-nez v2, :cond_1

    .line 110
    goto/16 :goto_1

    .line 112
    :cond_1
    iget-object v1, v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 114
    instance-of v3, v1, Lcom/google/android/setupdesign/GlifLayout;

    .line 116
    if-nez v3, :cond_2

    .line 118
    move v1, v4

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    check-cast v1, Lcom/google/android/setupdesign/GlifLayout;

    .line 122
    invoke-virtual {v1}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    .line 124
    move-result v1

    .line 127
    :goto_0
    const v3, 0x7f0711ba    # @dimen/sud_progress_bar_margin_bottom '-7.0dp'

    .line 128
    const v5, 0x7f0711bc    # @dimen/sud_progress_bar_margin_top '-7.0dp'

    .line 131
    if-eqz v1, :cond_6

    .line 134
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v1

    .line 139
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    move-result-object v2

    .line 143
    instance-of v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    if-eqz v6, :cond_7

    .line 146
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 150
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 152
    move-result-object v7

    .line 155
    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_BAR_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 156
    invoke-virtual {v7, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 158
    move-result v7

    .line 161
    if-eqz v7, :cond_3

    .line 162
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 164
    move-result-object v6

    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v7

    .line 171
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 172
    move-result v5

    .line 175
    invoke-virtual {v6, v1, v8, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 176
    move-result v5

    .line 179
    float-to-int v6, v5

    .line 180
    :cond_3
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 181
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 183
    move-result-object v7

    .line 186
    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_BAR_MARGIN_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 187
    invoke-virtual {v7, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 189
    move-result v7

    .line 192
    if-eqz v7, :cond_4

    .line 193
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 195
    move-result-object v5

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    move-result-object v7

    .line 202
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 203
    move-result v3

    .line 206
    invoke-virtual {v5, v1, v8, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 207
    move-result v1

    .line 210
    float-to-int v5, v1

    .line 211
    :cond_4
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 212
    if-ne v6, v1, :cond_5

    .line 214
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 216
    if-eq v5, v1, :cond_7

    .line 218
    :cond_5
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 220
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 222
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 224
    goto :goto_1

    .line 227
    :cond_6
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    .line 228
    move-result-object v1

    .line 231
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 232
    move-result-object v2

    .line 235
    instance-of v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    if-eqz v6, :cond_7

    .line 238
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 240
    move-result-object v6

    .line 243
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 244
    move-result v5

    .line 247
    float-to-int v5, v5

    .line 248
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    move-result-object v1

    .line 252
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 253
    move-result v1

    .line 256
    float-to-int v1, v1

    .line 257
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 258
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 260
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 262
    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 264
    :cond_7
    :goto_1
    const-class v1, Lcom/google/android/setupdesign/template/ProfileMixin;

    .line 267
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 269
    move-result-object v1

    .line 272
    check-cast v1, Lcom/google/android/setupdesign/template/ProfileMixin;

    .line 273
    iget-object v1, v1, Lcom/google/android/setupdesign/template/ProfileMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 275
    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 277
    move-result v2

    .line 280
    if-eqz v2, :cond_b

    .line 281
    const v2, 0x7f0a0906    # @id/sud_account_avatar

    .line 283
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 286
    move-result-object v2

    .line 289
    check-cast v2, Landroid/widget/ImageView;

    .line 290
    const v3, 0x7f0a0907    # @id/sud_account_name

    .line 292
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 295
    move-result-object v3

    .line 298
    check-cast v3, Landroid/widget/TextView;

    .line 299
    const v5, 0x7f0a0922    # @id/sud_layout_profile

    .line 301
    invoke-virtual {v1, v5}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 304
    move-result-object v5

    .line 307
    check-cast v5, Landroid/widget/LinearLayout;

    .line 308
    const v6, 0x7f0a091d    # @id/sud_layout_header

    .line 310
    invoke-virtual {v1, v6}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 313
    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    .line 317
    if-eqz v2, :cond_b

    .line 320
    if-nez v3, :cond_8

    .line 322
    goto :goto_2

    .line 324
    :cond_8
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 325
    move-result-object v1

    .line 328
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 329
    move-result-object v6

    .line 332
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 333
    if-eqz v7, :cond_9

    .line 335
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 339
    move-result-object v7

    .line 342
    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ACCOUNT_AVATAR_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 343
    const/4 v9, 0x0

    .line 345
    invoke-virtual {v7, v1, v8, v9}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 346
    move-result v7

    .line 349
    float-to-int v7, v7

    .line 350
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 351
    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 353
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 355
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 357
    :cond_9
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 360
    move-result-object v6

    .line 363
    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ACCOUNT_AVATAR_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 364
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 366
    move-result-object v8

    .line 369
    const v9, 0x7f071117    # @dimen/sud_account_avatar_max_height '24.0dp'

    .line 370
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 373
    move-result v8

    .line 376
    invoke-virtual {v6, v1, v7, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 377
    move-result v6

    .line 380
    float-to-int v6, v6

    .line 381
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 382
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 385
    move-result-object v2

    .line 388
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ACCOUNT_NAME_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 389
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 391
    move-result-object v7

    .line 394
    const v8, 0x7f071118    # @dimen/sud_account_name_text_size '14.0sp'

    .line 395
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 398
    move-result v7

    .line 401
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 402
    move-result v2

    .line 405
    float-to-int v2, v2

    .line 406
    int-to-float v2, v2

    .line 407
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 411
    move-result-object v2

    .line 414
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ACCOUNT_NAME_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 415
    invoke-virtual {v2, v1, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    .line 417
    move-result-object v1

    .line 420
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 421
    move-result-object v1

    .line 424
    if-eqz v1, :cond_a

    .line 425
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 427
    :cond_a
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 430
    move-result-object v1

    .line 433
    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 434
    move-result v1

    .line 437
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 438
    :cond_b
    :goto_2
    const v1, 0x7f0a091c    # @id/sud_layout_description

    .line 441
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 444
    move-result-object v1

    .line 447
    check-cast v1, Landroid/widget/TextView;

    .line 448
    if-eqz v1, :cond_d

    .line 450
    iget-boolean v2, v0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 452
    if-eqz v2, :cond_c

    .line 454
    new-instance v0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    .line 456
    const/4 v9, 0x0

    .line 458
    const/4 v10, 0x0

    .line 459
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 460
    move-result-object v2

    .line 463
    invoke-static {v2}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 464
    move-result v11

    .line 467
    move-object v3, v0

    .line 468
    move-object/from16 v4, v16

    .line 469
    move-object v5, v15

    .line 471
    move-object v6, v14

    .line 472
    move-object v7, v13

    .line 473
    move-object v8, v12

    .line 474
    invoke-direct/range {v3 .. v11}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 475
    invoke-static {v1, v0}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 478
    goto :goto_3

    .line 481
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 482
    move-result v0

    .line 485
    if-eqz v0, :cond_d

    .line 486
    new-instance v0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    .line 488
    const/4 v3, 0x0

    .line 490
    const/4 v4, 0x0

    .line 491
    const/4 v5, 0x0

    .line 492
    const/4 v6, 0x0

    .line 493
    const/4 v7, 0x0

    .line 494
    const/4 v8, 0x0

    .line 495
    const/4 v9, 0x0

    .line 496
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 497
    move-result-object v2

    .line 500
    invoke-static {v2}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 501
    move-result v11

    .line 504
    move-object v2, v0

    .line 505
    move v10, v11

    .line 506
    invoke-direct/range {v2 .. v10}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    .line 507
    invoke-static {v1, v0}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationVerticalMargins(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    .line 510
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 513
    :cond_d
    :goto_3
    return-void
    .line 516
.end method

.method public onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/google/android/setupdesign/GlifLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    const p2, 0x7f0d036d    # @layout/sud_glif_embedded_template '@layout/sud_glif_embedded_template_compact'

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const p2, 0x7f0d038b    # @layout/sud_glif_template '@layout/sud_glif_template_compact'

    .line 18
    :cond_1
    :goto_0
    const v0, 0x7f140359    # @style/SudThemeGlif.Light

    .line 21
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 4
    return-void
    .line 7
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 4
    return-void
    .line 7
.end method

.method public setDescriptionText(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p0, "DescriptionMixin"

    const-string p1, "Fail to set text due to either invalid resource id or text view not found."

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 7
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/IconMixin;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->context:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 24
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    if-eqz p1, :cond_1

    .line 30
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 p1, 0x8

    .line 34
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 39
    move-result p1

    .line 42
    iget-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 43
    const v1, 0x7f0a091f    # @id/sud_layout_icon_container

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 48
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/FrameLayout;

    .line 52
    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/FrameLayout;

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->tryApplyPartnerCustomizationStyle()V

    .line 65
    :cond_3
    return-void
    .line 68
.end method

.method public setLandscapeHeaderAreaVisible(Z)V
    .locals 1

    .line 1
    const v0, 0x7f0a0918    # @id/sud_landscape_header_area

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    const/16 p1, 0x8

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 24
    return-void
    .line 27
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 4
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 13
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    .line 17
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    .line 10
    return-void
    .line 13
.end method

.method public final shouldApplyPartnerHeavyThemeResource()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
    .line 26
.end method

.method public final tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 6
    move-result-object v1

    .line 9
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_CONTENT_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 12
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 24
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 29
    move-result p0

    .line 32
    float-to-int p0, p0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result v0

    .line 37
    if-eq p0, v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 40
    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 44
    move-result v1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    move-result v2

    .line 51
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    :cond_0
    return-void
    .line 55
.end method

.method public final updateBackground()V
    .locals 2

    .line 1
    const v0, 0x7f0a0904    # @id/suc_layout_status

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 15
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 24
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 30
    if-eqz v1, :cond_2

    .line 32
    new-instance v1, Lcom/google/android/setupdesign/GlifPatternDrawable;

    .line 34
    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/GlifPatternDrawable;-><init>(I)V

    .line 36
    goto :goto_1

    .line 39
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 42
    :goto_1
    const-class v0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_3
    return-void
    .line 56
.end method

.method public final updateLandscapeMiddleHorizontalSpacing()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f07117f    # @dimen/sud_glif_land_middle_horizontal_spacing '48.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 24
    move-result-object v1

    .line 27
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAND_MIDDLE_HORIZONTAL_SPACING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 48
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    :cond_0
    const v1, 0x7f0a0918    # @id/sud_landscape_header_area

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 63
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v4

    .line 72
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 73
    move-result-object v4

    .line 76
    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 77
    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 79
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v4

    .line 88
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 89
    move-result-object v4

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v6

    .line 96
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 97
    move-result v4

    .line 100
    float-to-int v4, v4

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v4

    .line 106
    const v5, 0x7f04079b    # @attr/sudMarginEnd

    .line 107
    filled-new-array {v5}, [I

    .line 110
    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 114
    move-result-object v4

    .line 117
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 118
    move-result v5

    .line 121
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    move v4, v5

    .line 125
    :goto_0
    div-int/lit8 v5, v0, 0x2

    .line 126
    sub-int/2addr v5, v4

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    .line 129
    move-result v4

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 133
    move-result v6

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 137
    move-result v7

    .line 140
    invoke-virtual {v1, v4, v6, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    :cond_2
    const v4, 0x7f0a0917    # @id/sud_landscape_content_area

    .line 144
    invoke-virtual {p0, v4}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 147
    move-result-object v4

    .line 150
    if-eqz v4, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 153
    move-result v5

    .line 156
    if-eqz v5, :cond_3

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 159
    move-result-object v5

    .line 162
    invoke-static {v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 163
    move-result-object v5

    .line 166
    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 167
    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 169
    move-result v5

    .line 172
    if-eqz v5, :cond_3

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 175
    move-result-object v5

    .line 178
    invoke-static {v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 179
    move-result-object v5

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 183
    move-result-object p0

    .line 186
    invoke-virtual {v5, p0, v6, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 187
    move-result p0

    .line 190
    float-to-int p0, p0

    .line 191
    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 193
    move-result-object p0

    .line 196
    const v2, 0x7f04079c    # @attr/sudMarginStart

    .line 197
    filled-new-array {v2}, [I

    .line 200
    move-result-object v2

    .line 203
    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 204
    move-result-object p0

    .line 207
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 208
    move-result v2

    .line 211
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    move p0, v2

    .line 215
    :goto_1
    if-eqz v1, :cond_4

    .line 216
    div-int/lit8 v0, v0, 0x2

    .line 218
    sub-int v3, v0, p0

    .line 220
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 222
    move-result p0

    .line 225
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    .line 226
    move-result v0

    .line 229
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 230
    move-result v1

    .line 233
    invoke-virtual {v4, v3, p0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 234
    :cond_5
    return-void
    .line 237
.end method
