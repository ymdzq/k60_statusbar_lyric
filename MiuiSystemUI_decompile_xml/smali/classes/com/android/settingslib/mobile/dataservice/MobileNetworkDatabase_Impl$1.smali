.class public final Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE IF NOT EXISTS `subscriptionInfo` (`sudId` TEXT NOT NULL, `simSlotIndex` INTEGER NOT NULL, `carrierId` INTEGER NOT NULL, `displayName` TEXT, `carrierName` TEXT, `dataRoaming` INTEGER NOT NULL, `mcc` TEXT, `mnc` TEXT, `countryIso` TEXT, `isEmbedded` INTEGER NOT NULL, `cardId` INTEGER NOT NULL, `portIndex` INTEGER NOT NULL, `isOpportunistic` INTEGER NOT NULL, `groupUUID` TEXT, `subscriptionType` INTEGER NOT NULL, `uniqueName` TEXT, `isSubscriptionVisible` INTEGER NOT NULL, `getFormattedPhoneNumber` TEXT, `isFirstRemovableSubscription` INTEGER NOT NULL, `isDefaultSubscriptionSelection` INTEGER NOT NULL, `isValidSubscription` INTEGER NOT NULL, `isUsableSubscription` INTEGER NOT NULL, `isActiveSubscription` INTEGER NOT NULL, `isAvailableSubscription` INTEGER NOT NULL, `isActiveDataSubscriptionId` INTEGER NOT NULL, PRIMARY KEY(`sudId`))"

    .line 2
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_subscriptionInfo_sudId` ON `subscriptionInfo` (`sudId`)"

    .line 7
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    const-string p0, "CREATE TABLE IF NOT EXISTS `uiccInfo` (`sudId` TEXT NOT NULL, `physicalSlotIndex` TEXT NOT NULL, `logicalSlotIndex` INTEGER NOT NULL, `cardId` INTEGER NOT NULL, `isEuicc` INTEGER NOT NULL, `isMultipleEnabledProfilesSupported` INTEGER NOT NULL, `cardState` INTEGER NOT NULL, `isRemovable` INTEGER NOT NULL, `isActive` INTEGER NOT NULL, `portIndex` INTEGER NOT NULL, PRIMARY KEY(`sudId`))"

    .line 12
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_uiccInfo_sudId` ON `uiccInfo` (`sudId`)"

    .line 17
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    const-string p0, "CREATE TABLE IF NOT EXISTS `MobileNetworkInfo` (`subId` TEXT NOT NULL, `isContactDiscoveryEnabled` INTEGER NOT NULL, `isContactDiscoveryVisible` INTEGER NOT NULL, `isMobileDataEnabled` INTEGER NOT NULL, `isCdmaOptions` INTEGER NOT NULL, `isGsmOptions` INTEGER NOT NULL, `isWorldMode` INTEGER NOT NULL, `shouldDisplayNetworkSelectOptions` INTEGER NOT NULL, `isTdscdmaSupported` INTEGER NOT NULL, `activeNetworkIsCellular` INTEGER NOT NULL, `showToggleForPhysicalSim` INTEGER NOT NULL, `isDataRoamingEnabled` INTEGER NOT NULL, PRIMARY KEY(`subId`))"

    .line 22
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_MobileNetworkInfo_subId` ON `MobileNetworkInfo` (`subId`)"

    .line 27
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 32
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c1bc052ff01a823b0f4818883195eee2\')"

    .line 37
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
    .line 42
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;

    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 22
    const/4 p0, 0x0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;

    .line 2
    iput-object p1, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 8
    iget-object p1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;

    .line 11
    iget-object p1, p1, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result p1

    .line 20
    if-gtz p1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;

    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 26
    const/4 p1, 0x0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 33
    const/4 p0, 0x0

    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public final onPostMigrate()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 31

    .line 1
    move-object/from16 v0, p1

    .line 2
    new-instance v1, Ljava/util/HashMap;

    .line 4
    const/16 v2, 0x19

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 11
    const-string/jumbo v6, "sudId"

    .line 13
    const-string v7, "TEXT"

    .line 16
    const/4 v9, 0x1

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v3, v2

    .line 22
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    const-string/jumbo v3, "sudId"

    .line 26
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 32
    const-string/jumbo v7, "simSlotIndex"

    .line 34
    const-string v8, "INTEGER"

    .line 37
    const/4 v10, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v6, 0x1

    .line 42
    move-object v4, v2

    .line 43
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    const-string/jumbo v4, "simSlotIndex"

    .line 47
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 53
    const-string v8, "carrierId"

    .line 55
    const-string v9, "INTEGER"

    .line 57
    const/4 v11, 0x1

    .line 59
    const/4 v13, 0x0

    .line 60
    const/16 v17, 0x0

    .line 61
    const/4 v14, 0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x1

    .line 65
    const/4 v10, 0x0

    .line 66
    move-object v5, v2

    .line 67
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    const-string v4, "carrierId"

    .line 71
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 76
    const-string v8, "displayName"

    .line 78
    const-string v9, "TEXT"

    .line 80
    const/16 v24, 0x0

    .line 82
    const/4 v11, 0x0

    .line 84
    move-object v5, v2

    .line 85
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    const-string v4, "displayName"

    .line 89
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 94
    const-string v21, "carrierName"

    .line 96
    const-string v22, "TEXT"

    .line 98
    const/16 v19, 0x0

    .line 100
    const/16 v20, 0x1

    .line 102
    const/16 v23, 0x0

    .line 104
    move-object/from16 v18, v2

    .line 106
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    const-string v4, "carrierName"

    .line 111
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 116
    const-string v8, "dataRoaming"

    .line 118
    const-string v9, "INTEGER"

    .line 120
    const/4 v11, 0x1

    .line 122
    move-object v5, v2

    .line 123
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    const-string v4, "dataRoaming"

    .line 127
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 132
    const-string v8, "mcc"

    .line 134
    const-string v9, "TEXT"

    .line 136
    const/4 v11, 0x0

    .line 138
    move-object v5, v2

    .line 139
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    const-string v4, "mcc"

    .line 143
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 148
    const-string v8, "mnc"

    .line 150
    const-string v9, "TEXT"

    .line 152
    move-object v5, v2

    .line 154
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    const-string v4, "mnc"

    .line 158
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 163
    const-string v21, "countryIso"

    .line 165
    const-string v22, "TEXT"

    .line 167
    move-object/from16 v18, v2

    .line 169
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    const-string v4, "countryIso"

    .line 174
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 179
    const-string v8, "isEmbedded"

    .line 181
    const-string v9, "INTEGER"

    .line 183
    const/16 v18, 0x1

    .line 185
    const/4 v11, 0x1

    .line 187
    move-object v5, v2

    .line 188
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    const-string v4, "isEmbedded"

    .line 192
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 197
    const-string v8, "cardId"

    .line 199
    const-string v9, "INTEGER"

    .line 201
    move-object v5, v2

    .line 203
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    const-string v4, "cardId"

    .line 207
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 212
    const-string v15, "portIndex"

    .line 214
    const-string v16, "INTEGER"

    .line 216
    move-object v12, v2

    .line 218
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    const-string v5, "portIndex"

    .line 222
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 227
    const-string v9, "isOpportunistic"

    .line 229
    const-string v10, "INTEGER"

    .line 231
    const/4 v12, 0x1

    .line 233
    const/4 v7, 0x0

    .line 234
    const/4 v11, 0x0

    .line 235
    const/4 v8, 0x1

    .line 236
    move-object v6, v2

    .line 237
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    const-string v6, "isOpportunistic"

    .line 241
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 246
    const-string v10, "groupUUID"

    .line 248
    const-string v11, "TEXT"

    .line 250
    const/4 v15, 0x0

    .line 252
    const/16 v19, 0x0

    .line 253
    const/16 v16, 0x1

    .line 255
    const/4 v8, 0x0

    .line 257
    const/4 v9, 0x1

    .line 258
    const/4 v12, 0x0

    .line 259
    move-object v7, v2

    .line 260
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    const-string v6, "groupUUID"

    .line 264
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 269
    const-string/jumbo v10, "subscriptionType"

    .line 271
    const-string v11, "INTEGER"

    .line 274
    const/4 v13, 0x1

    .line 276
    move-object v7, v2

    .line 277
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    const-string/jumbo v6, "subscriptionType"

    .line 281
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 287
    const-string/jumbo v10, "uniqueName"

    .line 289
    const-string v11, "TEXT"

    .line 292
    const/4 v13, 0x0

    .line 294
    move-object v7, v2

    .line 295
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    const-string/jumbo v6, "uniqueName"

    .line 299
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 305
    const-string v10, "isSubscriptionVisible"

    .line 307
    const-string v11, "INTEGER"

    .line 309
    const/4 v13, 0x1

    .line 311
    move-object v7, v2

    .line 312
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    const-string v6, "isSubscriptionVisible"

    .line 316
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 321
    const-string v10, "getFormattedPhoneNumber"

    .line 323
    const-string v11, "TEXT"

    .line 325
    const/4 v13, 0x0

    .line 327
    move-object v7, v2

    .line 328
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    const-string v6, "getFormattedPhoneNumber"

    .line 332
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 337
    const-string v10, "isFirstRemovableSubscription"

    .line 339
    const-string v11, "INTEGER"

    .line 341
    const/4 v13, 0x1

    .line 343
    move-object v7, v2

    .line 344
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    const-string v6, "isFirstRemovableSubscription"

    .line 348
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 353
    const-string v10, "isDefaultSubscriptionSelection"

    .line 355
    const-string v11, "INTEGER"

    .line 357
    move-object v7, v2

    .line 359
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 360
    const-string v6, "isDefaultSubscriptionSelection"

    .line 363
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 368
    const-string v10, "isValidSubscription"

    .line 370
    const-string v11, "INTEGER"

    .line 372
    move-object v7, v2

    .line 374
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    const-string v6, "isValidSubscription"

    .line 378
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 383
    const-string v10, "isUsableSubscription"

    .line 385
    const-string v11, "INTEGER"

    .line 387
    move-object v7, v2

    .line 389
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    const-string v6, "isUsableSubscription"

    .line 393
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 398
    const-string v10, "isActiveSubscription"

    .line 400
    const-string v11, "INTEGER"

    .line 402
    move-object v7, v2

    .line 404
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 405
    const-string v6, "isActiveSubscription"

    .line 408
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 413
    const-string v10, "isAvailableSubscription"

    .line 415
    const-string v11, "INTEGER"

    .line 417
    move-object v7, v2

    .line 419
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 420
    const-string v6, "isAvailableSubscription"

    .line 423
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 428
    const-string v17, "isActiveDataSubscriptionId"

    .line 430
    const-string v18, "INTEGER"

    .line 432
    move-object v14, v2

    .line 434
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    const-string v6, "isActiveDataSubscriptionId"

    .line 438
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v2, Ljava/util/HashSet;

    .line 443
    const/4 v6, 0x0

    .line 445
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 446
    new-instance v7, Ljava/util/HashSet;

    .line 449
    const/4 v8, 0x1

    .line 451
    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 452
    new-instance v9, Landroidx/room/util/TableInfo$Index;

    .line 455
    filled-new-array {v3}, [Ljava/lang/String;

    .line 457
    move-result-object v10

    .line 460
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 461
    move-result-object v10

    .line 464
    const-string v11, "ASC"

    .line 465
    filled-new-array {v11}, [Ljava/lang/String;

    .line 467
    move-result-object v12

    .line 470
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 471
    move-result-object v12

    .line 474
    const-string v13, "index_subscriptionInfo_sudId"

    .line 475
    invoke-direct {v9, v13, v10, v12, v6}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 477
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v9, Landroidx/room/util/TableInfo;

    .line 483
    const-string/jumbo v10, "subscriptionInfo"

    .line 485
    invoke-direct {v9, v10, v1, v2, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 488
    invoke-static {v0, v10}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 491
    move-result-object v1

    .line 494
    invoke-virtual {v9, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 495
    move-result v2

    .line 498
    const-string v7, "\n Found:\n"

    .line 499
    if-nez v2, :cond_0

    .line 501
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v3, "subscriptionInfo(com.android.settingslib.mobile.dataservice.SubscriptionInfoEntity).\n Expected:\n"

    .line 507
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    move-result-object v1

    .line 525
    invoke-direct {v0, v1, v6}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 526
    return-object v0

    .line 529
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 530
    const/16 v2, 0xa

    .line 532
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 534
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 537
    const-string/jumbo v15, "sudId"

    .line 539
    const-string v16, "TEXT"

    .line 542
    const/16 v23, 0x1

    .line 544
    const/4 v13, 0x1

    .line 546
    const/16 v22, 0x0

    .line 547
    const/16 v19, 0x1

    .line 549
    const/4 v14, 0x1

    .line 551
    const/16 v17, 0x0

    .line 552
    const/16 v18, 0x1

    .line 554
    move-object v12, v2

    .line 556
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 557
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 563
    const-string v27, "physicalSlotIndex"

    .line 565
    const-string v28, "TEXT"

    .line 567
    const/4 v13, 0x0

    .line 569
    const/16 v25, 0x0

    .line 570
    const/16 v26, 0x1

    .line 572
    const/16 v29, 0x0

    .line 574
    const/16 v30, 0x1

    .line 576
    move-object/from16 v24, v2

    .line 578
    invoke-direct/range {v24 .. v30}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 580
    const-string v9, "physicalSlotIndex"

    .line 583
    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 588
    const-string v27, "logicalSlotIndex"

    .line 590
    const-string v28, "INTEGER"

    .line 592
    const/4 v9, 0x0

    .line 594
    move-object/from16 v24, v2

    .line 595
    invoke-direct/range {v24 .. v30}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 597
    const-string v10, "logicalSlotIndex"

    .line 600
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 605
    const-string v27, "cardId"

    .line 607
    const-string v28, "INTEGER"

    .line 609
    move-object/from16 v24, v2

    .line 611
    invoke-direct/range {v24 .. v30}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 613
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 619
    const-string v15, "isEuicc"

    .line 621
    const-string v16, "INTEGER"

    .line 623
    move-object v12, v2

    .line 625
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 626
    const-string v4, "isEuicc"

    .line 629
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 634
    const-string v15, "isMultipleEnabledProfilesSupported"

    .line 636
    const-string v16, "INTEGER"

    .line 638
    move-object v12, v2

    .line 640
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 641
    const-string v4, "isMultipleEnabledProfilesSupported"

    .line 644
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 649
    const-string v15, "cardState"

    .line 651
    const-string v16, "INTEGER"

    .line 653
    move-object v12, v2

    .line 655
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 656
    const-string v4, "cardState"

    .line 659
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 664
    const-string v15, "isRemovable"

    .line 666
    const-string v16, "INTEGER"

    .line 668
    move-object v12, v2

    .line 670
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    const-string v4, "isRemovable"

    .line 674
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 679
    const-string v15, "isActive"

    .line 681
    const-string v16, "INTEGER"

    .line 683
    move-object v12, v2

    .line 685
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 686
    const-string v4, "isActive"

    .line 689
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 694
    const-string v20, "portIndex"

    .line 696
    const-string v21, "INTEGER"

    .line 698
    move-object/from16 v17, v2

    .line 700
    move/from16 v18, v9

    .line 702
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 704
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v2, Ljava/util/HashSet;

    .line 710
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 712
    new-instance v4, Ljava/util/HashSet;

    .line 715
    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 717
    new-instance v5, Landroidx/room/util/TableInfo$Index;

    .line 720
    filled-new-array {v3}, [Ljava/lang/String;

    .line 722
    move-result-object v3

    .line 725
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 726
    move-result-object v3

    .line 729
    filled-new-array {v11}, [Ljava/lang/String;

    .line 730
    move-result-object v9

    .line 733
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 734
    move-result-object v9

    .line 737
    const-string v10, "index_uiccInfo_sudId"

    .line 738
    invoke-direct {v5, v10, v3, v9, v6}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 740
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 746
    const-string/jumbo v5, "uiccInfo"

    .line 748
    invoke-direct {v3, v5, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 751
    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 754
    move-result-object v1

    .line 757
    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 758
    move-result v2

    .line 761
    if-nez v2, :cond_1

    .line 762
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    .line 766
    const-string/jumbo v4, "uiccInfo(com.android.settingslib.mobile.dataservice.UiccInfoEntity).\n Expected:\n"

    .line 768
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    move-result-object v1

    .line 786
    invoke-direct {v0, v1, v6}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 787
    return-object v0

    .line 790
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 791
    const/16 v2, 0xc

    .line 793
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 795
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 798
    const-string/jumbo v15, "subId"

    .line 800
    const-string v16, "TEXT"

    .line 803
    const/16 v23, 0x1

    .line 805
    const/4 v13, 0x1

    .line 807
    const/16 v22, 0x0

    .line 808
    const/16 v19, 0x1

    .line 810
    const/4 v14, 0x1

    .line 812
    const/16 v17, 0x0

    .line 813
    const/16 v18, 0x1

    .line 815
    move-object v12, v2

    .line 817
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 818
    const-string/jumbo v3, "subId"

    .line 821
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 827
    const-string v15, "isContactDiscoveryEnabled"

    .line 829
    const-string v16, "INTEGER"

    .line 831
    const/4 v4, 0x0

    .line 833
    const/4 v13, 0x0

    .line 834
    move-object v12, v2

    .line 835
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 836
    const-string v5, "isContactDiscoveryEnabled"

    .line 839
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 844
    const-string v15, "isContactDiscoveryVisible"

    .line 846
    const-string v16, "INTEGER"

    .line 848
    move-object v12, v2

    .line 850
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 851
    const-string v5, "isContactDiscoveryVisible"

    .line 854
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 859
    const-string v15, "isMobileDataEnabled"

    .line 861
    const-string v16, "INTEGER"

    .line 863
    move-object v12, v2

    .line 865
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 866
    const-string v5, "isMobileDataEnabled"

    .line 869
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 874
    const-string v15, "isCdmaOptions"

    .line 876
    const-string v16, "INTEGER"

    .line 878
    move-object v12, v2

    .line 880
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 881
    const-string v5, "isCdmaOptions"

    .line 884
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 889
    const-string v15, "isGsmOptions"

    .line 891
    const-string v16, "INTEGER"

    .line 893
    move-object v12, v2

    .line 895
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 896
    const-string v5, "isGsmOptions"

    .line 899
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 904
    const-string v15, "isWorldMode"

    .line 906
    const-string v16, "INTEGER"

    .line 908
    move-object v12, v2

    .line 910
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 911
    const-string v5, "isWorldMode"

    .line 914
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 919
    const-string/jumbo v15, "shouldDisplayNetworkSelectOptions"

    .line 921
    const-string v16, "INTEGER"

    .line 924
    move-object v12, v2

    .line 926
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 927
    const-string/jumbo v5, "shouldDisplayNetworkSelectOptions"

    .line 930
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 936
    const-string v15, "isTdscdmaSupported"

    .line 938
    const-string v16, "INTEGER"

    .line 940
    move-object v12, v2

    .line 942
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 943
    const-string v5, "isTdscdmaSupported"

    .line 946
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 951
    const-string v15, "activeNetworkIsCellular"

    .line 953
    const-string v16, "INTEGER"

    .line 955
    move-object v12, v2

    .line 957
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 958
    const-string v5, "activeNetworkIsCellular"

    .line 961
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 966
    const-string/jumbo v15, "showToggleForPhysicalSim"

    .line 968
    const-string v16, "INTEGER"

    .line 971
    move-object v12, v2

    .line 973
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 974
    const-string/jumbo v5, "showToggleForPhysicalSim"

    .line 977
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 983
    const-string v20, "isDataRoamingEnabled"

    .line 985
    const-string v21, "INTEGER"

    .line 987
    move-object/from16 v17, v2

    .line 989
    move/from16 v18, v4

    .line 991
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 993
    const-string v4, "isDataRoamingEnabled"

    .line 996
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v2, Ljava/util/HashSet;

    .line 1001
    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 1003
    new-instance v4, Ljava/util/HashSet;

    .line 1006
    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 1008
    new-instance v5, Landroidx/room/util/TableInfo$Index;

    .line 1011
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1013
    move-result-object v3

    .line 1016
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1017
    move-result-object v3

    .line 1020
    filled-new-array {v11}, [Ljava/lang/String;

    .line 1021
    move-result-object v9

    .line 1024
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1025
    move-result-object v9

    .line 1028
    const-string v10, "index_MobileNetworkInfo_subId"

    .line 1029
    invoke-direct {v5, v10, v3, v9, v6}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 1031
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 1037
    const-string v5, "MobileNetworkInfo"

    .line 1039
    invoke-direct {v3, v5, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1041
    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1044
    move-result-object v0

    .line 1047
    invoke-virtual {v3, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1048
    move-result v1

    .line 1051
    if-nez v1, :cond_2

    .line 1052
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1056
    const-string v4, "MobileNetworkInfo(com.android.settingslib.mobile.dataservice.MobileNetworkInfoEntity).\n Expected:\n"

    .line 1058
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    move-result-object v0

    .line 1075
    invoke-direct {v1, v0, v6}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1076
    return-object v1

    .line 1079
    :cond_2
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1080
    const/4 v1, 0x0

    .line 1082
    invoke-direct {v0, v1, v8}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1083
    return-object v0
    .line 1086
.end method
