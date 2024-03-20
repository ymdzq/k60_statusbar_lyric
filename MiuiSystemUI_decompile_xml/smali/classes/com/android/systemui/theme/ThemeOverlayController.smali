.class public final Lcom/android/systemui/theme/ThemeOverlayController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAcceptColorEvents:Z

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/theme/ThemeOverlayController$4;

.field protected mColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final mContext:Landroid/content/Context;

.field public mContrast:F

.field public final mCurrentColors:Landroid/util/SparseArray;

.field public mDeferredThemeEvaluation:Z

.field public final mDeferredWallpaperColors:Landroid/util/SparseArray;

.field public final mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceProvisionedListener:Lcom/android/systemui/theme/ThemeOverlayController$1;

.field public mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

.field public mDynamicSchemeDark:Lcom/android/systemui/monet/scheme/DynamicScheme;

.field public mDynamicSchemeLight:Lcom/android/systemui/monet/scheme/DynamicScheme;

.field public final mIsMonetEnabled:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMainWallpaperColor:I

.field public mNeedsOverlayCreation:Z

.field public mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

.field public final mOnColorsChangedListener:Lcom/android/systemui/theme/ThemeOverlayController$2;

.field public final mResources:Landroid/content/res/Resources;

.field public mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSkipSettingChange:Z

.field public final mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

.field protected mThemeStyle:Lcom/android/systemui/monet/Style;

