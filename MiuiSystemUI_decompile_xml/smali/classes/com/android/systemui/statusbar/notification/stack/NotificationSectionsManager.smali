.class public abstract Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# static fields
.field public static final SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public final alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

.field public final incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public initialized:Z

.field public final keyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

.field public final mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

.field public final notificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

.field public final silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 2
    const-string v1, "Section"

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->notificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    .line 28
    return-void
    .line 30
.end method

.method public static synthetic getAlertingHeaderView$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getIncomingHeaderView$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getMediaControlsView$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getPeopleHeaderView$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSilentHeaderView$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public abstract beginsSection(Landroid/view/View;Landroid/view/View;)Z
.end method

.method public abstract getBucket(Landroid/view/View;)Ljava/lang/Integer;
.end method

.method public final getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public abstract reinflateViews()V
.end method

.method public final updateFirstAndLastViewsForAllSections([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Ljava/util/List;)Z
    .locals 11

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 2
    array-length v1, p1

    .line 4
    if-gez v1, :cond_0

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    .line 7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    move-object v1, v2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p2

    .line 22
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_6

    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    .line 35
    move-result-object v3

    .line 38
    if-eqz v3, :cond_5

    .line 39
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 49
    move-result v3

    .line 52
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    move-object v4, v0

    .line 59
    :cond_1
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    .line 60
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 62
    if-eqz v5, :cond_2

    .line 64
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    .line 66
    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 68
    goto :goto_3

    .line 71
    :cond_2
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    .line 72
    if-eqz v5, :cond_3

    .line 74
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    .line 76
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    .line 78
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 80
    invoke-direct {v5, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 82
    :goto_2
    move-object v4, v5

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    .line 87
    if-eqz v5, :cond_4

    .line 89
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    .line 91
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    .line 93
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->first:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 95
    invoke-direct {v5, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 97
    goto :goto_2

    .line 100
    :goto_3
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    goto :goto_1

    .line 104
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 105
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 107
    throw p0

    .line 110
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string p1, "Cannot find section bucket for view"

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p0

    .line 118
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    .line 119
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    array-length v2, p1

    .line 124
    const/4 v3, 0x0

    .line 125
    move v4, v3

    .line 126
    :goto_4
    if-ge v4, v2, :cond_8

    .line 127
    aget-object v5, p1, v4

    .line 129
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 131
    if-eqz v5, :cond_7

    .line 133
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 138
    goto :goto_4

    .line 140
    :cond_8
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 141
    move-result-object p2

    .line 144
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 145
    move-result-object p2

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    .line 149
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    array-length v4, p1

    .line 154
    move v5, v3

    .line 155
    :goto_5
    if-ge v5, v4, :cond_a

    .line 156
    aget-object v6, p1, v5

    .line 158
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 160
    if-eqz v6, :cond_9

    .line 162
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 167
    goto :goto_5

    .line 169
    :cond_a
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 170
    move-result-object v2

    .line 173
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 174
    move-result-object v2

    .line 177
    array-length v4, p1

    .line 178
    move v5, v3

    .line 179
    move v6, v5

    .line 180
    :goto_6
    const/4 v7, 0x1

    .line 181
    if-ge v5, v4, :cond_11

    .line 182
    aget-object v8, p1, v5

    .line 184
    iget v9, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBucket:I

    .line 186
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v9

    .line 191
    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    .line 192
    if-nez v9, :cond_b

    .line 194
    move-object v9, v0

    .line 196
    :cond_b
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 197
    if-eqz v10, :cond_c

    .line 199
    const/4 v9, 0x0

    .line 201
    invoke-static {v8, v9, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 202
    move-result v8

    .line 205
    goto :goto_7

    .line 206
    :cond_c
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    .line 207
    if-eqz v10, :cond_d

    .line 209
    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    .line 211
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 213
    invoke-static {v8, v9, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 215
    move-result v8

    .line 218
    goto :goto_7

    .line 219
    :cond_d
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    .line 220
    if-eqz v10, :cond_10

    .line 222
    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    .line 224
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->last:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 226
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->first:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 228
    invoke-static {v8, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 230
    move-result v8

    .line 233
    :goto_7
    if-nez v8, :cond_f

    .line 234
    if-eqz v6, :cond_e

    .line 236
    goto :goto_8

    .line 238
    :cond_e
    move v6, v3

    .line 239
    goto :goto_9

    .line 240
    :cond_f
    :goto_8
    move v6, v7

    .line 241
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 242
    goto :goto_6

    .line 244
    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 245
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 247
    throw p0

    .line 250
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 251
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    array-length v1, p1

    .line 256
    move v4, v3

    .line 257
    :goto_a
    if-ge v4, v1, :cond_13

    .line 258
    aget-object v5, p1, v4

    .line 260
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 262
    if-eqz v5, :cond_12

    .line 264
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 269
    goto :goto_a

    .line 271
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    .line 272
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    array-length v4, p1

    .line 277
    move v5, v3

    .line 278
    :goto_b
    if-ge v5, v4, :cond_15

    .line 279
    aget-object v8, p1, v5

    .line 281
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 283
    if-eqz v8, :cond_14

    .line 285
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 290
    goto :goto_b

    .line 292
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 293
    move-result-object p1

    .line 296
    :cond_16
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    move-result v0

    .line 300
    const/high16 v4, 0x3f800000    # 1.0f

    .line 301
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->notificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 303
    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 305
    if-eqz v0, :cond_18

    .line 307
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    move-result-object v0

    .line 312
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 313
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 315
    move-result v9

    .line 318
    if-nez v9, :cond_16

    .line 319
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    .line 321
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 323
    move-result v5

    .line 326
    xor-int/2addr v5, v7

    .line 327
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 328
    move-result v9

    .line 331
    if-eqz v9, :cond_17

    .line 332
    if-eqz v5, :cond_17

    .line 334
    move v5, v7

    .line 336
    goto :goto_d

    .line 337
    :cond_17
    move v5, v3

    .line 338
    :goto_d
    invoke-interface {v0, v4, v8, v5}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 339
    goto :goto_c

    .line 342
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 343
    move-result-object p0

    .line 346
    :cond_19
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    move-result p1

    .line 350
    if-eqz p1, :cond_1b

    .line 351
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    move-result-object p1

    .line 356
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 357
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    move-result v0

    .line 362
    if-nez v0, :cond_19

    .line 363
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    .line 365
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 367
    move-result v0

    .line 370
    xor-int/2addr v0, v7

    .line 371
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    .line 372
    move-result v1

    .line 375
    if-eqz v1, :cond_1a

    .line 376
    if-eqz v0, :cond_1a

    .line 378
    move v0, v7

    .line 380
    goto :goto_f

    .line 381
    :cond_1a
    move v0, v3

    .line 382
    :goto_f
    invoke-interface {p1, v4, v8, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 383
    goto :goto_e

    .line 386
    :cond_1b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 387
    move-result-object p0

    .line 390
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    move-result p1

    .line 394
    const/4 p2, 0x0

    .line 395
    if-eqz p1, :cond_1c

    .line 396
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    move-result-object p1

    .line 401
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 402
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 404
    move-result-object v0

    .line 407
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 410
    move-result v0

    .line 413
    invoke-interface {p1, p2, v8, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 414
    goto :goto_10

    .line 417
    :cond_1c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 418
    move-result-object p0

    .line 421
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    move-result p1

    .line 425
    if-eqz p1, :cond_1d

    .line 426
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    move-result-object p1

    .line 431
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 432
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 434
    move-result-object v0

    .line 437
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 440
    move-result v0

    .line 443
    invoke-interface {p1, p2, v8, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 444
    goto :goto_11

    .line 447
    :cond_1d
    return v6
    .line 448
.end method
