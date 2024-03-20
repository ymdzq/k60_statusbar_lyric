.class public Lcom/android/systemui/privacy/television/PrivacyItemsChip;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

.field public final mCollapsedIconSize:I

.field public final mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

.field public final mIconMarginHorizontal:I

.field public final mIconSize:I

.field public final mIcons:Ljava/util/List;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 13
    iput-object p2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 15
    const/16 v0, 0x8

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v1

    .line 25
    const v2, 0x7f070eb0    # @dimen/privacy_chip_icon_size '12.0dp'

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result v2

    .line 32
    iput v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconSize:I

    .line 33
    const v2, 0x7f070ea8    # @dimen/privacy_chip_collapsed_icon_size '10.0dp'

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v2

    .line 41
    iput v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mCollapsedIconSize:I

    .line 42
    const v2, 0x7f070eaf    # @dimen/privacy_chip_icon_margin_in_between '4.0dp'

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v1

    .line 50
    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconMarginHorizontal:I

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    move-result-object v1

    .line 56
    const v2, 0x7f0d03cb    # @layout/tv_ongoing_privacy_chip 'res/layout/tv_ongoing_privacy_chip.xml'

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v1, 0x7f0a0425    # @id/icons_container

    .line 63
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    new-instance v2, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 72
    iget v3, p2, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->colorRes:I

    .line 74
    iget-boolean v4, p2, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->collapseToDot:Z

    .line 76
    invoke-direct {v2, v3, v4, p1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;-><init>(IZLandroid/content/Context;)V

    .line 78
    iput-object v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 81
    new-instance v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;

    .line 83
    invoke-direct {v3, p0}, Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;-><init>(Lcom/android/systemui/privacy/television/PrivacyItemsChip;)V

    .line 85
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p2, p2, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object p2

    .line 99
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/systemui/privacy/PrivacyType;

    .line 110
    new-instance v3, Landroid/widget/ImageView;

    .line 112
    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v2, p1}, Lcom/android/systemui/privacy/PrivacyType;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 117
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 121
    move-result-object v4

    .line 124
    const v5, 0x7f060786    # @color/privacy_icon_tint '#30302a'

    .line 125
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    .line 128
    move-result v5

    .line 131
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 132
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 138
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    iget-object v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 143
    check-cast v2, Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconSize:I

    .line 150
    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 152
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    move-result-object v2

    .line 158
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    iget v4, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconMarginHorizontal:I

    .line 161
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 163
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 165
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    goto :goto_0

    .line 170
    :cond_0
    return-void
    .line 171
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->getForegroundBounds(Landroid/graphics/RectF;)V

    .line 6
    iget v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpandedChipRadius:F

    .line 9
    iget-boolean v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    iget v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapsedChipRadius:F

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 18
    int-to-float v2, v2

    .line 20
    :goto_0
    iget v3, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 21
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 23
    move-result v1

    .line 26
    iget-object v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 27
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 29
    iget-object v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 32
    iget-object v3, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 34
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 36
    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 38
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 43
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 46
    return-void
    .line 49
.end method
