.class public final Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

.field public final synthetic val$pkgEntity:Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;->val$pkgEntity:Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;->val$pkgEntity:Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto/16 :goto_3

    .line 14
    :cond_0
    const-string/jumbo v1, "updateDailyData exception "

    .line 16
    invoke-static {}, Lcom/android/systemui/statusbar/notification/unimportant/DateUtils;->getDigitalFormatDateToday()I

    .line 19
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    const-string v5, " SELECT click_count, show_count FROM notification_sort  WHERE package_name = \'"

    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, "\'  AND date = "

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 50
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v4, :cond_1

    .line 54
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    move-result v6

    .line 65
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 66
    move-result v7

    .line 69
    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->setDailyData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 70
    goto :goto_1

    .line 73
    :catch_0
    move-exception v6

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto/16 :goto_5

    .line 77
    :catch_1
    move-exception v4

    .line 79
    move-object v6, v4

    .line 80
    move-object v4, v5

    .line 81
    :goto_0
    :try_start_2
    const-string v7, "packageScoreCache"

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 96
    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 99
    invoke-static {}, Lcom/android/systemui/statusbar/notification/unimportant/DateUtils;->getDigitalFormatDateToday()I

    .line 102
    move-result v1

    .line 105
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    const-string v7, " SELECT SUM(click_count), SUM(show_count) FROM notification_sort  WHERE package_name = \'"

    .line 110
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, "\'  AND date < "

    .line 118
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 130
    move-result-object v5

    .line 133
    if-eqz v5, :cond_2

    .line 134
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 142
    move-result v0

    .line 145
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 146
    move-result v1

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 150
    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    :try_start_4
    iput v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mHistoryClick:I

    .line 153
    iput v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mHistoryShow:I

    .line 155
    monitor-exit v2

    .line 157
    goto :goto_2

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 161
    :catchall_2
    move-exception p0

    .line 162
    goto :goto_4

    .line 163
    :catch_2
    move-exception p0

    .line 164
    :try_start_6
    const-string v0, "packageScoreCache"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string/jumbo v2, "updateHistoryData exception "

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p0

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 185
    :cond_2
    :goto_2
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 188
    :goto_3
    return-void

    .line 191
    :goto_4
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 192
    throw p0

    .line 195
    :catchall_3
    move-exception p0

    .line 196
    move-object v5, v4

    .line 197
    :goto_5
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 198
    throw p0
    .line 201
.end method
