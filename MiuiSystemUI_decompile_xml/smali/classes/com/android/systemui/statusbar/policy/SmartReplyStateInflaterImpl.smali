.class public final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;


# instance fields
.field public final activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public final devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

.field public final packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

.field public final smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

.field public final smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/PackageManagerWrapper;Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;
    .locals 16

    .line 1
    move-object/from16 v0, p4

    .line 2
    move-object/from16 v6, p3

    .line 4
    move-object/from16 v7, p5

    .line 6
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    .line 15
    invoke-direct {v0, v2, v2}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;)V

    .line 17
    return-object v0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v0, v7, :cond_1

    .line 23
    goto/16 :goto_12

    .line 25
    :cond_1
    if-eqz v0, :cond_2a

    .line 27
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->hasPhishingAction:Z

    .line 29
    iget-boolean v5, v7, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->hasPhishingAction:Z

    .line 31
    if-eq v4, v5, :cond_2

    .line 33
    goto/16 :goto_13

    .line 35
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 37
    if-eqz v4, :cond_3

    .line 39
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    move-object v4, v2

    .line 44
    :goto_0
    if-nez v4, :cond_4

    .line 45
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 47
    :cond_4
    iget-object v5, v7, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 49
    if-eqz v5, :cond_5

    .line 51
    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    .line 53
    goto :goto_1

    .line 55
    :cond_5
    move-object v5, v2

    .line 56
    :goto_1
    if-nez v5, :cond_6

    .line 57
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 59
    :cond_6
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v4

    .line 64
    if-nez v4, :cond_7

    .line 65
    goto/16 :goto_13

    .line 67
    :cond_7
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->suppressedActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    .line 69
    if-eqz v4, :cond_8

    .line 71
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;->suppressedActionIndices:Ljava/util/List;

    .line 73
    if-nez v4, :cond_9

    .line 75
    :cond_8
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 77
    :cond_9
    iget-object v5, v7, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->suppressedActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    .line 79
    if-eqz v5, :cond_a

    .line 81
    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;->suppressedActionIndices:Ljava/util/List;

    .line 83
    if-nez v5, :cond_b

    .line 85
    :cond_a
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 87
    :cond_b
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 92
    if-nez v4, :cond_c

    .line 93
    goto/16 :goto_13

    .line 95
    :cond_c
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 97
    if-eqz v0, :cond_d

    .line 99
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    .line 101
    goto :goto_2

    .line 103
    :cond_d
    move-object v0, v2

    .line 104
    :goto_2
    if-nez v0, :cond_e

    .line 105
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 107
    :cond_e
    iget-object v4, v7, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 109
    if-eqz v4, :cond_f

    .line 111
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    .line 113
    goto :goto_3

    .line 115
    :cond_f
    move-object v4, v2

    .line 116
    :goto_3
    if-nez v4, :cond_10

    .line 117
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 119
    :cond_10
    if-ne v0, v4, :cond_11

    .line 121
    goto/16 :goto_f

    .line 123
    :cond_11
    if-eqz v0, :cond_29

    .line 125
    if-nez v4, :cond_12

    .line 127
    goto/16 :goto_10

    .line 129
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 131
    move-result v5

    .line 134
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 135
    move-result v8

    .line 138
    if-eq v5, v8, :cond_13

    .line 139
    goto/16 :goto_10

    .line 141
    :cond_13
    move v5, v3

    .line 143
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 144
    move-result v8

    .line 147
    if-ge v5, v8, :cond_28

    .line 148
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v8

    .line 153
    check-cast v8, Landroid/app/Notification$Action;

    .line 154
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v9

    .line 159
    check-cast v9, Landroid/app/Notification$Action;

    .line 160
    iget-object v10, v8, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 162
    iget-object v11, v9, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 164
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 166
    move-result v10

    .line 169
    if-nez v10, :cond_14

    .line 170
    goto/16 :goto_10

    .line 172
    :cond_14
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 174
    move-result-object v10

    .line 177
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 178
    move-result-object v11

    .line 181
    if-ne v10, v11, :cond_15

    .line 182
    move v10, v3

    .line 184
    goto :goto_6

    .line 185
    :cond_15
    if-eqz v10, :cond_17

    .line 186
    if-nez v11, :cond_16

    .line 188
    goto :goto_5

    .line 190
    :cond_16
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 191
    move-result v10

    .line 194
    xor-int/2addr v10, v1

    .line 195
    goto :goto_6

    .line 196
    :cond_17
    :goto_5
    move v10, v1

    .line 197
    :goto_6
    if-eqz v10, :cond_18

    .line 198
    goto/16 :goto_10

    .line 200
    :cond_18
    iget-object v10, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 202
    iget-object v11, v9, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 204
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    move-result v10

    .line 209
    if-nez v10, :cond_19

    .line 210
    goto/16 :goto_10

    .line 212
    :cond_19
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 214
    move-result-object v8

    .line 217
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 218
    move-result-object v9

    .line 221
    if-ne v8, v9, :cond_1a

    .line 222
    goto :goto_c

    .line 224
    :cond_1a
    if-eqz v8, :cond_26

    .line 225
    if-nez v9, :cond_1b

    .line 227
    goto :goto_d

    .line 229
    :cond_1b
    array-length v10, v8

    .line 230
    array-length v11, v9

    .line 231
    if-eq v10, v11, :cond_1c

    .line 232
    goto :goto_d

    .line 234
    :cond_1c
    move v10, v3

    .line 235
    :goto_7
    array-length v11, v8

    .line 236
    if-ge v10, v11, :cond_25

    .line 237
    aget-object v11, v8, v10

    .line 239
    aget-object v12, v9, v10

    .line 241
    invoke-virtual {v11}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 243
    move-result-object v13

    .line 246
    invoke-virtual {v12}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 247
    move-result-object v14

    .line 250
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 251
    move-result v13

    .line 254
    if-nez v13, :cond_1d

    .line 255
    goto :goto_d

    .line 257
    :cond_1d
    invoke-virtual {v11}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 258
    move-result-object v11

    .line 261
    invoke-virtual {v12}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 262
    move-result-object v12

    .line 265
    if-ne v11, v12, :cond_1e

    .line 266
    goto :goto_9

    .line 268
    :cond_1e
    if-eqz v11, :cond_23

    .line 269
    if-nez v12, :cond_1f

    .line 271
    goto :goto_a

    .line 273
    :cond_1f
    array-length v13, v11

    .line 274
    array-length v14, v12

    .line 275
    if-eq v13, v14, :cond_20

    .line 276
    goto :goto_a

    .line 278
    :cond_20
    move v13, v3

    .line 279
    :goto_8
    array-length v14, v11

    .line 280
    if-ge v13, v14, :cond_22

    .line 281
    aget-object v14, v11, v13

    .line 283
    aget-object v15, v12, v13

    .line 285
    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 287
    move-result v14

    .line 290
    if-nez v14, :cond_21

    .line 291
    goto :goto_a

    .line 293
    :cond_21
    add-int/lit8 v13, v13, 0x1

    .line 294
    goto :goto_8

    .line 296
    :cond_22
    :goto_9
    move v11, v3

    .line 297
    goto :goto_b

    .line 298
    :cond_23
    :goto_a
    move v11, v1

    .line 299
    :goto_b
    if-eqz v11, :cond_24

    .line 300
    goto :goto_d

    .line 302
    :cond_24
    add-int/lit8 v10, v10, 0x1

    .line 303
    goto :goto_7

    .line 305
    :cond_25
    :goto_c
    move v8, v3

    .line 306
    goto :goto_e

    .line 307
    :cond_26
    :goto_d
    move v8, v1

    .line 308
    :goto_e
    if-eqz v8, :cond_27

    .line 309
    goto :goto_10

    .line 311
    :cond_27
    add-int/lit8 v5, v5, 0x1

    .line 312
    goto/16 :goto_4

    .line 314
    :cond_28
    :goto_f
    move v0, v3

    .line 316
    goto :goto_11

    .line 317
    :cond_29
    :goto_10
    move v0, v1

    .line 318
    :goto_11
    if-nez v0, :cond_2a

    .line 319
    :goto_12
    move v0, v1

    .line 321
    goto :goto_14

    .line 322
    :cond_2a
    :goto_13
    move v0, v3

    .line 323
    :goto_14
    xor-int/lit8 v8, v0, 0x1

    .line 324
    move-object/from16 v9, p0

    .line 326
    iget-object v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 328
    sget v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 330
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 332
    move-result-object v1

    .line 335
    const v4, 0x7f0d034d    # @layout/smart_reply_view 'res/layout/smart_reply_view.xml'

    .line 336
    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 339
    move-result-object v1

    .line 342
    move-object v10, v1

    .line 343
    check-cast v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 344
    iget v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxNumActions:I

    .line 346
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMaxNumActions(I)V

    .line 348
    iget v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    .line 351
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMaxSqueezeRemeasureAttempts(I)V

    .line 353
    iget v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMinNumSystemGeneratedReplies:I

    .line 356
    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMinNumSystemGeneratedReplies(I)V

    .line 358
    iget-object v4, v7, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 361
    if-eqz v4, :cond_2b

    .line 363
    iget-boolean v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    .line 365
    :cond_2b
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 367
    sget-object v11, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 369
    if-eqz v4, :cond_2c

    .line 371
    iget-object v0, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    .line 373
    new-instance v12, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 375
    invoke-direct {v12, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 377
    new-instance v13, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;

    .line 380
    move-object v0, v13

    .line 382
    move-object/from16 v1, p0

    .line 383
    move-object v2, v10

    .line 385
    move-object/from16 v3, p3

    .line 386
    move v5, v8

    .line 388
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Z)V

    .line 389
    new-instance v0, Lkotlin/sequences/TransformingIndexedSequence;

    .line 392
    invoke-direct {v0, v12, v13}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    .line 394
    move-object v12, v0

    .line 397
    goto :goto_15

    .line 398
    :cond_2c
    move-object v12, v11

    .line 399
    :goto_15
    iget-object v4, v7, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    .line 400
    if-eqz v4, :cond_2d

    .line 402
    new-instance v7, Landroid/view/ContextThemeWrapper;

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 406
    move-result-object v0

    .line 409
    move-object/from16 v1, p2

    .line 410
    invoke-direct {v7, v1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 412
    iget-object v0, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    .line 415
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 417
    invoke-direct {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 419
    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;

    .line 422
    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 424
    move-result-object v11

    .line 427
    new-instance v13, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;

    .line 428
    move-object v0, v13

    .line 430
    move-object/from16 v1, p0

    .line 431
    move-object v2, v10

    .line 433
    move-object/from16 v3, p3

    .line 434
    move v5, v8

    .line 436
    move-object v6, v7

    .line 437
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;ZLandroid/view/ContextThemeWrapper;)V

    .line 438
    new-instance v0, Lkotlin/sequences/TransformingIndexedSequence;

    .line 441
    invoke-direct {v0, v11, v13}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    .line 443
    move-object v11, v0

    .line 446
    :cond_2d
    new-instance v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    .line 447
    invoke-static {v12, v11}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/FlatteningSequence;

    .line 449
    move-result-object v1

    .line 452
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 453
    move-result-object v1

    .line 456
    invoke-direct {v0, v10, v1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;)V

    .line 457
    return-object v0
    .line 460
.end method
