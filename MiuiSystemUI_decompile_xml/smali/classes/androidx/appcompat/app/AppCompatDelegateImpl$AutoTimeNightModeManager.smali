.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mTwilightManager:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getApplyableNightMode()I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 10
    goto/16 :goto_b

    .line 13
    :pswitch_0
    check-cast v0, Landroidx/appcompat/app/TwilightManager;

    .line 15
    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 17
    iget-wide v4, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v6

    .line 24
    cmp-long v4, v4, v6

    .line 25
    const/4 v5, 0x0

    .line 27
    if-lez v4, :cond_0

    .line 28
    move v4, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v5

    .line 32
    :goto_0
    if-eqz v4, :cond_1

    .line 33
    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 35
    goto/16 :goto_9

    .line 37
    :cond_1
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 39
    iget-object v6, v0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v6, v4}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 43
    move-result v4

    .line 46
    const-string v7, "Failed to get last known location"

    .line 47
    const-string v8, "TwilightManager"

    .line 49
    const/4 v9, 0x0

    .line 51
    iget-object v10, v0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 52
    if-nez v4, :cond_3

    .line 54
    const-string v0, "network"

    .line 56
    :try_start_0
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 58
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 64
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_2
    move-object v0, v9

    .line 73
    :goto_1
    move-object v4, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move-object v4, v9

    .line 76
    :goto_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 77
    invoke-static {v6, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 79
    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    const-string v0, "gps"

    .line 85
    :try_start_1
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 87
    move-result v6

    .line 90
    if-eqz v6, :cond_4

    .line 91
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 93
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    move-object v9, v0

    .line 97
    goto :goto_3

    .line 98
    :catch_1
    move-exception v0

    .line 99
    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 103
    if-eqz v4, :cond_5

    .line 105
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 107
    move-result-wide v6

    .line 110
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    .line 111
    move-result-wide v10

    .line 114
    cmp-long v0, v6, v10

    .line 115
    if-lez v0, :cond_6

    .line 117
    goto :goto_4

    .line 119
    :cond_5
    if-eqz v9, :cond_6

    .line 120
    :goto_4
    move-object v4, v9

    .line 122
    :cond_6
    if-eqz v4, :cond_d

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    move-result-wide v6

    .line 128
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 129
    if-nez v0, :cond_7

    .line 131
    new-instance v0, Landroidx/appcompat/app/TwilightCalculator;

    .line 133
    invoke-direct {v0}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    .line 135
    sput-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 138
    :cond_7
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 140
    const-wide/32 v16, 0x5265c00

    .line 142
    sub-long v13, v6, v16

    .line 145
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 147
    move-result-wide v9

    .line 150
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    .line 151
    move-result-wide v11

    .line 154
    move-object v8, v0

    .line 155
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 156
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 159
    move-result-wide v10

    .line 162
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    .line 163
    move-result-wide v12

    .line 166
    move-object v9, v0

    .line 167
    move-wide v14, v6

    .line 168
    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 169
    iget v8, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 172
    if-ne v8, v3, :cond_8

    .line 174
    move v5, v3

    .line 176
    :cond_8
    iget-wide v13, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 177
    iget-wide v11, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 179
    add-long v15, v16, v6

    .line 181
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 183
    move-result-wide v9

    .line 186
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    .line 187
    move-result-wide v17

    .line 190
    move-object v8, v0

    .line 191
    move-wide/from16 v19, v11

    .line 192
    move-wide/from16 v11, v17

    .line 194
    move-wide/from16 v17, v13

    .line 196
    move-wide v13, v15

    .line 198
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 199
    iget-wide v8, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 202
    const-wide/16 v10, -0x1

    .line 204
    cmp-long v0, v17, v10

    .line 206
    if-eqz v0, :cond_c

    .line 208
    cmp-long v0, v19, v10

    .line 210
    if-nez v0, :cond_9

    .line 212
    goto :goto_6

    .line 214
    :cond_9
    cmp-long v0, v6, v19

    .line 215
    const-wide/16 v10, 0x0

    .line 217
    if-lez v0, :cond_a

    .line 219
    add-long/2addr v8, v10

    .line 221
    goto :goto_5

    .line 222
    :cond_a
    cmp-long v0, v6, v17

    .line 223
    if-lez v0, :cond_b

    .line 225
    add-long v8, v19, v10

    .line 227
    goto :goto_5

    .line 229
    :cond_b
    add-long v8, v17, v10

    .line 230
    :goto_5
    const-wide/32 v6, 0xea60

    .line 232
    add-long/2addr v8, v6

    .line 235
    goto :goto_7

    .line 236
    :cond_c
    :goto_6
    const-wide/32 v8, 0x2932e00

    .line 237
    add-long/2addr v8, v6

    .line 240
    :goto_7
    iput-boolean v5, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 241
    iput-wide v8, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 243
    goto :goto_8

    .line 245
    :cond_d
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 246
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 251
    move-result-object v0

    .line 254
    const/16 v1, 0xb

    .line 255
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 257
    move-result v0

    .line 260
    const/4 v1, 0x6

    .line 261
    if-lt v0, v1, :cond_e

    .line 262
    const/16 v1, 0x16

    .line 264
    if-lt v0, v1, :cond_f

    .line 266
    :cond_e
    move v5, v3

    .line 268
    :cond_f
    :goto_8
    move v0, v5

    .line 269
    :goto_9
    if-eqz v0, :cond_10

    .line 270
    goto :goto_a

    .line 272
    :cond_10
    move v2, v3

    .line 273
    :goto_a
    return v2

    .line 274
    :goto_b
    check-cast v0, Landroid/os/PowerManager;

    .line 275
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 277
    move-result v0

    .line 280
    if-eqz v0, :cond_11

    .line 281
    goto :goto_c

    .line 283
    :cond_11
    move v2, v3

    .line 284
    :goto_c
    return v2

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 286
.end method
