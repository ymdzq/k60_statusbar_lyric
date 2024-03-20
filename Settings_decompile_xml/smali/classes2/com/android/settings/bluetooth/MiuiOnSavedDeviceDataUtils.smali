.class public Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;
.super Ljava/lang/Object;
.source "MiuiOnSavedDeviceDataUtils.java"


# static fields
.field private static final URI_SYNCED:Landroid/net/Uri;

.field private static final URI_UNSYNCED:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.bluetooth.ble.app.headsetdata.provider/unsynceddata"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_UNSYNCED:Landroid/net/Uri;

    const-string v0, "content://com.android.bluetooth.ble.app.headsetdata.provider/synceddata"

    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_SYNCED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static checkValidity(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9a-zA-Z]{2}:[0-9a-zA-Z]{2}:[0-9a-zA-Z]{2}:[0-9a-zA-Z]{2}:[0-9a-zA-Z]{2}:[0-9a-zA-Z]{2}"

    .line 315
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getRecordFromSyncTable(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 62

    move-object/from16 v0, p0

    .line 217
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "syncId"

    .line 221
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eTag"

    .line 222
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string/jumbo v7, "mac"

    .line 224
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "name"

    .line 225
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "version"

    .line 226
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "accountKey"

    .line 227
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "codecs"

    move-object/from16 v16, v13

    .line 228
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    const-string/jumbo v13, "manufacturer"

    move-object/from16 v18, v15

    .line 229
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v13

    const-string v13, "lmpVer"

    move-object/from16 v20, v15

    .line 230
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v13

    const-string v13, "lmpSubVer"

    move-object/from16 v22, v15

    .line 231
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v13

    const-string v13, "linkKeyType"

    move-object/from16 v24, v15

    .line 232
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v13

    const-string/jumbo v13, "pinLength"

    move-object/from16 v26, v15

    .line 233
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v13

    const-string v13, "linkKey"

    move-object/from16 v28, v15

    .line 234
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v13

    const-string/jumbo v13, "service"

    move-object/from16 v30, v15

    .line 235
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v13

    const-string v13, "aliase"

    move-object/from16 v32, v15

    .line 236
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v13

    const-string v13, "lbsLongitude"

    move-object/from16 v34, v15

    .line 237
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v35, v13

    const-string v13, "lbsLatitude"

    move-object/from16 v36, v15

    .line 238
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v37, v13

    const-string v13, "lbsTimestamp"

    move-object/from16 v38, v15

    .line 239
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v39, v13

    const-string v13, "extend"

    move-object/from16 v40, v15

    .line 240
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v41, v13

    const-string v13, "devId"

    move-object/from16 v42, v15

    .line 242
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v43, v13

    const-string v13, "devType"

    move-object/from16 v44, v15

    .line 243
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v45, v13

    const-string v13, "hasGps"

    move-object/from16 v46, v15

    .line 244
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v47, v13

    const-string v13, "gps"

    .line 245
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v48, v13

    const-string v13, "btDevType"

    .line 247
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v49, v13

    const-string v13, "addrType"

    .line 248
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v50, v13

    const-string/jumbo v13, "timestamp"

    .line 250
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    const-string v13, "devClass"

    .line 251
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    const-string v13, "avrcpCtVersion"

    .line 253
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v55, v13

    const-string v13, "avrcpFeatures"

    .line 254
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v56, v13

    const-string v13, "a2dpVersion"

    .line 255
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v57

    invoke-static/range {v57 .. v58}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v57, v13

    const-string v13, "avdtpVersion"

    .line 256
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v58

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v58, v13

    const-string v13, "hfpVersion"

    .line 257
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v59

    invoke-static/range {v59 .. v60}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v59, v13

    const-string v13, "avrcpTgVersion"

    .line 258
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 261
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 267
    invoke-virtual {v1, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    .line 268
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    .line 269
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    .line 270
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v23

    move-object/from16 v2, v24

    .line 271
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    .line 272
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v27

    move-object/from16 v2, v28

    .line 273
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    .line 274
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    .line 275
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v33

    move-object/from16 v2, v34

    .line 276
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v35

    move-object/from16 v2, v36

    .line 277
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v37

    move-object/from16 v2, v38

    .line 278
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v39

    move-object/from16 v2, v40

    .line 279
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v41

    move-object/from16 v2, v42

    .line 280
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v43

    move-object/from16 v2, v44

    .line 282
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v45

    move-object/from16 v2, v46

    .line 283
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v47

    .line 284
    invoke-virtual {v1, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gps"

    move-object/from16 v3, v48

    .line 285
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "btDevType"

    .line 287
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "addrType"

    .line 288
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "timestamp"

    .line 290
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "devClass"

    .line 291
    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "avrcpCtVersion"

    move-object/from16 v3, v55

    .line 293
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "avrcpFeatures"

    move-object/from16 v3, v56

    .line 294
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "a2dpVersion"

    move-object/from16 v3, v57

    .line 295
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "avdtpVersion"

    move-object/from16 v3, v58

    .line 296
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "hfpVersion"

    move-object/from16 v3, v59

    .line 297
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "avrcpTgVersion"

    .line 298
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-object v1
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closeQuietly operation is abnormal"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiOnSavedDeviceDataUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public createAndUpdateData(Landroid/content/ContentValues;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "status"

    const-string v3, "create or update BtData of datebase"

    const-string v4, "MiuiOnSavedDeviceDataUtils"

    .line 92
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "mac = ?"

    const-string/jumbo v5, "mac"

    .line 94
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "timestamp"

    .line 98
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    :try_start_0
    iget-object v5, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_SYNCED:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v14

    move-object v8, v3

    move-object v9, v12

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    :try_start_1
    iget-object v5, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_UNSYNCED:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v6, v11

    move-object v8, v3

    move-object v9, v12

    move-object v13, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_2

    .line 103
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 104
    iget-object v6, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v14, v0, v3, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const-string/jumbo v6, "update bt data to synced-table success"

    .line 105
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_0
    iget-object v6, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v14, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "insert synced error"

    .line 109
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "insert bt data to synced-table success"

    .line 111
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v13, v15

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v13, v15

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v5, :cond_5

    const/4 v6, 0x2

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 119
    iget-object v2, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v13, v0, v3, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "update bt data to unsynced-table success, status: update"

    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v2, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v13, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "insert unsynced error"

    .line 125
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "insert bt data to unsynced-table success status: add"

    .line 127
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :cond_5
    :goto_1
    invoke-virtual {v1, v15}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 136
    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v13, v15

    const/4 v5, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v13, v15

    const/4 v5, 0x0

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    const/4 v13, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 133
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update or insert operation is abnormal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 135
    invoke-virtual {v1, v13}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_4
    return-void

    :catchall_3
    move-exception v0

    :goto_5
    invoke-virtual {v1, v13}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 136
    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 137
    throw v0
.end method

.method public deleteDeviceData(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    const-string/jumbo v2, "timestamp"

    const-string v0, "delete operation BtData of datebase"

    const-string v3, "MiuiOnSavedDeviceDataUtils"

    .line 142
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "address is null!"

    .line 145
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->checkValidity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Incorrect data format!"

    .line 149
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v11, "mac = ? "

    .line 154
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v12

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 166
    :try_start_0
    iget-object v4, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_SYNCED:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v11

    move-object v8, v12

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 167
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->getRecordFromSyncTable(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 172
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete operation is abnormal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 174
    invoke-virtual {v1, v4}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 178
    :goto_2
    iget-object v4, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_SYNCED:Landroid/net/Uri;

    invoke-virtual {v4, v5, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_8

    if-gtz v4, :cond_3

    goto/16 :goto_7

    .line 187
    :cond_3
    :try_start_3
    iget-object v4, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_UNSYNCED:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v5, v10

    move-object v7, v11

    move-object v8, v12

    move-object v15, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_7

    :try_start_4
    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    .line 189
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v13

    if-lez v7, :cond_4

    const-wide/16 v7, 0x1

    add-long v13, v5, v7

    .line 194
    :cond_4
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 196
    iget-object v2, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v15, v0, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    const-string/jumbo v0, "update bt data to unsynced-table success, status: delete"

    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 200
    :cond_5
    iget-object v2, v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "insert unsynced error"

    .line 201
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v0, "insert bt data to unsynced-table success, status: delete"

    .line 203
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v15, v4

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v15, v4

    goto :goto_4

    .line 212
    :cond_7
    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v15, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v15, 0x0

    .line 209
    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update operation or insert operation unsynced-table is abnormal"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 212
    invoke-virtual {v1, v15}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_5
    return-void

    :catchall_3
    move-exception v0

    :goto_6
    invoke-virtual {v1, v15}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 213
    throw v0

    :cond_8
    :goto_7
    const-string v0, "delete bt data of unsynced-table failed"

    .line 182
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_4
    move-exception v0

    move-object v15, v4

    .line 174
    :goto_8
    invoke-virtual {v1, v15}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    throw v0
.end method

.method public queryDeviceByMac(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10

    const-string/jumbo v0, "query BtData in datebase through address"

    const-string v1, "MiuiOnSavedDeviceDataUtils"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "mac = ?"

    .line 72
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_SYNCED:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 75
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 76
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->getRecordFromSyncTable(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_1

    :cond_0
    const-string v2, "error queryDeviceByMac: cursorSync data not single"

    .line 80
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v0, p1

    .line 83
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query operation is abnormal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p1, v0

    :goto_2
    return-object p1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 87
    throw p1
.end method

.method public queryDeviceData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "query BtData in datebase"

    const-string v1, "MiuiOnSavedDeviceDataUtils"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->URI_SYNCED:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->getRecordFromSyncTable(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v3

    .line 54
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 59
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query operation is abnormal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 61
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    throw v0
.end method
