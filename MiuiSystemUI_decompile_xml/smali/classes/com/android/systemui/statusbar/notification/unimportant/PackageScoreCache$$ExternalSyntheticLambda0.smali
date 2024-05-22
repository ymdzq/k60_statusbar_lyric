.class public final synthetic Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 2
    const-string v0, "packageScoreCache"

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    goto/16 :goto_9

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 16
    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 18
    move-result-object v2

    .line 21
    :try_start_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 25
    :catch_0
    move-exception v3

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v5, "updateAll Exception "

    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 41
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v3

    .line 48
    sget-wide v5, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->DAYS_TO_MILLIS:J

    .line 49
    div-long/2addr v3, v5

    .line 51
    long-to-int v3, v3

    .line 52
    iget v4, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mCurrentDays:I

    .line 53
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x1

    .line 56
    if-eq v3, v4, :cond_1

    .line 57
    iput v3, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mCurrentDays:I

    .line 59
    move p0, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move p0, v5

    .line 63
    :goto_1
    if-eqz p0, :cond_6

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 66
    move-result-object p0

    .line 69
    new-instance v3, Ljava/util/Date;

    .line 70
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 72
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    .line 78
    move-result v3

    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    .line 83
    move-result v7

    .line 86
    add-int/2addr v7, v6

    .line 87
    if-ne v7, v6, :cond_2

    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 90
    const/16 v7, 0xc

    .line 92
    goto :goto_2

    .line 94
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 95
    :goto_2
    const/4 v8, 0x5

    .line 97
    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    .line 98
    move-result p0

    .line 101
    mul-int/lit16 v3, v3, 0x2710

    .line 102
    mul-int/lit8 v7, v7, 0x64

    .line 104
    add-int/2addr v7, v3

    .line 106
    add-int/2addr v7, p0

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string v3, " DELETE FROM notification_sort  WHERE date < "

    .line 110
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 121
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto :goto_3

    .line 125
    :catch_1
    move-exception p0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v7, "removeExpiredData Exception "

    .line 129
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_3
    invoke-static {}, Lcom/android/systemui/statusbar/notification/unimportant/DateUtils;->getDigitalFormatDateToday()I

    .line 145
    move-result p0

    .line 148
    const-string v3, " SELECT package_name, SUM(click_count), SUM(show_count) FROM notification_sort  WHERE date < "

    .line 149
    const-string v7, " GROUP BY package_name "

    .line 151
    invoke-static {v3, p0, v7}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object p0

    .line 156
    const/4 v3, 0x0

    .line 157
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 161
    invoke-virtual {v1, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 162
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    if-eqz p0, :cond_4

    .line 166
    :cond_3
    :goto_4
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 168
    move-result v7

    .line 171
    if-eqz v7, :cond_4

    .line 172
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    move-result-object v7

    .line 177
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 178
    move-result v8

    .line 181
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 182
    move-result v9

    .line 185
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-result-object v7

    .line 189
    check-cast v7, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 190
    if-eqz v7, :cond_3

    .line 192
    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->onDateChanged(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    goto :goto_4

    .line 197
    :catch_2
    move-exception v2

    .line 198
    goto :goto_5

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    goto :goto_8

    .line 201
    :catch_3
    move-exception p0

    .line 202
    move-object v2, p0

    .line 203
    move-object p0, v3

    .line 204
    :goto_5
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    const-string/jumbo v7, "updateEntryData exception "

    .line 210
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v2

    .line 222
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    :cond_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 226
    const-string/jumbo p0, "updateLocalData exception "

    .line 229
    invoke-static {}, Lcom/android/systemui/statusbar/notification/unimportant/DateUtils;->getDigitalFormatDateToday()I

    .line 232
    move-result v2

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    .line 236
    const-string v7, " SELECT SUM(click_count), SUM(show_count) FROM notification_sort  WHERE date < "

    .line 238
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 249
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 250
    move-result-object v3

    .line 253
    if-eqz v3, :cond_5

    .line 254
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    move-result v1

    .line 259
    if-eqz v1, :cond_5

    .line 260
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 262
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 265
    goto :goto_6

    .line 268
    :catchall_1
    move-exception p0

    .line 269
    goto :goto_7

    .line 270
    :catch_4
    move-exception v1

    .line 271
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p0

    .line 283
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 284
    :cond_5
    :goto_6
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 287
    goto :goto_9

    .line 290
    :goto_7
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 291
    throw p0

    .line 294
    :catchall_2
    move-exception v0

    .line 295
    move-object v3, p0

    .line 296
    move-object p0, v0

    .line 297
    :goto_8
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 298
    throw p0

    .line 301
    :cond_6
    :goto_9
    return-void
    .line 302
.end method
