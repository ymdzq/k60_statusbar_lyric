.class public final Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final backgroundId:I

.field public static final controlsIds:Ljava/util/Set;

.field public static final mediaContainersIds:Ljava/util/Set;

.field public static final mediaTitlesAndSubtitlesIds:Ljava/util/Set;


# instance fields
.field public cardIcon:Landroid/widget/ImageView;

.field public cardTitle:Landroid/widget/TextView;

.field public final gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

.field public mediaAppIcons:Ljava/util/List;

.field public final mediaCoverContainers:Ljava/util/List;

.field public final mediaCoverItems:Ljava/util/List;

.field public mediaProgressBars:Ljava/util/List;

.field public final mediaSubtitles:Ljava/util/List;

.field public final mediaTitles:Ljava/util/List;

.field public final recommendations:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    .line 1
    const v0, 0x7f0a0788    # @id/recommendation_card_icon

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 8
    const v0, 0x7f0a0596    # @id/media_rec_title

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 15
    const v0, 0x7f0a0583    # @id/media_cover1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 22
    const v0, 0x7f0a0585    # @id/media_cover2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 29
    const v0, 0x7f0a0587    # @id/media_cover3

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v5

    .line 36
    const v0, 0x7f0a0582    # @id/media_cover

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v6

    .line 43
    const v0, 0x7f0a0584    # @id/media_cover1_container

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 50
    move-object v7, v0

    .line 51
    const v8, 0x7f0a0586    # @id/media_cover2_container

    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v15

    .line 58
    move-object v8, v15

    .line 59
    const v9, 0x7f0a0588    # @id/media_cover3_container

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v14

    .line 66
    move-object v9, v14

    .line 67
    const v10, 0x7f0a05a4    # @id/media_title1

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v18

    .line 74
    move-object/from16 v10, v18

    .line 75
    const v11, 0x7f0a05a5    # @id/media_title2

    .line 77
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v19

    .line 83
    move-object/from16 v11, v19

    .line 84
    const v12, 0x7f0a05a6    # @id/media_title3

    .line 86
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v20

    .line 92
    move-object/from16 v12, v20

    .line 93
    const v13, 0x7f0a05a3    # @id/media_title

    .line 95
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v21

    .line 101
    move-object/from16 v13, v21

    .line 102
    const v16, 0x7f0a05a0    # @id/media_subtitle1

    .line 104
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v22

    .line 110
    move-object/from16 v24, v14

    .line 111
    move-object/from16 v14, v22

    .line 113
    const v16, 0x7f0a05a1    # @id/media_subtitle2

    .line 115
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v23

    .line 121
    move-object/from16 v25, v15

    .line 122
    move-object/from16 v15, v23

    .line 124
    const v16, 0x7f0a05a2    # @id/media_subtitle3

    .line 126
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v26

    .line 132
    move-object/from16 v16, v26

    .line 133
    const v17, 0x7f0a059f    # @id/media_subtitle

    .line 135
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v27

    .line 141
    move-object/from16 v17, v27

    .line 142
    filled-new-array/range {v1 .. v17}, [Ljava/lang/Integer;

    .line 144
    move-result-object v1

    .line 147
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 148
    move-result-object v1

    .line 151
    sput-object v1, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    .line 152
    move-object/from16 v16, v18

    .line 154
    move-object/from16 v17, v19

    .line 156
    move-object/from16 v18, v20

    .line 158
    move-object/from16 v19, v21

    .line 160
    move-object/from16 v20, v22

    .line 162
    move-object/from16 v21, v23

    .line 164
    move-object/from16 v22, v26

    .line 166
    move-object/from16 v23, v27

    .line 168
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Integer;

    .line 170
    move-result-object v1

    .line 173
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 174
    move-result-object v1

    .line 177
    sput-object v1, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaTitlesAndSubtitlesIds:Ljava/util/Set;

    .line 178
    move-object/from16 v2, v24

    .line 180
    move-object/from16 v1, v25

    .line 182
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 184
    move-result-object v0

    .line 187
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 188
    move-result-object v0

    .line 191
    sput-object v0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaContainersIds:Ljava/util/Set;

    .line 192
    const v0, 0x7f0a0890    # @id/sizing_view

    .line 194
    sput v0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->backgroundId:I

    .line 197
    return-void
    .line 199
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 8
    const v0, 0x7f0a0584    # @id/media_cover1_container

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    const v1, 0x7f0a0586    # @id/media_cover2_container

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    .line 26
    const v2, 0x7f0a0588    # @id/media_cover3_container

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    filled-new-array {v0, v1, v2}, [Landroid/view/ViewGroup;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    .line 45
    if-eqz p2, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 51
    move-result v2

    .line 54
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/ViewGroup;

    .line 72
    const v3, 0x7f0a05a3    # @id/media_title

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 80
    check-cast v2, Landroid/widget/TextView;

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 86
    :cond_0
    const v0, 0x7f0a05a4    # @id/media_title1

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0a05a5    # @id/media_title2

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 99
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0a05a6    # @id/media_title3

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 108
    move-result-object v2

    .line 111
    check-cast v2, Landroid/widget/TextView;

    .line 112
    filled-new-array {v0, v1, v2}, [Landroid/widget/TextView;

    .line 114
    move-result-object v0

    .line 117
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    move-result-object v1

    .line 121
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaTitles:Ljava/util/List;

    .line 122
    if-eqz p2, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    .line 128
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 130
    move-result v2

    .line 133
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v0

    .line 140
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v2

    .line 144
    if-eqz v2, :cond_3

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 150
    check-cast v2, Landroid/view/ViewGroup;

    .line 151
    const v3, 0x7f0a059f    # @id/media_subtitle

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 156
    move-result-object v2

    .line 159
    check-cast v2, Landroid/widget/TextView;

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    goto :goto_1

    .line 165
    :cond_2
    const v0, 0x7f0a05a0    # @id/media_subtitle1

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    const v1, 0x7f0a05a1    # @id/media_subtitle2

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 178
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/TextView;

    .line 182
    const v2, 0x7f0a05a2    # @id/media_subtitle3

    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 187
    move-result-object v2

    .line 190
    check-cast v2, Landroid/widget/TextView;

    .line 191
    filled-new-array {v0, v1, v2}, [Landroid/widget/TextView;

    .line 193
    move-result-object v0

    .line 196
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    move-result-object v1

    .line 200
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaSubtitles:Ljava/util/List;

    .line 201
    if-eqz p2, :cond_4

    .line 203
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    .line 207
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 209
    move-result v2

    .line 212
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 216
    move-result-object v0

    .line 219
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    move-result v2

    .line 223
    if-eqz v2, :cond_5

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    move-result-object v2

    .line 229
    check-cast v2, Landroid/view/ViewGroup;

    .line 230
    const v3, 0x7f0a0582    # @id/media_cover

    .line 232
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 235
    move-result-object v2

    .line 238
    check-cast v2, Landroid/widget/ImageView;

    .line 239
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    goto :goto_2

    .line 244
    :cond_4
    const v0, 0x7f0a0583    # @id/media_cover1

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 248
    move-result-object v0

    .line 251
    check-cast v0, Landroid/widget/ImageView;

    .line 252
    const v1, 0x7f0a0585    # @id/media_cover2

    .line 254
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 257
    move-result-object v1

    .line 260
    check-cast v1, Landroid/widget/ImageView;

    .line 261
    const v2, 0x7f0a0587    # @id/media_cover3

    .line 263
    invoke-virtual {p1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 266
    move-result-object v2

    .line 269
    check-cast v2, Landroid/widget/ImageView;

    .line 270
    filled-new-array {v0, v1, v2}, [Landroid/widget/ImageView;

    .line 272
    move-result-object v0

    .line 275
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 276
    move-result-object v1

    .line 279
    :cond_5
    iput-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverItems:Ljava/util/List;

    .line 280
    new-instance v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 282
    invoke-direct {v0, p1}, Lcom/android/systemui/media/controls/models/GutsViewHolder;-><init>(Landroid/view/View;)V

    .line 284
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 287
    if-eqz p2, :cond_8

    .line 289
    iget-object p2, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    .line 293
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 295
    move-result v1

    .line 298
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 302
    move-result-object p2

    .line 305
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    move-result v1

    .line 309
    if-eqz v1, :cond_6

    .line 310
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    move-result-object v1

    .line 315
    check-cast v1, Landroid/view/ViewGroup;

    .line 316
    const v2, 0x7f0a0595    # @id/media_rec_app_icon

    .line 318
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 321
    move-result-object v1

    .line 324
    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    .line 325
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    goto :goto_3

    .line 330
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaAppIcons:Ljava/util/List;

    .line 331
    const p2, 0x7f0a0596    # @id/media_rec_title

    .line 333
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 336
    move-result-object p1

    .line 339
    check-cast p1, Landroid/widget/TextView;

    .line 340
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->cardTitle:Landroid/widget/TextView;

    .line 342
    iget-object p1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    .line 344
    new-instance p2, Ljava/util/ArrayList;

    .line 346
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 348
    move-result v0

    .line 351
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 355
    move-result-object p1

    .line 358
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    move-result v0

    .line 362
    if-eqz v0, :cond_7

    .line 363
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    move-result-object v0

    .line 368
    check-cast v0, Landroid/view/ViewGroup;

    .line 369
    const v1, 0x7f0a0591    # @id/media_progress_bar

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 374
    move-result-object v0

    .line 377
    check-cast v0, Landroid/widget/SeekBar;

    .line 378
    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    .line 381
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    goto :goto_4

    .line 387
    :cond_7
    iput-object p2, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaProgressBars:Ljava/util/List;

    .line 388
    goto :goto_5

    .line 390
    :cond_8
    const p2, 0x7f0a0788    # @id/recommendation_card_icon

    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 394
    move-result-object p1

    .line 397
    check-cast p1, Landroid/widget/ImageView;

    .line 398
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->cardIcon:Landroid/widget/ImageView;

    .line 400
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 402
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 404
    move-result-object p1

    .line 407
    check-cast p1, Lcom/android/systemui/media/controls/ui/IlluminationDrawable;

    .line 408
    iget-object p2, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    .line 410
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 412
    move-result-object p2

    .line 415
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    move-result v0

    .line 419
    if-eqz v0, :cond_9

    .line 420
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    move-result-object v0

    .line 425
    check-cast v0, Landroid/view/ViewGroup;

    .line 426
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 428
    goto :goto_6

    .line 431
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 432
    iget-object p2, p2, Lcom/android/systemui/media/controls/models/GutsViewHolder;->cancel:Landroid/view/View;

    .line 434
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/controls/ui/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 436
    iget-object p2, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 439
    iget-object p2, p2, Lcom/android/systemui/media/controls/models/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    .line 441
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/controls/ui/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 443
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 446
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    .line 448
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/controls/ui/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 450
    return-void
    .line 453
.end method