.field public final mUiModeManager:Landroid/app/UiModeManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static -$$Nest$mhandleWallpaperColors(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    const-string v4, "android.theme.customization.accent_color"

    .line 10
    const-string v5, "lock_wallpaper"

    .line 12
    const-string v6, "android.theme.customization.color_source"

    .line 14
    const-string v7, "Updating theme setting from "

    .line 16
    iget-object v8, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 18
    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 20
    invoke-virtual {v8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 22
    move-result v8

    .line 25
    iget-object v9, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v10

    .line 31
    const/4 v11, 0x1

    .line 32
    if-eqz v10, :cond_0

    .line 33
    move v10, v11

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v10, 0x0

    .line 37
    :goto_0
    iget-object v12, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 38
    const/4 v13, 0x2

    .line 40
    invoke-virtual {v12, v13, v3}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    .line 41
    move-result v14

    .line 44
    invoke-virtual {v12, v11, v3}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    .line 45
    move-result v12

    .line 48
    if-le v14, v12, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    move v13, v11

    .line 52
    :goto_1
    and-int v12, v13, v2

    .line 53
    if-eqz v12, :cond_2

    .line 55
    move v12, v11

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v12, 0x0

    .line 59
    :goto_2
    const-string v13, "ThemeOverlayController"

    .line 60
    if-eqz v12, :cond_3

    .line 62
    invoke-virtual {v9, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    new-instance v14, Ljava/lang/StringBuilder;

    .line 67
    const-string v15, "got new colors: "

    .line 69
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v15, " where: "

    .line 77
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v14

    .line 88
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    if-eq v3, v8, :cond_4

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "Colors "

    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, " for user "

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, ". Not for current user: "

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v1, v8, v13}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 117
    goto/16 :goto_b

    .line 120
    :cond_4
    iget-object v14, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 122
    if-eqz v14, :cond_8

    .line 124
    check-cast v14, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 126
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 128
    move-result v14

    .line 131
    if-nez v14, :cond_8

    .line 132
    if-eqz v10, :cond_5

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "Wallpaper color event deferred until setup is finished: "

    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 149
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-boolean v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    .line 153
    goto/16 :goto_b

    .line 155
    :cond_5
    iget-boolean v14, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    .line 157
    if-eqz v14, :cond_6

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "Wallpaper color event received, but we already were deferring eval: "

    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto/16 :goto_b

    .line 178
    :cond_6
    const-string v14, "During user setup, but allowing first color event: had? "

    .line 180
    const-string v15, " has? "

    .line 182
    invoke-static {v14, v10, v15}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-result-object v10

    .line 187
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v3

    .line 191
    if-eqz v3, :cond_7

    .line 192
    move v3, v11

    .line 194
    goto :goto_3

    .line 195
    :cond_7
    const/4 v3, 0x0

    .line 196
    :goto_3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 203
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_8
    iget-object v3, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 207
    move-object v9, v3

    .line 209
    check-cast v9, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 210
    const-string/jumbo v10, "theme_customization_overlay_packages"

    .line 212
    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v8

    .line 218
    const/4 v9, 0x3

    .line 219
    if-ne v2, v9, :cond_9

    .line 220
    move v9, v11

    .line 222
    goto :goto_4

    .line 223
    :cond_9
    const/4 v9, 0x0

    .line 224
    :goto_4
    if-ne v2, v11, :cond_a

    .line 225
    goto :goto_5

    .line 227
    :cond_a
    const/4 v11, 0x0

    .line 228
    :goto_5
    if-nez v8, :cond_b

    .line 229
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    .line 231
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 233
    goto :goto_6

    .line 236
    :cond_b
    new-instance v14, Lorg/json/JSONObject;

    .line 237
    invoke-direct {v14, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    :goto_6
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v15

    .line 245
    move-object/from16 p3, v10

    .line 246
    const-string v10, "preset"

    .line 248
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v10

    .line 253
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    move-result v15

    .line 257
    if-eqz v11, :cond_c

    .line 258
    if-eqz v15, :cond_c

    .line 260
    const/4 v11, 0x1

    .line 262
    goto :goto_7

    .line 263
    :cond_c
    const/4 v11, 0x0

    .line 264
    :goto_7
    if-nez v10, :cond_11

    .line 265
    if-nez v11, :cond_11

    .line 267
    if-eqz v12, :cond_11

    .line 269
    invoke-static {v14, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->isSeedColorSet(Lorg/json/JSONObject;Landroid/app/WallpaperColors;)Z

    .line 271
    move-result v0

    .line 274
    if-nez v0, :cond_11

    .line 275
    const/4 v0, 0x1

    .line 277
    iput-boolean v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSkipSettingChange:Z

    .line 278
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 280
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const-string v10, "android.theme.customization.system_palette"

    .line 284
    if-nez v0, :cond_d

    .line 286
    :try_start_1
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 288
    move-result v0

    .line 291
    if-eqz v0, :cond_e

    .line 292
    :cond_d
    const-string v0, "android.theme.customization.dynamic_color"

    .line 294
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    const-string v0, "android.theme.customization.color_index"

    .line 305
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    :cond_e
    const-string v0, "android.theme.customization.color_both"

    .line 310
    if-eqz v9, :cond_f

    .line 312
    const-string v4, "1"

    .line 314
    goto :goto_8

    .line 316
    :cond_f
    const-string v4, "0"

    .line 317
    :goto_8
    invoke-virtual {v14, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const/4 v0, 0x2

    .line 322
    if-ne v2, v0, :cond_10

    .line 323
    goto :goto_9

    .line 325
    :cond_10
    const-string v5, "home_wallpaper"

    .line 326
    :goto_9
    invoke-virtual {v14, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v0, "_applied_timestamp"

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 333
    move-result-wide v4

    .line 336
    invoke-virtual {v14, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v2, " to "

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 353
    move-result-object v2

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 363
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 367
    move-result-object v0

    .line 370
    check-cast v3, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 371
    const/4 v2, -0x2

    .line 373
    move-object/from16 v4, p3

    .line 374
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    goto :goto_a

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v2, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    .line 381
    invoke-static {v13, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :cond_11
    :goto_a
    const/4 v0, 0x0

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme(Z)V

    .line 387
    :goto_b
    return-void
    .line 390
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/app/UiModeManager;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    .line 11
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 14
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:F

    .line 17
    sget-object v1, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    .line 19
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 21
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    .line 24
    new-instance v1, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    .line 31
    new-instance v1, Landroid/util/SparseIntArray;

    .line 33
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 35
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    .line 38
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$1;

    .line 40
    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$1;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 42
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedListener:Lcom/android/systemui/theme/ThemeOverlayController$1;

    .line 45
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$2;

    .line 47
    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$2;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 49
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mOnColorsChangedListener:Lcom/android/systemui/theme/ThemeOverlayController$2;

    .line 52
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$3;

    .line 54
    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$3;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 56
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 59
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$4;

    .line 61
    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$4;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 63
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastReceiver:Lcom/android/systemui/theme/ThemeOverlayController$4;

    .line 66
    move-object v1, p1

    .line 68
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    .line 69
    sget-object v1, Lcom/android/systemui/flags/Flags;->MONOCHROMATIC_THEME:Lcom/android/systemui/flags/ReleasedFlag;

    .line 71
    move-object/from16 v2, p13

    .line 73
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 75
    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 77
    sget-object v1, Lcom/android/systemui/flags/Flags;->MONET:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 80
    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 82
    move-result v1

    .line 85
    iput-boolean v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    .line 86
    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 89
    move-object v1, p2

    .line 91
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 92
    move-object v1, p9

    .line 94
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    .line 95
    move-object v1, p5

    .line 97
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 98
    move-object v1, p4

    .line 100
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 101
    move-object v1, p3

    .line 103
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    .line 104
    move-object v1, p6

    .line 106
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    .line 107
    move-object v1, p7

    .line 109
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 110
    move-object v1, p8

    .line 112
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 113
    move-object v1, p11

    .line 115
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 116
    move-object/from16 v1, p14

    .line 118
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mResources:Landroid/content/res/Resources;

    .line 120
    move-object/from16 v1, p15

    .line 122
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 124
    move-object/from16 v1, p16

    .line 126
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 128
    const-string v1, "ThemeOverlayController"

    .line 130
    move-object v2, p12

    .line 132
    invoke-virtual {p12, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 133
    return-void
    .line 136
.end method

.method public static assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V
    .locals 1

    .line 1
    const-string v0, "android:color/system_"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    iget-object p2, p2, Lcom/android/systemui/monet/TonalPalette;->allShadesMapped:Ljava/util/Map;

    .line 8
    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda5;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;)V

    .line 12
    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 15
    return-void
    .line 18
.end method

.method public static dynamicSchemeFromStyle(Lcom/android/systemui/monet/Style;IZD)Lcom/android/systemui/monet/scheme/DynamicScheme;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/monet/hct/Hct;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/systemui/monet/hct/Hct;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_6

    .line 11
    const/4 p1, 0x1

    .line 13
    if-eq p0, p1, :cond_5

    .line 14
    const/4 p1, 0x2

    .line 16
    if-eq p0, p1, :cond_4

    .line 17
    const/4 p1, 0x3

    .line 19
    if-eq p0, p1, :cond_3

    .line 20
    const/4 p1, 0x4

    .line 22
    if-eq p0, p1, :cond_2

    .line 23
    const/4 p1, 0x5

    .line 25
    if-eq p0, p1, :cond_1

    .line 26
    const/4 p1, 0x7

    .line 28
    if-eq p0, p1, :cond_0

    .line 29
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeMonochrome;

    .line 33
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeMonochrome;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 35
    return-object p0

    .line 38
    :cond_1
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeFruitSalad;

    .line 39
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeFruitSalad;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 41
    return-object p0

    .line 44
    :cond_2
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeRainbow;

    .line 45
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeRainbow;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 47
    return-object p0

    .line 50
    :cond_3
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeExpressive;

    .line 51
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeExpressive;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 53
    return-object p0

    .line 56
    :cond_4
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeVibrant;

    .line 57
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeVibrant;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 59
    return-object p0

    .line 62
    :cond_5
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeTonalSpot;

    .line 63
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeTonalSpot;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 65
    return-object p0

    .line 68
    :cond_6
    new-instance p0, Lcom/android/systemui/monet/scheme/SchemeNeutral;

    .line 69
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/systemui/monet/scheme/SchemeNeutral;-><init>(Lcom/android/systemui/monet/hct/Hct;ZD)V

    .line 71
    return-object p0
    .line 74
.end method

.method public static isSeedColorSet(Lorg/json/JSONObject;Landroid/app/WallpaperColors;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const-string v1, "android.theme.customization.system_palette"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    if-nez p0, :cond_1

    .line 14
    return v0

    .line 16
    :cond_1
    const-string v1, "#"

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {p1, v2}, Lcom/android/systemui/monet/ColorScheme$Companion;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    .line 34
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 41
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v3

    .line 57
    if-ne v3, v1, :cond_3

    .line 58
    const-string p1, "Same as previous set system palette: "

    .line 60
    const-string v0, "ThemeOverlayController"

    .line 62
    invoke-static {p1, p0, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v2

    .line 67
    :cond_4
    return v0
    .line 68
.end method


# virtual methods
.method public final createOverlays(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->isNightMode()Z

    .line 2
    move-result v0

    .line 5
    new-instance v1, Lcom/android/systemui/monet/ColorScheme;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 8
    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/monet/ColorScheme;-><init>(IZLcom/android/systemui/monet/Style;)V

    .line 10
    iput-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 13
    const-string v0, "neutral"

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/monet/ColorScheme;->neutral1:Lcom/android/systemui/monet/TonalPalette;

    .line 23
    const-string v2, "neutral1"

    .line 25
    invoke-static {v2, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    .line 27
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/monet/ColorScheme;->neutral2:Lcom/android/systemui/monet/TonalPalette;

    .line 32
    const-string v2, "neutral2"

    .line 34
    invoke-static {v2, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 39
    const-string v0, "accent"

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    .line 43
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 47
    iget-object v1, v1, Lcom/android/systemui/monet/ColorScheme;->accent1:Lcom/android/systemui/monet/TonalPalette;

    .line 49
    const-string v2, "accent1"

    .line 51
    invoke-static {v2, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 56
    iget-object v1, v1, Lcom/android/systemui/monet/ColorScheme;->accent2:Lcom/android/systemui/monet/TonalPalette;

    .line 58
    const-string v2, "accent2"

    .line 60
    invoke-static {v2, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 65
    iget-object v1, v1, Lcom/android/systemui/monet/ColorScheme;->accent3:Lcom/android/systemui/monet/TonalPalette;

    .line 67
    const-string v2, "accent3"

    .line 69
    invoke-static {v2, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    .line 71
    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 76
    iget v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:F

    .line 78
    float-to-double v1, v1

    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-static {v0, p1, v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->dynamicSchemeFromStyle(Lcom/android/systemui/monet/Style;IZD)Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 82
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeDark:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 88
    iget v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:F

    .line 90
    float-to-double v1, v1

    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-static {v0, p1, v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->dynamicSchemeFromStyle(Lcom/android/systemui/monet/Style;IZD)Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 94
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeLight:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 98
    const-string p1, "dynamic"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    .line 102
    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeDark:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 106
    sget-object v1, Lcom/android/systemui/theme/DynamicColors;->ALL_DYNAMIC_COLORS_MAPPED:Ljava/util/List;

    .line 108
    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;

    .line 110
    const-string v3, "dark"

    .line 112
    invoke-direct {v2, v3, v0, p1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/systemui/monet/scheme/DynamicScheme;Landroid/content/om/FabricatedOverlay;)V

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeLight:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 120
    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;

    .line 122
    const-string v3, "light"

    .line 124
    invoke-direct {v2, v3, v0, p1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/systemui/monet/scheme/DynamicScheme;Landroid/content/om/FabricatedOverlay;)V

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    sget-object v0, Lcom/android/systemui/theme/DynamicColors;->FIXED_COLORS_MAPPED:Ljava/util/List;

    .line 132
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda1;

    .line 134
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/content/om/FabricatedOverlay;)V

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 139
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    .line 142
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "mSystemColors="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "mMainWallpaperColor="

    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    const-string v0, "mSecondaryOverlay="

    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "mNeutralOverlay="

    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    const-string v0, "mDynamicOverlay="

    .line 84
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "mIsMonetEnabled="

    .line 103
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    .line 108
    const-string v1, "mColorScheme="

    .line 110
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    const-string v0, "mNeedsOverlayCreation="

    .line 130
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 135
    const-string v1, "mAcceptColorEvents="

    .line 137
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-result-object p2

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    .line 143
    const-string v1, "mDeferredThemeEvaluation="

    .line 145
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object p2

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    .line 151
    const-string v1, "mThemeStyle="

    .line 153
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move-result-object p2

    .line 158
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 159
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 167
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return-void
    .line 171
.end method

.method public isNightMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 8
    and-int/lit8 p0, p0, 0x30

    .line 10
    const/16 v0, 0x20

    .line 12
    if-ne p0, v0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;
    .locals 2

    .line 1
    new-instance p0, Landroid/content/om/FabricatedOverlay$Builder;

    .line 2
    const-string v0, "com.android.systemui"

    .line 4
    const-string v1, "android"

    .line 6
    invoke-direct {p0, v0, p1, v1}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final reevaluateSystemTheme(Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 6
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 8
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 10
    move-result v3

    .line 13
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/WallpaperColors;

    .line 18
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v0, :cond_0

    .line 22
    move v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0, v4}, Lcom/android/systemui/monet/ColorScheme$Companion;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Number;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 36
    move-result v0

    .line 39
    :goto_0
    iget v5, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 40
    if-ne v5, v0, :cond_1

    .line 42
    if-nez p1, :cond_1

    .line 44
    return-void

    .line 46
    :cond_1
    iput v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 47
    const-string v5, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    .line 49
    iget-object v6, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 51
    const-string/jumbo v7, "theme_customization_overlay_packages"

    .line 53
    iget-boolean v8, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    .line 56
    const-string v9, "ThemeOverlayController"

    .line 58
    if-eqz v8, :cond_4

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    sget-object v10, Lcom/android/systemui/monet/Style;->EXPRESSIVE:Lcom/android/systemui/monet/Style;

    .line 64
    sget-object v11, Lcom/android/systemui/monet/Style;->SPRITZ:Lcom/android/systemui/monet/Style;

    .line 66
    sget-object v17, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    .line 68
    sget-object v13, Lcom/android/systemui/monet/Style;->FRUIT_SALAD:Lcom/android/systemui/monet/Style;

    .line 70
    sget-object v14, Lcom/android/systemui/monet/Style;->RAINBOW:Lcom/android/systemui/monet/Style;

    .line 72
    sget-object v15, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    .line 74
    sget-object v16, Lcom/android/systemui/monet/Style;->MONOCHROMATIC:Lcom/android/systemui/monet/Style;

    .line 76
    move-object/from16 v12, v17

    .line 78
    filled-new-array/range {v10 .. v16}, [Lcom/android/systemui/monet/Style;

    .line 80
    move-result-object v10

    .line 83
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    move-result-object v10

    .line 87
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 91
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 93
    move-result v11

    .line 96
    move-object v12, v6

    .line 97
    check-cast v12, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 98
    invoke-virtual {v12, v11, v7}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v11

    .line 103
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v12

    .line 107
    if-nez v12, :cond_3

    .line 108
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 110
    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    const-string v11, "android.theme.customization.theme_style"

    .line 115
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v10

    .line 120
    invoke-static {v10}, Lcom/android/systemui/monet/Style;->valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;

    .line 121
    move-result-object v10

    .line 124
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 125
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-nez v0, :cond_2

    .line 129
    goto :goto_1

    .line 131
    :cond_2
    move-object/from16 v17, v10

    .line 132
    :goto_1
    move-object/from16 v10, v17

    .line 134
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {v9, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    sget-object v10, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    .line 141
    :cond_3
    :goto_2
    iput-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    .line 143
    iget v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 145
    invoke-virtual {v1, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->createOverlays(I)V

    .line 147
    iput-boolean v4, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    const-string v10, "fetched overlays. accent: "

    .line 154
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 159
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v10, " neutral: "

    .line 164
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 169
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v10, " dynamic: "

    .line 174
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    .line 179
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 187
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_4
    const-string v10, "#"

    .line 191
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 193
    move-result v15

    .line 196
    check-cast v6, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 197
    invoke-virtual {v6, v15, v7}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v6, "updateThemeOverlays. Setting: "

    .line 205
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 217
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v13, Landroid/util/ArrayMap;

    .line 221
    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    move-result v2

    .line 229
    if-nez v2, :cond_6

    .line 230
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 232
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v0

    .line 242
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v6

    .line 246
    if-eqz v6, :cond_6

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v6

    .line 252
    check-cast v6, Ljava/lang/String;

    .line 253
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 255
    move-result v7

    .line 258
    if-eqz v7, :cond_5

    .line 259
    new-instance v7, Landroid/content/om/OverlayIdentifier;

    .line 261
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    move-result-object v11

    .line 266
    invoke-direct {v7, v11}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v13, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    goto :goto_3

    .line 273
    :catch_1
    move-exception v0

    .line 274
    invoke-static {v9, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_6
    const-string v2, "android.theme.customization.system_palette"

    .line 278
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object v0

    .line 283
    move-object v5, v0

    .line 284
    check-cast v5, Landroid/content/om/OverlayIdentifier;

    .line 285
    const-string v6, "android.theme.customization.dynamic_color"

    .line 287
    const-string v7, "android.theme.customization.accent_color"

    .line 289
    if-eqz v8, :cond_8

    .line 291
    if-eqz v5, :cond_8

    .line 293
    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 298
    if-eqz v0, :cond_8

    .line 299
    :try_start_2
    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 308
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 309
    move-result v8

    .line 312
    if-nez v8, :cond_7

    .line 313
    new-instance v8, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 329
    :cond_7
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 330
    move-result v0

    .line 333
    invoke-virtual {v1, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->createOverlays(I)V

    .line 334
    iput-boolean v4, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 337
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    goto :goto_4

    .line 348
    :catch_2
    move-exception v0

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    .line 350
    const-string v10, "Invalid color definition: "

    .line 352
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 357
    move-result-object v5

    .line 360
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    move-result-object v5

    .line 367
    invoke-static {v9, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    goto :goto_4

    .line 371
    :cond_8
    if-nez v8, :cond_9

    .line 372
    if-eqz v5, :cond_9

    .line 374
    :try_start_3
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 382
    :catch_3
    :cond_9
    :goto_4
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 385
    move-result v0

    .line 388
    if-nez v0, :cond_a

    .line 389
    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 391
    if-eqz v0, :cond_a

    .line 393
    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 395
    move-result-object v0

    .line 398
    invoke-virtual {v13, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_a
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 402
    move-result v0

    .line 405
    if-nez v0, :cond_b

    .line 406
    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 408
    if-eqz v0, :cond_b

    .line 410
    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 412
    move-result-object v0

    .line 415
    invoke-virtual {v13, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_b
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 419
    move-result v0

    .line 422
    if-nez v0, :cond_c

    .line 423
    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    .line 425
    if-eqz v0, :cond_c

    .line 427
    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 429
    move-result-object v0

    .line 432
    invoke-virtual {v13, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    .line 436
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 438
    iget-object v2, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    .line 441
    invoke-virtual {v2, v15}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    .line 443
    move-result-object v2

    .line 446
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 447
    move-result-object v2

    .line 450
    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    move-result v5

    .line 454
    if-eqz v5, :cond_e

    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    move-result-object v5

    .line 460
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 461
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 463
    move-result v6

    .line 466
    if-eqz v6, :cond_d

    .line 467
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 469
    move-result-object v5

    .line 472
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 473
    goto :goto_5

    .line 476
    :cond_e
    new-instance v2, Landroid/util/ArraySet;

    .line 477
    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 479
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 482
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 487
    move-result-object v2

    .line 490
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    move-result v5

    .line 494
    if-eqz v5, :cond_12

    .line 495
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    move-result-object v5

    .line 500
    check-cast v5, Landroid/os/UserHandle;

    .line 501
    invoke-virtual {v5}, Landroid/os/UserHandle;->isSystem()Z

    .line 503
    move-result v6

    .line 506
    iget-object v7, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    .line 507
    if-eqz v6, :cond_10

    .line 509
    iget-object v5, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mResources:Landroid/content/res/Resources;

    .line 511
    goto :goto_6

    .line 513
    :cond_10
    invoke-virtual {v7, v5, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 514
    move-result-object v5

    .line 517
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 518
    move-result-object v5

    .line 521
    :goto_6
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 522
    move-result-object v6

    .line 525
    new-instance v7, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 526
    invoke-direct {v7}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;-><init>()V

    .line 528
    const v8, 0x106003e    # @android:color/system_accent1_500

    .line 531
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 534
    move-result v8

    .line 537
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 538
    iget-object v10, v10, Lcom/android/systemui/monet/ColorScheme;->accent1:Lcom/android/systemui/monet/TonalPalette;

    .line 540
    invoke-virtual {v10}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    .line 542
    move-result v10

    .line 545
    if-ne v8, v10, :cond_11

    .line 546
    const v8, 0x106004b    # @android:color/system_accent2_500

    .line 548
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 551
    move-result v8

    .line 554
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 555
    iget-object v10, v10, Lcom/android/systemui/monet/ColorScheme;->accent2:Lcom/android/systemui/monet/TonalPalette;

    .line 557
    invoke-virtual {v10}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    .line 559
    move-result v10

    .line 562
    if-ne v8, v10, :cond_11

    .line 563
    const v8, 0x1060058    # @android:color/system_accent3_500

    .line 565
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 568
    move-result v8

    .line 571
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 572
    iget-object v10, v10, Lcom/android/systemui/monet/ColorScheme;->accent3:Lcom/android/systemui/monet/TonalPalette;

    .line 574
    invoke-virtual {v10}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    .line 576
    move-result v10

    .line 579
    if-ne v8, v10, :cond_11

    .line 580
    const v8, 0x1060024    # @android:color/system_neutral1_500

    .line 582
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 585
    move-result v8

    .line 588
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 589
    iget-object v10, v10, Lcom/android/systemui/monet/ColorScheme;->neutral1:Lcom/android/systemui/monet/TonalPalette;

    .line 591
    invoke-virtual {v10}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    .line 593
    move-result v10

    .line 596
    if-ne v8, v10, :cond_11

    .line 597
    const v8, 0x1060031    # @android:color/system_neutral2_500

    .line 599
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 602
    move-result v8

    .line 605
    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 606
    iget-object v10, v10, Lcom/android/systemui/monet/ColorScheme;->neutral2:Lcom/android/systemui/monet/TonalPalette;

    .line 608
    invoke-virtual {v10}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    .line 610
    move-result v10

    .line 613
    if-ne v8, v10, :cond_11

    .line 614
    const v8, 0x10600c1    # @android:color/system_outline_variant_dark

    .line 616
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 619
    move-result v8

    .line 622
    invoke-virtual {v7}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 623
    move-result-object v10

    .line 626
    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeDark:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 627
    invoke-virtual {v10, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I

    .line 629
    move-result v10

    .line 632
    if-ne v8, v10, :cond_11

    .line 633
    const v8, 0x10600c0    # @android:color/system_outline_variant_light

    .line 635
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 638
    move-result v8

    .line 641
    invoke-virtual {v7}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 642
    move-result-object v10

    .line 645
    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeLight:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 646
    invoke-virtual {v10, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I

    .line 648
    move-result v10

    .line 651
    if-ne v8, v10, :cond_11

    .line 652
    const v8, 0x1060089    # @android:color/system_primary_container_dark

    .line 654
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 657
    move-result v8

    .line 660
    invoke-virtual {v7}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 661
    move-result-object v10

    .line 664
    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeDark:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 665
    invoke-virtual {v10, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I

    .line 667
    move-result v10

    .line 670
    if-ne v8, v10, :cond_11

    .line 671
    const v8, 0x106005e    # @android:color/system_primary_container_light

    .line 673
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 676
    move-result v8

    .line 679
    invoke-virtual {v7}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 680
    move-result-object v10

    .line 683
    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeLight:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 684
    invoke-virtual {v10, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I

    .line 686
    move-result v10

    .line 689
    if-ne v8, v10, :cond_11

    .line 690
    const v8, 0x10600b4    # @android:color/system_primary_fixed

    .line 692
    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 695
    move-result v5

    .line 698
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 699
    const/16 v8, 0xf

    .line 701
    invoke-direct {v6, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 703
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 706
    const/16 v10, 0x10

    .line 708
    invoke-direct {v8, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 710
    new-instance v10, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 713
    const/4 v11, 0x6

    .line 715
    invoke-direct {v10, v7, v11}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 716
    const/4 v7, 0x0

    .line 719
    invoke-static {v6, v8, v10, v7}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 720
    move-result-object v6

    .line 723
    iget-object v7, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicSchemeLight:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 724
    invoke-virtual {v6, v7}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I

    .line 726
    move-result v6

    .line 729
    if-eq v5, v6, :cond_f

    .line 730
    :cond_11
    move v4, v3

    .line 732
    :cond_12
    if-eqz v4, :cond_13

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    .line 735
    const-string v2, "Skipping overlay creation. Theme was already: "

    .line 737
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    iget-object v1, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    move-result-object v0

    .line 750
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    goto :goto_7

    .line 754
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 755
    const-string v4, "Applying overlays: "

    .line 757
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 762
    move-result-object v4

    .line 765
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 766
    move-result-object v4

    .line 769
    new-instance v5, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;

    .line 770
    invoke-direct {v5, v13}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    .line 772
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 775
    move-result-object v4

    .line 778
    const-string v5, ", "

    .line 779
    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 781
    move-result-object v5

    .line 784
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 785
    move-result-object v4

    .line 788
    check-cast v4, Ljava/lang/String;

    .line 789
    invoke-static {v2, v4, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-boolean v2, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 794
    iget-object v4, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    .line 796
    if-eqz v2, :cond_14

    .line 798
    iput-boolean v3, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 800
    iget-object v2, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 802
    iget-object v3, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 804
    iget-object v1, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    .line 806
    filled-new-array {v2, v3, v1}, [Landroid/content/om/FabricatedOverlay;

    .line 808
    move-result-object v14

    .line 811
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;

    .line 815
    move-object v11, v1

    .line 817
    move-object v12, v4

    .line 818
    move-object/from16 v16, v0

    .line 819
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;ILjava/util/Set;)V

    .line 821
    iget-object v0, v4, Lcom/android/systemui/theme/ThemeOverlayApplier;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 824
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    goto :goto_7

    .line 829
    :cond_14
    const/4 v14, 0x0

    .line 830
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;

    .line 834
    move-object v11, v1

    .line 836
    move-object v12, v4

    .line 837
    move-object/from16 v16, v0

    .line 838
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;ILjava/util/Set;)V

    .line 840
    iget-object v0, v4, Lcom/android/systemui/theme/ThemeOverlayApplier;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 843
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 845
    :goto_7
    return-void
    .line 848
.end method

.method public final start()V
    .locals 6

    .line 1
    const-string v0, "ThemeOverlayController"

    .line 2
    const-string v1, "Start"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 24
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 26
    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastReceiver:Lcom/android/systemui/theme/ThemeOverlayController$4;

    .line 28
    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 30
    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 32
    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayController$5;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/theme/ThemeOverlayController$5;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/os/Handler;)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 42
    const-string/jumbo v2, "theme_customization_overlay_packages"

    .line 44
    const/4 v3, 0x0

    .line 47
    const/4 v5, -0x1

    .line 48
    invoke-interface {v1, v2, v3, v0, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 52
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getContrast()F

    .line 54
    move-result v1

    .line 57
    iput v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:F

    .line 58
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda2;

    .line 60
    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 62
    invoke-virtual {v0, v4, v1}, Landroid/app/UiModeManager;->addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    .line 68
    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 73
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 75
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 77
    invoke-virtual {v2, v1, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 82
    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 84
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedListener:Lcom/android/systemui/theme/ThemeOverlayController$1;

    .line 86
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 88
    if-nez v0, :cond_1

    .line 91
    return-void

    .line 93
    :cond_1
    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;

    .line 94
    invoke-direct {v0, p0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 96
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 99
    move-result v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->run()V

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 109
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    :goto_0
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 115
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mOnColorsChangedListener:Lcom/android/systemui/theme/ThemeOverlayController$2;

    .line 117
    invoke-virtual {v1, v2, v0, v5}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 119
    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayController$6;

    .line 122
    invoke-direct {v0, p0}, Lcom/android/systemui/theme/ThemeOverlayController$6;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 127
    iget-object p0, p0, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
    .line 134
.end method
