.class public abstract Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;
.super Landroidx/room/RoomDatabase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MIGRATION_1_2:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

.field public static volatile sInstance:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->MIGRATION_1_2:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->sInstance:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->sInstance:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->initDb(Landroid/content/Context;)V

    .line 13
    :cond_0
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->sInstance:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 21
    return-object p0
    .line 23
.end method

.method public static initDb(Landroid/content/Context;)V
    .locals 14

    .line 1
    const-string v2, "notification.db"

    .line 2
    new-instance v4, Landroidx/room/RoomDatabase$MigrationContainer;

    .line 4
    invoke-direct {v4}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    .line 6
    sget-object v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->MIGRATION_1_2:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 9
    filled-new-array {v0}, [Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 11
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 15
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    const/4 v8, 0x0

    .line 20
    aget-object v3, v0, v8

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const/4 v9, 0x1

    .line 26
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v10

    .line 30
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v3, 0x2

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v4, v0}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;)V

    .line 42
    if-eqz p0, :cond_15

    .line 45
    sget-object v7, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    .line 47
    new-instance v3, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    .line 49
    invoke-direct {v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    .line 51
    new-instance v11, Landroidx/room/DatabaseConfiguration;

    .line 54
    const-string v0, "activity"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    sget-object v12, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 64
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 68
    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    move-object v5, v12

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    .line 76
    move-object v5, v0

    .line 78
    :goto_0
    move-object v0, v11

    .line 79
    move-object v1, p0

    .line 80
    move-object v6, v7

    .line 81
    invoke-direct/range {v0 .. v7}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;Landroidx/room/RoomDatabase$MigrationContainer;Landroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 82
    const-class p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 87
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 99
    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 106
    move-result v2

    .line 109
    add-int/2addr v2, v9

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 114
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const/16 v3, 0x2e

    .line 120
    const/16 v4, 0x5f

    .line 122
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "_Impl"

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 140
    move-result v2

    .line 143
    if-eqz v2, :cond_2

    .line 144
    move-object v0, v1

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v0, "."

    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 167
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 168
    move-result-object v2

    .line 171
    invoke-static {v0, v9, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 172
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 176
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 180
    invoke-virtual {p0, v11}, Landroidx/room/RoomDatabase;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 182
    move-result-object v0

    .line 185
    iput-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 186
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecs()Ljava/util/Set;

    .line 188
    move-result-object v0

    .line 191
    new-instance v1, Ljava/util/BitSet;

    .line 192
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 194
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 197
    move-result-object v0

    .line 200
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v2

    .line 204
    iget-object v3, p0, Landroidx/room/RoomDatabase;->mAutoMigrationSpecs:Ljava/util/Map;

    .line 205
    iget-object v4, v11, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 207
    const/4 v5, -0x1

    .line 209
    const/4 v6, 0x0

    .line 210
    if-eqz v2, :cond_6

    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 216
    check-cast v2, Ljava/lang/Class;

    .line 217
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 219
    move-result v7

    .line 222
    sub-int/2addr v7, v9

    .line 223
    :goto_4
    if-ltz v7, :cond_4

    .line 224
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v13

    .line 229
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    move-result-object v13

    .line 233
    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 234
    move-result v13

    .line 237
    if-eqz v13, :cond_3

    .line 238
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 240
    move v5, v7

    .line 243
    goto :goto_5

    .line 244
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 245
    goto :goto_4

    .line 247
    :cond_4
    :goto_5
    if-ltz v5, :cond_5

    .line 248
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    move-result-object v4

    .line 253
    invoke-static {v4}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 254
    check-cast v3, Ljava/util/HashMap;

    .line 257
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    goto :goto_3

    .line 262
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "A required auto migration spec ("

    .line 267
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 272
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ") is missing in the database configuration."

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 288
    throw p0

    .line 291
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 292
    move-result v0

    .line 295
    sub-int/2addr v0, v9

    .line 296
    :goto_6
    if-ltz v0, :cond_8

    .line 297
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 299
    move-result v2

    .line 302
    if-eqz v2, :cond_7

    .line 303
    add-int/lit8 v0, v0, -0x1

    .line 305
    goto :goto_6

    .line 307
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 308
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 310
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 312
    throw p0

    .line 315
    :cond_8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getAutoMigrations()Ljava/util/List;

    .line 316
    move-result-object v0

    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 320
    move-result-object v0

    .line 323
    :cond_9
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    move-result v1

    .line 327
    if-eqz v1, :cond_a

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    move-result-object v1

    .line 333
    check-cast v1, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 334
    iget-object v2, v11, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 336
    iget-object v3, v2, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    .line 338
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 340
    move-result-object v3

    .line 343
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 347
    move-result v3

    .line 350
    if-nez v3, :cond_9

    .line 351
    filled-new-array {v1}, [Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;

    .line 353
    move-result-object v1

    .line 356
    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB$1;)V

    .line 357
    goto :goto_7

    .line 360
    :cond_a
    const-class v0, Landroidx/room/SQLiteCopyOpenHelper;

    .line 361
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 363
    invoke-static {v0, v1}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    .line 365
    move-result-object v0

    .line 368
    check-cast v0, Landroidx/room/SQLiteCopyOpenHelper;

    .line 369
    if-eqz v0, :cond_b

    .line 371
    iput-object v11, v0, Landroidx/room/SQLiteCopyOpenHelper;->mDatabaseConfiguration:Landroidx/room/DatabaseConfiguration;

    .line 373
    :cond_b
    const-class v0, Landroidx/room/AutoClosingRoomOpenHelper;

    .line 375
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 377
    invoke-static {v0, v1}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    .line 379
    move-result-object v0

    .line 382
    check-cast v0, Landroidx/room/AutoClosingRoomOpenHelper;

    .line 383
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 385
    if-nez v0, :cond_14

    .line 387
    iget-object v0, v11, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 389
    if-ne v0, v12, :cond_c

    .line 391
    move v0, v9

    .line 393
    goto :goto_8

    .line 394
    :cond_c
    move v0, v8

    .line 395
    :goto_8
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 396
    invoke-interface {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 398
    iput-object v6, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 401
    iget-object v0, v11, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 403
    iput-object v0, p0, Landroidx/room/RoomDatabase;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 405
    new-instance v0, Ljava/util/ArrayDeque;

    .line 407
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 409
    iput-boolean v8, p0, Landroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    .line 412
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverters()Ljava/util/Map;

    .line 414
    move-result-object v0

    .line 417
    new-instance v1, Ljava/util/BitSet;

    .line 418
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 420
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 423
    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 427
    move-result-object v0

    .line 430
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    move-result v2

    .line 434
    iget-object v3, v11, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 435
    if-eqz v2, :cond_11

    .line 437
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    move-result-object v2

    .line 442
    check-cast v2, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 445
    move-result-object v4

    .line 448
    check-cast v4, Ljava/lang/Class;

    .line 449
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 451
    move-result-object v2

    .line 454
    check-cast v2, Ljava/util/List;

    .line 455
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 457
    move-result-object v2

    .line 460
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    move-result v6

    .line 464
    if-eqz v6, :cond_d

    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    move-result-object v6

    .line 470
    check-cast v6, Ljava/lang/Class;

    .line 471
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 473
    move-result v7

    .line 476
    sub-int/2addr v7, v9

    .line 477
    :goto_a
    if-ltz v7, :cond_f

    .line 478
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 480
    move-result-object v8

    .line 483
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    move-result-object v8

    .line 487
    invoke-virtual {v6, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 488
    move-result v8

    .line 491
    if-eqz v8, :cond_e

    .line 492
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 494
    goto :goto_b

    .line 497
    :cond_e
    add-int/lit8 v7, v7, -0x1

    .line 498
    goto :goto_a

    .line 500
    :cond_f
    move v7, v5

    .line 501
    :goto_b
    if-ltz v7, :cond_10

    .line 502
    iget-object v8, p0, Landroidx/room/RoomDatabase;->mTypeConverters:Ljava/util/Map;

    .line 504
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 506
    move-result-object v7

    .line 509
    check-cast v8, Ljava/util/HashMap;

    .line 510
    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    goto :goto_9

    .line 515
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    const-string v1, "A required type converter ("

    .line 520
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, ") for "

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 533
    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, " is missing in the database configuration."

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object v0

    .line 548
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 549
    throw p0

    .line 552
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 553
    move-result v0

    .line 556
    sub-int/2addr v0, v9

    .line 557
    :goto_c
    if-ltz v0, :cond_13

    .line 558
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 560
    move-result v2

    .line 563
    if-eqz v2, :cond_12

    .line 564
    add-int/lit8 v0, v0, -0x1

    .line 566
    goto :goto_c

    .line 568
    :cond_12
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 569
    move-result-object p0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    .line 575
    const-string v2, "Unexpected type converter "

    .line 577
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    const-string p0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 585
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    move-result-object p0

    .line 593
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 594
    throw v0

    .line 597
    :cond_13
    check-cast p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 598
    sput-object p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;->sInstance:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;

    .line 600
    return-void

    .line 602
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    throw v6

    .line 606
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    .line 609
    const-string v2, "Failed to create an instance of "

    .line 611
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 616
    move-result-object p0

    .line 619
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    move-result-object p0

    .line 626
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 627
    throw v0

    .line 630
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    .line 633
    const-string v2, "Cannot access the constructor"

    .line 635
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 640
    move-result-object p0

    .line 643
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    move-result-object p0

    .line 650
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 651
    throw v0

    .line 654
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    .line 657
    const-string v3, "cannot find implementation for "

    .line 659
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 664
    move-result-object p0

    .line 667
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string p0, ". "

    .line 671
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string p0, " does not exist"

    .line 679
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object p0

    .line 687
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 688
    throw v0

    .line 691
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 692
    const-string v0, "Cannot provide null context for the database."

    .line 694
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 696
    throw p0
    .line 699
.end method


# virtual methods
.method public abstract getUsageDao()Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;
.end method
