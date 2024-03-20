.class public abstract Lcom/android/systemui/people/PeopleSpaceUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 2
    const-string v1, ""

    .line 4
    const/4 v2, -0x1

    .line 6
    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 10
    return-void
    .line 12
.end method

.method public static convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    move-object v0, p0

    .line 10
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 13
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    move-result v0

    .line 27
    if-lez v0, :cond_3

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 30
    move-result v0

    .line 33
    if-gtz v0, :cond_2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    move-result v0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 41
    move-result v1

    .line 44
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 45
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 47
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    const/4 v1, 0x1

    .line 54
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    move-result-object v0

    .line 58
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    .line 59
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 64
    move-result v2

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 68
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    return-object v0
    .line 79
.end method

.method public static getContactLookupKeysWithBirthdaysToday(Landroid/content/Context;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 8
    const-string v2, "MM-dd"

    .line 10
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/util/Date;

    .line 15
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 17
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    const-string v2, "data1"

    .line 24
    const-string v3, "lookup"

    .line 26
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 31
    const-string v7, "mimetype= ? AND data2=3 AND (substr(data1,6) = ? OR substr(data1,3) = ? )"

    .line 32
    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    .line 34
    filled-new-array {v2, v1, v1}, [Ljava/lang/String;

    .line 37
    move-result-object v8

    .line 40
    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object v4

    .line 45
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    const/4 v9, 0x0

    .line 48
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    move-result-object v1

    .line 52
    :goto_0
    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    move-result p0

    .line 64
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    if-eqz v1, :cond_1

    .line 73
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception p0

    .line 78
    :try_start_1
    const-string v2, "PeopleSpaceUtils"

    .line 79
    const-string v3, "Failed to query birthdays"

    .line 81
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz v1, :cond_1

    .line 86
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    return-object v0

    .line 91
    :goto_2
    if-eqz v1, :cond_2

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_2
    throw p0
    .line 97
.end method

.method public static getDataFromContacts(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V
    .locals 20

    .line 1
    move-object/from16 v1, p3

    .line 2
    array-length v0, v1

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getContactLookupKeysWithBirthdaysToday(Landroid/content/Context;)Ljava/util/List;

    .line 8
    move-result-object v2

    .line 11
    array-length v3, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ge v5, v3, :cond_9

    .line 15
    aget v0, v1, v5

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v6

    .line 22
    move-object/from16 v12, p2

    .line 23
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v6

    .line 28
    move-object v13, v6

    .line 29
    check-cast v13, Landroid/app/people/PeopleSpaceTile;

    .line 30
    if-eqz v13, :cond_7

    .line 32
    invoke-virtual {v13}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 34
    move-result-object v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    goto/16 :goto_8

    .line 40
    :cond_1
    const/4 v6, 0x0

    .line 42
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v14

    .line 46
    invoke-virtual {v13}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    .line 47
    move-result-object v15

    .line 50
    const/16 v16, 0x0

    .line 51
    const/16 v17, 0x0

    .line 53
    const/16 v18, 0x0

    .line 55
    const/16 v19, 0x0

    .line 57
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    move-result-object v14
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :goto_1
    if-eqz v14, :cond_5

    .line 63
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    move-result v6

    .line 68
    if-eqz v6, :cond_5

    .line 69
    const-string v6, "lookup"

    .line 71
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    move-result v6

    .line 76
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 80
    const-string/jumbo v7, "starred"

    .line 81
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 84
    move-result v7

    .line 87
    const/high16 v8, 0x3f000000    # 0.5f

    .line 88
    if-ltz v7, :cond_3

    .line 90
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    const/4 v7, 0x1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    move v7, v4

    .line 100
    :goto_2
    if-eqz v7, :cond_3

    .line 101
    const/high16 v7, 0x3f800000    # 1.0f

    .line 103
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    .line 105
    move-result v7

    .line 108
    move v10, v7

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move v10, v8

    .line 111
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result v7

    .line 115
    if-nez v7, :cond_4

    .line 116
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 118
    move-result v6
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-eqz v6, :cond_4

    .line 122
    const v6, 0x7f1301a8    # @string/birthday_status 'Birthday'

    .line 124
    move-object/from16 v15, p0

    .line 127
    :try_start_2
    invoke-virtual {v15, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v11

    .line 132
    move-object/from16 v6, p1

    .line 133
    move-object/from16 v7, p0

    .line 135
    move-object v8, v13

    .line 137
    move v9, v0

    .line 138
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V

    .line 139
    goto :goto_1

    .line 142
    :cond_4
    move-object/from16 v15, p0

    .line 143
    const/4 v11, 0x0

    .line 145
    move-object/from16 v6, p1

    .line 146
    move-object/from16 v7, p0

    .line 148
    move-object v8, v13

    .line 150
    move v9, v0

    .line 151
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    goto :goto_4

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    move-object v6, v14

    .line 159
    goto :goto_7

    .line 160
    :catch_1
    move-exception v0

    .line 161
    move-object/from16 v15, p0

    .line 162
    :goto_4
    move-object v6, v14

    .line 164
    goto :goto_5

    .line 165
    :cond_5
    move-object/from16 v15, p0

    .line 166
    if-eqz v14, :cond_8

    .line 168
    goto :goto_6

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    goto :goto_7

    .line 172
    :catch_2
    move-exception v0

    .line 173
    move-object/from16 v15, p0

    .line 174
    :goto_5
    :try_start_3
    const-string v7, "PeopleSpaceUtils"

    .line 176
    const-string v8, "Failed to query contact"

    .line 178
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    if-eqz v6, :cond_8

    .line 183
    move-object v14, v6

    .line 185
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 186
    goto :goto_9

    .line 189
    :goto_7
    if-eqz v6, :cond_6

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_6
    throw v0

    .line 195
    :cond_7
    :goto_8
    move-object/from16 v15, p0

    .line 196
    const/4 v10, 0x0

    .line 198
    const/4 v11, 0x0

    .line 199
    move-object/from16 v6, p1

    .line 200
    move-object/from16 v7, p0

    .line 202
    move-object v8, v13

    .line 204
    move v9, v0

    .line 205
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V

    .line 206
    :cond_8
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_9
    return-void
    .line 213
.end method

.method public static getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Landroid/os/UserManager;Ljava/util/stream/Stream;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda3;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 8
    move-result-object p3

    .line 11
    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;

    .line 12
    invoke-direct {v0, p2}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;-><init>(Landroid/os/UserManager;)V

    .line 14
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    move-result-object p2

    .line 20
    new-instance p3, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;

    .line 21
    invoke-direct {p3, v1, p1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 23
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 29
    new-instance p2, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda3;

    .line 30
    const/4 p3, 0x1

    .line 32
    invoke-direct {p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda3;-><init>(I)V

    .line 33
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    move-result-object p1

    .line 39
    new-instance p2, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;

    .line 40
    invoke-direct {p2, p3, p0}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 42
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 45
    move-result-object p0

    .line 48
    new-instance p1, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda6;

    .line 49
    invoke-direct {p1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda6;-><init>()V

    .line 51
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 54
    move-result-object p0

    .line 57
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 58
    move-result-object p1

    .line 61
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/List;

    .line 66
    return-object p0
    .line 68
.end method

.method public static removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 19
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method

.method public static removeSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    move-result-object v2

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    new-instance v3, Ljava/util/HashSet;

    .line 26
    new-instance v4, Ljava/util/HashSet;

    .line 28
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 30
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 33
    move-result-object v4

    .line 36
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 47
    new-instance p1, Ljava/util/HashSet;

    .line 50
    new-instance v3, Ljava/util/HashSet;

    .line 52
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 54
    invoke-interface {v0, p3, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 57
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 81
    move-result-object p0

    .line 84
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    move-result-object p0

    .line 88
    const-string p1, "package_name"

    .line 89
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string/jumbo p1, "user_id"

    .line 94
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string/jumbo p1, "shortcut_id"

    .line 100
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
    .line 109
.end method

.method public static setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;Landroid/app/backup/BackupManager;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string p0, "PeopleSpaceUtils"

    .line 8
    const-string p1, "Not storing for invalid key"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 15
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lcom/android/systemui/people/SharedPreferencesHelper;->setPeopleTileKey(Landroid/content/SharedPreferences;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 25
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    move-result-object p0

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    move-result-object v0

    .line 39
    if-nez p3, :cond_1

    .line 40
    const-string p3, ""

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 48
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    new-instance v1, Ljava/util/HashSet;

    .line 60
    new-instance v2, Ljava/util/HashSet;

    .line 62
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 64
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 67
    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    new-instance p1, Ljava/util/HashSet;

    .line 90
    new-instance v1, Ljava/util/HashSet;

    .line 92
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-interface {p0, p3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 97
    move-result-object p0

    .line 100
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0, p3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 111
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    invoke-virtual {p4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 117
    return-void
    .line 120
.end method

.method public static updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f1301a8    # @string/birthday_status 'Birthday'

    .line 6
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v3

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    if-nez p5, :cond_1

    .line 32
    move v0, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v3

    .line 36
    :goto_1
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    move p1, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move p1, v3

    .line 59
    :goto_2
    if-nez p1, :cond_3

    .line 60
    if-eqz p5, :cond_3

    .line 62
    move p1, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move p1, v3

    .line 66
    :goto_3
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 67
    move-result v1

    .line 70
    cmpl-float v1, v1, p4

    .line 71
    if-nez v1, :cond_5

    .line 73
    if-nez v0, :cond_5

    .line 75
    if-eqz p1, :cond_4

    .line 77
    goto :goto_4

    .line 79
    :cond_4
    move v2, v3

    .line 80
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 81
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    .line 83
    move-result-object p1

    .line 86
    invoke-virtual {p1, p5}, Landroid/app/people/PeopleSpaceTile$Builder;->setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 87
    move-result-object p1

    .line 90
    invoke-virtual {p1, p4}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactAffinity(F)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 91
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 95
    move-result-object p1

    .line 98
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    .line 99
    :cond_6
    return-void
    .line 102
.end method
