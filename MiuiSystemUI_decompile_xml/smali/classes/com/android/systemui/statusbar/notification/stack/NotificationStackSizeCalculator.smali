.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final dividerHeight$delegate:Lkotlin/properties/NotNullVar;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final resources:Landroid/content/res/Resources;

.field public saveSpaceOnLockscreen:Z

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 2
    const-string v1, "maxKeyguardNotifications"

    .line 4
    const-string v2, "getMaxKeyguardNotifications()I"

    .line 6
    const-class v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 18
    const-string v2, "dividerHeight"

    .line 20
    const-string v4, "getDividerHeight()F"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    filled-new-array {v0, v1}, [Lkotlin/reflect/KProperty;

    .line 27
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 31
    return-void
    .line 33
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    .line 11
    new-instance p1, Lkotlin/properties/NotNullVar;

    .line 13
    invoke-direct {p1}, Lkotlin/properties/NotNullVar;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

    .line 18
    new-instance p1, Lkotlin/properties/NotNullVar;

    .line 20
    invoke-direct {p1}, Lkotlin/properties/NotNullVar;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->dividerHeight$delegate:Lkotlin/properties/NotNullVar;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->updateResources()V

    .line 27
    return-void
    .line 30
.end method

.method public static final access$canStackFitInSpace(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;FF)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->notifsHeight:F

    .line 5
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->shelfHeightWithSpaceBefore:F

    .line 7
    const/4 v1, 0x0

    .line 9
    cmpg-float v1, v0, v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->FIT_IF_SAVE_SPACE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    .line 17
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->NO_FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    .line 19
    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    .line 21
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->notifsHeightSavingSpace:F

    .line 23
    if-eqz v1, :cond_2

    .line 25
    cmpg-float p0, p0, p2

    .line 27
    if-gtz p0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    cmpg-float p0, p1, p2

    .line 32
    if-gtz p0, :cond_4

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    add-float/2addr p0, v0

    .line 37
    add-float/2addr p2, p3

    .line 38
    cmpg-float p0, p0, p2

    .line 39
    if-gtz p0, :cond_3

    .line 41
    :goto_1
    move-object v2, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    add-float/2addr p1, v0

    .line 45
    cmpg-float p0, p1, p2

    .line 46
    if-gtz p0, :cond_4

    .line 48
    goto :goto_2

    .line 50
    :cond_4
    move-object v2, v3

    .line 51
    :goto_2
    return-object v2
    .line 52
.end method

.method public static isShowable(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    if-eq v0, v2, :cond_8

    .line 9
    instance-of v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_2

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    if-eqz p1, :cond_7

    .line 17
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 19
    if-eqz p1, :cond_4

    .line 21
    if-eqz v0, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 26
    move-result p1

    .line 29
    if-ne p1, v2, :cond_2

    .line 30
    :goto_0
    move p1, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move p1, v3

    .line 34
    :goto_1
    if-eqz p1, :cond_3

    .line 35
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 39
    if-eqz p0, :cond_7

    .line 41
    :cond_3
    return v1

    .line 43
    :cond_4
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 44
    if-eqz p1, :cond_5

    .line 46
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 50
    move-result p0

    .line 53
    if-nez p0, :cond_7

    .line 54
    return v1

    .line 56
    :cond_5
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 57
    if-eqz p1, :cond_6

    .line 59
    check-cast p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 63
    move-result p0

    .line 66
    if-nez p0, :cond_7

    .line 67
    :cond_6
    return v1

    .line 69
    :cond_7
    return v3

    .line 70
    :cond_8
    :goto_2
    return v1
    .line 71
.end method

.method public static lastIndexWhile(Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;Lkotlin/jvm/functions/Function1;)I
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/TakeWhileSequence;

    .line 2
    invoke-direct {v0, p0, p1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;Lkotlin/jvm/functions/Function1;)V

    .line 4
    new-instance p0, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    .line 7
    invoke-direct {p0, v0}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 9
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 22
    if-ltz p1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 27
    const-string p1, "Count overflow has happened."

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0

    .line 34
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 35
    return p1
    .line 37
.end method


# virtual methods
.method public final calculateGapAndDividerHeight(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 6
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 10
    iget v3, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 14
    move-result p1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    check-cast v2, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

    .line 21
    invoke-virtual {v2, p3, p2}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->beginsSection(Landroid/view/View;Landroid/view/View;)Z

    .line 23
    move-result v2

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    if-lez p4, :cond_1

    .line 30
    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 32
    if-nez p2, :cond_1

    .line 34
    instance-of p2, p3, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 36
    if-nez p2, :cond_1

    .line 38
    move p2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p2, 0x0

    .line 42
    :goto_0
    if-eqz p2, :cond_2

    .line 43
    invoke-virtual {v1, v3, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    .line 45
    move-result v0

    .line 48
    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 49
    aget-object p1, p1, v4

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->dividerHeight$delegate:Lkotlin/properties/NotNullVar;

    .line 53
    invoke-virtual {p0, p1}, Lkotlin/properties/NotNullVar;->getValue(Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Number;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 61
    move-result p0

    .line 64
    add-float/2addr p0, v0

    .line 65
    return p0
    .line 66
.end method

.method public final computeMaxKeyguardNotifications(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FFF)I
    .locals 4

    .line 1
    add-float v0, p2, p3

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    const/4 v1, 0x0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    return v1

    .line 10
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, p0, p1, p4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V

    .line 14
    new-instance p4, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 17
    invoke-direct {p4, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 24
    move-result v0

    .line 27
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$maxNotifWithoutSavingSpace$1;

    .line 28
    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$maxNotifWithoutSavingSpace$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;FF)V

    .line 30
    invoke-static {p4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->lastIndexWhile(Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;Lkotlin/jvm/functions/Function1;)I

    .line 33
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    .line 40
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    const/4 v0, 0x2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v3

    .line 50
    :goto_0
    if-lt v2, v0, :cond_2

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    .line 53
    goto :goto_1

    .line 55
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;

    .line 58
    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;FF)V

    .line 60
    invoke-static {p4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->lastIndexWhile(Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;Lkotlin/jvm/functions/Function1;)I

    .line 63
    move-result v2

    .line 66
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 67
    move-result-object p1

    .line 70
    sget-object p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;

    .line 71
    new-instance p3, Lkotlin/sequences/TransformingSequence;

    .line 73
    invoke-direct {p3, p1, p2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 75
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;

    .line 78
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V

    .line 80
    invoke-static {p3, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 83
    move-result-object p1

    .line 86
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 87
    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object p1

    .line 94
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result p2

    .line 98
    if-eqz p2, :cond_4

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object p2

    .line 104
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 105
    instance-of p3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 107
    if-eqz p3, :cond_3

    .line 109
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 111
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    .line 113
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSaveSpaceOnLockscreen(Z)V

    .line 115
    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->onLockscreen()Z

    .line 119
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 125
    aget-object p1, p1, v1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

    .line 129
    invoke-virtual {p0, p1}, Lkotlin/properties/NotNullVar;->getValue(Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 131
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/Number;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 137
    move-result p0

    .line 140
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 141
    move-result v2

    .line 144
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 145
    move-result p0

    .line 148
    return p0
    .line 149
.end method

.method public final getSpaceNeeded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ILcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;
    .locals 1

    .line 1
    invoke-static {p1, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->isShowable(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeightWithoutLockscreenConstraints()I

    .line 5
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    invoke-virtual {p0, p4, p3, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->calculateGapAndDividerHeight(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    .line 10
    move-result p0

    .line 13
    const/4 p2, 0x1

    .line 14
    if-eqz p5, :cond_1

    .line 15
    instance-of p3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 17
    if-eqz p3, :cond_0

    .line 19
    move-object p3, p1

    .line 21
    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 22
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    move-result-object p3

    .line 27
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    .line 28
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    .line 35
    move-result p3

    .line 38
    int-to-float p3, p3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move p3, v0

    .line 41
    :goto_1
    add-float/2addr p3, p0

    .line 42
    if-eqz p5, :cond_2

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    .line 45
    move-result p1

    .line 48
    int-to-float v0, p1

    .line 49
    :cond_2
    add-float/2addr v0, p0

    .line 50
    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;

    .line 51
    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;-><init>(FF)V

    .line 53
    return-object p0
    .line 56
.end method

.method public final onLockscreen()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    .line 14
    move-result p0

    .line 17
    const/4 v0, 0x0

    .line 18
    cmpg-float p0, p0, v0

    .line 19
    if-nez p0, :cond_0

    .line 21
    move p0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v1

    .line 25
    :goto_0
    if-eqz p0, :cond_1

    .line 26
    move v1, v2

    .line 28
    :cond_1
    return v1
    .line 29
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    .line 2
    const v1, 0x7f0b0073    # @integer/keyguard_max_notification_count '-1'

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 7
    move-result v1

    .line 10
    if-gez v1, :cond_0

    .line 11
    const v1, 0x7fffffff

    .line 13
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 16
    const/4 v3, 0x0

    .line 18
    aget-object v3, v2, v3

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 24
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

    .line 25
    iput-object v1, v3, Lkotlin/properties/NotNullVar;->value:Ljava/lang/Object;

    .line 27
    const v1, 0x7f070d93    # @dimen/notification_divider_height '7.27dp'

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v0

    .line 35
    int-to-float v0, v0

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 39
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    aget-object v1, v2, v1

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->dividerHeight$delegate:Lkotlin/properties/NotNullVar;

    .line 50
    iput-object v0, p0, Lkotlin/properties/NotNullVar;->value:Ljava/lang/Object;

    .line 52
    return-void
    .line 54
.end method
