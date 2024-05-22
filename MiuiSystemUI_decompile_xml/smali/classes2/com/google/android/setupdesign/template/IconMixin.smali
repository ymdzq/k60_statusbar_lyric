.class public final Lcom/google/android/setupdesign/template/IconMixin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public final context:Landroid/content/Context;

.field public final originalHeight:I

.field public final originalScaleType:Landroid/widget/ImageView$ScaleType;

.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->context:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 13
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v3

    .line 23
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iput v3, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    .line 26
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 28
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    iput v2, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    .line 35
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 38
    :goto_0
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin:[I

    .line 40
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 42
    move-result-object p2

    .line 45
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 46
    move-result p3

    .line 49
    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 52
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    if-eqz p3, :cond_1

    .line 61
    move p3, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/16 p3, 0x8

    .line 65
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 70
    move-result p3

    .line 73
    const v0, 0x7f0a091f    # @id/sud_layout_icon_container

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/FrameLayout;

    .line 81
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 85
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/FrameLayout;

    .line 89
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 91
    :cond_2
    const/4 p1, 0x2

    .line 94
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 95
    move-result p1

    .line 98
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 99
    move-result-object p3

    .line 102
    if-eqz p3, :cond_5

    .line 103
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object v0

    .line 108
    invoke-virtual {p3}, Landroid/widget/ImageView;->getMaxHeight()I

    .line 109
    move-result v1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    goto :goto_2

    .line 115
    :cond_3
    iget v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    .line 116
    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    if-eqz p1, :cond_4

    .line 123
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 125
    goto :goto_3

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 128
    :goto_3
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    :cond_5
    const/4 p1, 0x1

    .line 133
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 134
    move-result p1

    .line 137
    if-eqz p1, :cond_6

    .line 138
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 140
    move-result-object p0

    .line 143
    if-eqz p0, :cond_6

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void
    .line 152
.end method


# virtual methods
.method public final getView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 2
    const v0, 0x7f0a091e    # @id/sud_layout_icon

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/widget/ImageView;

    .line 11
    return-object p0
    .line 13
.end method

.method public final tryApplyPartnerCustomizationStyle()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 2
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    .line 10
    move-result-object p0

    .line 13
    const v1, 0x7f0a091f    # @id/sud_layout_icon_container

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    if-eqz p0, :cond_3

    .line 23
    if-nez v0, :cond_0

    .line 25
    goto/16 :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    .line 33
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v3

    .line 42
    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :cond_1
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 58
    move-result-object v2

    .line 61
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ICON_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 62
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 64
    move-result v2

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 71
    move-result-object v2

    .line 74
    new-instance v5, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;

    .line 75
    invoke-direct {v5, p0}, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;-><init>(Landroid/widget/ImageView;)V

    .line 77
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    move-result-object v2

    .line 86
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 87
    move-result-object v5

    .line 90
    invoke-virtual {v5, v1, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 91
    move-result v3

    .line 94
    float-to-int v3, v3

    .line 95
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    const/4 v3, -0x2

    .line 98
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 101
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 106
    move-result-object p0

    .line 109
    if-eqz p0, :cond_2

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 112
    move-result v3

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 116
    move-result p0

    .line 119
    mul-int/lit8 p0, p0, 0x2

    .line 120
    if-le v3, p0, :cond_2

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object p0

    .line 127
    const v3, 0x7f07119a    # @dimen/sud_horizontal_icon_height '32.0dp'

    .line 128
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 131
    move-result p0

    .line 134
    float-to-int p0, p0

    .line 135
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    if-le v3, p0, :cond_2

    .line 138
    sub-int/2addr v3, p0

    .line 140
    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    const/4 v3, 0x0

    .line 144
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    move-result-object p0

    .line 148
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 149
    move-result-object v0

    .line 152
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ICON_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 153
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    .line 155
    move-result v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    if-eqz v0, :cond_3

    .line 163
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 165
    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 167
    move-result-object v0

    .line 170
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    .line 171
    move-result v0

    .line 174
    float-to-int v0, v0

    .line 175
    add-int/2addr v0, v3

    .line 176
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 177
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 179
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 181
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 183
    :cond_3
    :goto_1
    return-void
    .line 186
.end method
