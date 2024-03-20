.class public final synthetic Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 8
    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 18
    check-cast p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 20
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    move v2, v1

    .line 24
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 25
    iget-object v3, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    const/16 v5, 0x8

    .line 34
    if-ge v1, v3, :cond_3

    .line 36
    iget-object v3, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 38
    iget-object v3, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 40
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/systemui/privacy/PrivacyType;

    .line 46
    iget-object v6, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 48
    check-cast v6, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v6

    .line 55
    check-cast v6, Landroid/widget/ImageView;

    .line 56
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 61
    if-nez v2, :cond_1

    .line 62
    if-eqz v3, :cond_0

    .line 64
    goto :goto_2

    .line 66
    :cond_0
    move v2, v0

    .line 67
    goto :goto_3

    .line 68
    :cond_1
    :goto_2
    move v2, v4

    .line 69
    :goto_3
    if-eqz v3, :cond_2

    .line 70
    move v5, v0

    .line 72
    :cond_2
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    move-result-object v3

    .line 79
    iget v4, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconSize:I

    .line 80
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_1

    .line 91
    :cond_3
    if-eqz v2, :cond_8

    .line 92
    iget p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 94
    if-nez p0, :cond_5

    .line 96
    iget-object p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 100
    if-eqz v1, :cond_4

    .line 102
    goto :goto_4

    .line 104
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 105
    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 110
    goto :goto_4

    .line 113
    :cond_5
    const/4 v1, 0x2

    .line 114
    if-ne p0, v1, :cond_7

    .line 115
    iget-object p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 119
    if-eqz v1, :cond_6

    .line 121
    goto :goto_4

    .line 123
    :cond_6
    iput-boolean v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 124
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/Animator;

    .line 126
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/Animator;

    .line 131
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 133
    :cond_7
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    iget p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 139
    if-eq p0, v4, :cond_9

    .line 141
    iput v4, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 143
    goto :goto_5

    .line 145
    :cond_8
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    iget p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 149
    if-eqz p0, :cond_9

    .line 151
    iput v0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 153
    :cond_9
    :goto_5
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 156
.end method
