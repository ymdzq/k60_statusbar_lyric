.class public final Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DAYS_TO_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDays:I

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->DAYS_TO_MILLIS:J

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    new-instance p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 18
    return-void
    .line 20
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public static insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/unimportant/DateUtils;->getDigitalFormatDateToday()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 6
    const-string v2, " INSERT OR REPLACE INTO notification_sort  (_id, package_name, date, click_count, show_count)  VALUES((SELECT _id FROM notification_sort  WHERE package_name = \'"

    .line 8
    const-string v3, "\'  AND date = "

    .line 10
    const-string v4, ")  , \'"

    .line 12
    invoke-static {v2, v1, v3, v0, v4}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "\'  , "

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, " , "

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v0

    .line 36
    :try_start_0
    iget v1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, " , "

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v1

    .line 50
    :try_start_1
    iget p1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 51
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string p1, ") "

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    const-string p1, "packageScoreCache"

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "insertOrUpdate Exception "

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    throw p0

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    throw p0
    .line 96
.end method

.method public static writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 29
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 31
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 34
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    :try_start_2
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V

    .line 39
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    const/4 v2, 0x0

    .line 45
    :try_start_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 46
    monitor-exit v1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :try_start_6
    throw p1

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 60
    goto :goto_2

    .line 63
    :goto_1
    :try_start_7
    const-string v0, "packageScoreCache"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string/jumbo v2, "writeToDatabase Exception "

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 84
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    return-void

    .line 90
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    throw p1
    .line 94
.end method
