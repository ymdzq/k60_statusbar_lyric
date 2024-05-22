.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor$actions$1"
    f = "UserInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 2
    const/4 p1, 0x5

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 2
    check-cast p2, Ljava/util/List;

    .line 4
    check-cast p3, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 6
    check-cast p4, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 13
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 18
    invoke-direct {p4, p0, p5}, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 20
    iput-object p2, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$0:Ljava/lang/Object;

    .line 23
    iput-object p3, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$1:Ljava/lang/Object;

    .line 25
    iput-boolean p1, p4, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->Z$0:Z

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    invoke-virtual {p4, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->label:I

    .line 4
    if-nez v1, :cond_20

    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$0:Ljava/lang/Object;

    .line 11
    check-cast v1, Ljava/util/List;

    .line 13
    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->L$1:Ljava/lang/Object;

    .line 15
    check-cast v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 17
    iget-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->Z$0:Z

    .line 19
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 21
    new-instance v4, Lkotlin/collections/builders/ListBuilder;

    .line 23
    invoke-direct {v4}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 25
    const/4 v6, 0x1

    .line 28
    if-eqz v3, :cond_0

    .line 29
    iget-boolean v3, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 31
    if-eqz v3, :cond_1c

    .line 33
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 35
    sget-object v7, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 37
    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 39
    invoke-virtual {v3, v7}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 41
    move-result v3

    .line 44
    sget-object v7, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 45
    sget-object v8, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 47
    sget-object v9, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 49
    if-eqz v3, :cond_1

    .line 51
    filled-new-array {v8, v7, v9}, [Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 53
    move-result-object v3

    .line 56
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    filled-new-array {v9, v8, v7}, [Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 62
    move-result-object v3

    .line 65
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    move-result-object v3

    .line 69
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    .line 70
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 72
    move-result v11

    .line 75
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v3

    .line 82
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v11

    .line 86
    if-eqz v11, :cond_1c

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v11

    .line 92
    check-cast v11, Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 93
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 95
    move-result v11

    .line 98
    const-string v12, "no_add_user"

    .line 99
    iget-object v13, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 101
    iget-object v14, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 103
    if-eqz v11, :cond_10

    .line 105
    const-string v15, "android.os.usertype.full.SECONDARY"

    .line 107
    if-eq v11, v6, :cond_a

    .line 109
    const/4 v5, 0x2

    .line 111
    if-eq v11, v5, :cond_2

    .line 112
    goto/16 :goto_16

    .line 114
    :cond_2
    iget-boolean v5, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 116
    iget-object v11, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 118
    const v6, 0x10402e8    # @android:string/date_time

    .line 120
    invoke-virtual {v11, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 126
    if-eqz v6, :cond_4

    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 129
    move-result v6

    .line 132
    if-nez v6, :cond_3

    .line 133
    goto :goto_2

    .line 135
    :cond_3
    const/4 v6, 0x0

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 138
    :goto_3
    if-eqz v6, :cond_5

    .line 139
    :goto_4
    const/4 v5, 0x0

    .line 141
    goto :goto_7

    .line 142
    :cond_5
    if-nez v5, :cond_6

    .line 143
    goto :goto_4

    .line 145
    :cond_6
    check-cast v13, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 146
    invoke-virtual {v13}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 148
    move-result-object v5

    .line 151
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 152
    move-result v6

    .line 155
    if-nez v6, :cond_7

    .line 156
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 158
    if-eqz v5, :cond_7

    .line 160
    const/4 v5, 0x0

    .line 162
    const/4 v6, 0x1

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 165
    invoke-virtual {v14, v12, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 167
    move-result v5

    .line 170
    const/4 v6, 0x1

    .line 171
    xor-int/2addr v5, v6

    .line 172
    :goto_5
    if-nez v5, :cond_9

    .line 173
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 175
    invoke-virtual {v14, v12, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 177
    move-result v5

    .line 180
    xor-int/2addr v5, v6

    .line 181
    if-eqz v5, :cond_8

    .line 182
    iget-boolean v5, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 184
    if-eqz v5, :cond_8

    .line 186
    const/4 v5, 0x1

    .line 188
    goto :goto_6

    .line 189
    :cond_8
    const/4 v5, 0x0

    .line 190
    :goto_6
    if-nez v5, :cond_9

    .line 191
    goto :goto_4

    .line 193
    :cond_9
    invoke-virtual {v14, v15}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    .line 194
    move-result v5

    .line 197
    :goto_7
    if-eqz v5, :cond_f

    .line 198
    invoke-virtual {v4, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 200
    goto :goto_c

    .line 203
    :cond_a
    iget-boolean v5, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 204
    if-nez v5, :cond_b

    .line 206
    :goto_8
    const/4 v5, 0x0

    .line 208
    goto :goto_b

    .line 209
    :cond_b
    check-cast v13, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 210
    invoke-virtual {v13}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 212
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 216
    move-result v6

    .line 219
    if-nez v6, :cond_c

    .line 220
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 222
    if-eqz v5, :cond_c

    .line 224
    const/4 v5, 0x0

    .line 226
    const/4 v6, 0x1

    .line 227
    goto :goto_9

    .line 228
    :cond_c
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 229
    invoke-virtual {v14, v12, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 231
    move-result v5

    .line 234
    const/4 v6, 0x1

    .line 235
    xor-int/2addr v5, v6

    .line 236
    :goto_9
    if-nez v5, :cond_e

    .line 237
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 239
    invoke-virtual {v14, v12, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 241
    move-result v5

    .line 244
    xor-int/2addr v5, v6

    .line 245
    if-eqz v5, :cond_d

    .line 246
    iget-boolean v5, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 248
    if-eqz v5, :cond_d

    .line 250
    const/4 v6, 0x1

    .line 252
    goto :goto_a

    .line 253
    :cond_d
    const/4 v6, 0x0

    .line 254
    :goto_a
    if-nez v6, :cond_e

    .line 255
    goto :goto_8

    .line 257
    :cond_e
    invoke-virtual {v14, v15}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    .line 258
    move-result v5

    .line 261
    :goto_b
    if-eqz v5, :cond_f

    .line 262
    invoke-virtual {v4, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_f
    :goto_c
    const/4 v6, 0x1

    .line 267
    goto/16 :goto_16

    .line 268
    :cond_10
    instance-of v5, v1, Ljava/util/Collection;

    .line 270
    if-eqz v5, :cond_11

    .line 272
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 274
    move-result v5

    .line 277
    if-eqz v5, :cond_11

    .line 278
    goto :goto_d

    .line 280
    :cond_11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 281
    move-result-object v5

    .line 284
    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    move-result v6

    .line 288
    if-eqz v6, :cond_13

    .line 289
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    move-result-object v6

    .line 294
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 295
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 297
    move-result v6

    .line 300
    if-eqz v6, :cond_12

    .line 301
    const/4 v6, 0x1

    .line 303
    goto :goto_e

    .line 304
    :cond_13
    :goto_d
    const/4 v6, 0x0

    .line 305
    :goto_e
    if-nez v6, :cond_f

    .line 306
    iget-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 308
    iget-boolean v5, v5, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    .line 310
    if-nez v5, :cond_1a

    .line 312
    iget-boolean v5, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 314
    if-nez v5, :cond_14

    .line 316
    const/4 v6, 0x1

    .line 318
    goto :goto_11

    .line 319
    :cond_14
    check-cast v13, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 320
    invoke-virtual {v13}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 322
    move-result-object v5

    .line 325
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 326
    move-result v6

    .line 329
    if-nez v6, :cond_15

    .line 330
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 332
    if-eqz v5, :cond_15

    .line 334
    const/4 v5, 0x0

    .line 336
    const/4 v6, 0x1

    .line 337
    goto :goto_f

    .line 338
    :cond_15
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 339
    invoke-virtual {v14, v12, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 341
    move-result v5

    .line 344
    const/4 v6, 0x1

    .line 345
    xor-int/2addr v5, v6

    .line 346
    :goto_f
    if-nez v5, :cond_18

    .line 347
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 349
    invoke-virtual {v14, v12, v5}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 351
    move-result v5

    .line 354
    xor-int/2addr v5, v6

    .line 355
    if-eqz v5, :cond_16

    .line 356
    iget-boolean v5, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 358
    if-eqz v5, :cond_16

    .line 360
    move v5, v6

    .line 362
    goto :goto_10

    .line 363
    :cond_16
    const/4 v5, 0x0

    .line 364
    :goto_10
    if-eqz v5, :cond_17

    .line 365
    goto :goto_12

    .line 367
    :cond_17
    :goto_11
    const/4 v5, 0x0

    .line 368
    goto :goto_13

    .line 369
    :cond_18
    :goto_12
    move v5, v6

    .line 370
    :goto_13
    if-eqz v5, :cond_19

    .line 371
    goto :goto_14

    .line 373
    :cond_19
    const/4 v5, 0x0

    .line 374
    goto :goto_15

    .line 375
    :cond_1a
    const/4 v6, 0x1

    .line 376
    :goto_14
    move v5, v6

    .line 377
    :goto_15
    if-eqz v5, :cond_1b

    .line 378
    invoke-virtual {v4, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_1b
    :goto_16
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 383
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    goto/16 :goto_1

    .line 388
    :cond_1c
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 390
    iget-boolean v1, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 392
    if-eqz v1, :cond_1e

    .line 394
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 396
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 398
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 402
    move-result v0

    .line 405
    if-nez v0, :cond_1d

    .line 406
    iget-boolean v0, v2, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    .line 408
    if-eqz v0, :cond_1e

    .line 410
    :cond_1d
    move v5, v6

    .line 412
    goto :goto_17

    .line 413
    :cond_1e
    const/4 v5, 0x0

    .line 414
    :goto_17
    if-eqz v5, :cond_1f

    .line 415
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 417
    invoke-virtual {v4, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_1f
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 422
    return-object v4

    .line 425
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 426
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 428
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 430
    throw v0
    .line 433
.end method
