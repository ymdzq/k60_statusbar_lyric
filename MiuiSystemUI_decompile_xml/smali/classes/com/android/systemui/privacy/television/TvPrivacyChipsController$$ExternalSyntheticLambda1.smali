.class public final synthetic Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseTransition:Landroid/transition/TransitionSet;

    .line 9
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 32
    iget v1, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 34
    const/4 v2, 0x1

    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x2

    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    iput v2, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 43
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 45
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v1

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/ImageView;

    .line 63
    iget-object v3, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 65
    iget-boolean v3, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->collapseToDot:Z

    .line 67
    if-eqz v3, :cond_3

    .line 69
    const/16 v3, 0x8

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object v3

    .line 80
    iget v4, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mCollapsedIconSize:I

    .line 81
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 87
    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 91
    iget-boolean v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 93
    if-nez v1, :cond_5

    .line 95
    goto :goto_0

    .line 97
    :cond_5
    const/4 v1, 0x0

    .line 98
    iput-boolean v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 99
    iget-object v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/Animator;

    .line 101
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 103
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/Animator;

    .line 106
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 108
    goto :goto_0

    .line 111
    :cond_6
    :goto_2
    return-void
    .line 112
.end method
