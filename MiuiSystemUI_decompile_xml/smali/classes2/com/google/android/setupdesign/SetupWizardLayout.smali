.class public Lcom/google/android/setupdesign/SetupWizardLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const v0, 0x7f040794    # @attr/sudLayoutTheme

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const p2, 0x7f040794    # @attr/sudLayoutTheme

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f040794    # @attr/sudLayoutTheme

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
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
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
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

.method public final getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0500b0    # @bool/sudUseTabletLayout 'false'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 13
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p0, :cond_2

    .line 18
    instance-of p0, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    move-object p0, p2

    .line 24
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 27
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 29
    const/16 v1, 0x30

    .line 32
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 34
    :cond_0
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    if-eqz p0, :cond_1

    .line 39
    move-object p0, p1

    .line 41
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    const/16 v1, 0x33

    .line 44
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 46
    :cond_1
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    .line 49
    filled-new-array {p2, p1}, [Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    .line 58
    return-object p0

    .line 61
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 62
    return-object p1
    .line 65
.end method

.method public getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    .line 8
    iget-object p0, p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 10
    const v0, 0x7f0a0921    # @id/sud_layout_navigation_bar

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 15
    move-result-object p0

    .line 18
    instance-of v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lcom/google/android/setupdesign/view/NavigationBar;

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
    .line 27
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
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
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    .line 10
    return-object p0
    .line 12
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 1
    const v0, 0x7f0a0908    # @id/sud_bottom_scroll_view

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

.method public final init(Landroid/util/AttributeSet;I)V
    .locals 4

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
    new-instance v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    .line 12
    const-class v2, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 15
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 17
    new-instance v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 20
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 22
    const-class v2, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 25
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 27
    new-instance v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 30
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 32
    const-class v2, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 35
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 37
    new-instance v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 40
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 43
    const-class v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 48
    new-instance v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    .line 51
    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 53
    const-class v1, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 58
    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 61
    invoke-direct {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>()V

    .line 63
    const-class v1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    .line 71
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    instance-of v1, v0, Lcom/google/android/setupdesign/view/BottomScrollView;

    .line 77
    if-eqz v1, :cond_1

    .line 79
    check-cast v0, Lcom/google/android/setupdesign/view/BottomScrollView;

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    const-string v3, "Cannot set non-BottomScrollView. Found="

    .line 86
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 97
    const-string v1, "ScrollViewDelegate"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v0

    .line 106
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout:[I

    .line 107
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 109
    move-result-object p1

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 113
    move-result-object p2

    .line 116
    const/4 v0, 0x1

    .line 117
    if-eqz p2, :cond_3

    .line 118
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 124
    move-result-object p2

    .line 127
    if-eqz p2, :cond_5

    .line 128
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    if-eqz v1, :cond_4

    .line 132
    move-object v1, p2

    .line 134
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 137
    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 139
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_5
    :goto_1
    const/4 p2, 0x3

    .line 145
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 146
    move-result-object p2

    .line 149
    if-eqz p2, :cond_6

    .line 150
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 152
    goto :goto_2

    .line 155
    :cond_6
    const/4 p2, 0x6

    .line 156
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 157
    move-result-object p2

    .line 160
    const/4 v1, 0x5

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 162
    move-result-object v1

    .line 165
    if-eqz p2, :cond_7

    .line 166
    if-eqz v1, :cond_7

    .line 168
    const v2, 0x7f0a091b    # @id/sud_layout_decor

    .line 170
    invoke-virtual {p0, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 173
    move-result-object v2

    .line 176
    instance-of v3, v2, Lcom/google/android/setupdesign/view/Illustration;

    .line 177
    if-eqz v3, :cond_7

    .line 179
    check-cast v2, Lcom/google/android/setupdesign/view/Illustration;

    .line 181
    invoke-virtual {p0, p2, v1}, Lcom/google/android/setupdesign/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 183
    move-result-object p2

    .line 186
    invoke-virtual {v2, p2}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_7
    :goto_2
    const/4 p2, 0x2

    .line 190
    const/4 v1, -0x1

    .line 191
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 192
    move-result p2

    .line 195
    if-ne p2, v1, :cond_8

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object p2

    .line 201
    const v1, 0x7f071145    # @dimen/sud_decor_padding_top '0.0dp'

    .line 202
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 205
    move-result p2

    .line 208
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 209
    const/4 p2, 0x4

    .line 212
    const/high16 v1, -0x40800000    # -1.0f

    .line 213
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 215
    move-result p2

    .line 218
    cmpl-float v1, p2, v1

    .line 219
    if-nez v1, :cond_9

    .line 221
    new-instance p2, Landroid/util/TypedValue;

    .line 223
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 228
    move-result-object v1

    .line 231
    const v2, 0x7f07119c    # @dimen/sud_illustration_aspect_ratio '2.22'

    .line 232
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 235
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 238
    move-result p2

    .line 241
    :cond_9
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 242
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    return-void
    .line 248
.end method

.method public onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    const p2, 0x7f0d03b3    # @layout/sud_template '@layout/sud_template_header'

    .line 4
    :cond_0
    const v0, 0x7f140365    # @style/SudThemeMaterial.Light

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "Ignoring restore instance state "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v1, "SetupWizardLayout"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 25
    return-void

    .line 28
    :cond_0
    check-cast p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 29
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 31
    move-result-object v0

    .line 34
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 35
    iget-boolean p1, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setProgressBarShown(Z)V

    .line 40
    return-void
    .line 43
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 17
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const v0, 0x7f0a090d    # @id/sud_glif_progress_bar

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    const v0, 0x7f0a0923    # @id/sud_layout_progress

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 32
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 38
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_1
    iput-boolean p0, v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 47
    return-object v1
    .line 49
.end method

.method public setBackgroundTile(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 13
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    move-object v0, p1

    .line 18
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 21
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
    .line 29
.end method

.method public setDecorPaddingTop(I)V
    .locals 3

    .line 1
    const v0, 0x7f0a091b    # @id/sud_layout_decor

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    move-result v2

    .line 22
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    :cond_0
    return-void
    .line 26
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

.method public setIllustration(II)V
    .locals 3

    const v0, 0x7f0a091b    # @id/sud_layout_decor

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/google/android/setupdesign/view/Illustration;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f0a091b    # @id/sud_layout_decor

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 1

    .line 1
    const v0, 0x7f0a091b    # @id/sud_layout_decor

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setAspectRatio(F)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const v0, 0x7f0a091b    # @id/sud_layout_decor

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
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
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    :cond_0
    return-void
    .line 24
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
