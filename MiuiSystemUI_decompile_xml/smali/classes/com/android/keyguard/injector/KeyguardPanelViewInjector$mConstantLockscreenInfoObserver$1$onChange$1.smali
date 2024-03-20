.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 11
    iget-object v2, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 12
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 14
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 16
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 18
    move-result v2

    .line 21
    const-string v3, "constant_lockscreen_info"

    .line 22
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    if-nez v0, :cond_c

    .line 28
    iget-object v0, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 30
    iget-object v2, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object v4

    .line 37
    iget-object v5, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 38
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 40
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 42
    move-result v6

    .line 45
    const-string/jumbo v7, "status_bar_show_carrier_under_keyguard"

    .line 46
    const/4 v8, 0x1

    .line 49
    invoke-static {v4, v7, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 50
    move-result v4

    .line 53
    const/4 v6, 0x0

    .line 54
    if-ne v4, v8, :cond_0

    .line 55
    move v4, v8

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v4, v6

    .line 59
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    move-result-object v7

    .line 63
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 64
    move-result v9

    .line 67
    const-string/jumbo v10, "show_lunar_calendar"

    .line 68
    invoke-static {v7, v10, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 71
    move-result v7

    .line 74
    if-ne v7, v8, :cond_1

    .line 75
    move v7, v8

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v7, v6

    .line 79
    :goto_1
    iget-object v9, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    const-string v10, ""

    .line 82
    if-eqz v9, :cond_2

    .line 84
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 86
    move-result v11

    .line 89
    invoke-virtual {v9, v11}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    .line 90
    move-result v9

    .line 93
    if-eqz v9, :cond_3

    .line 94
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 101
    move-result v10

    .line 104
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    .line 105
    move-result-object v10

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    move v9, v6

    .line 110
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 111
    move-result v0

    .line 114
    const-string v5, "com.miui.weather2"

    .line 115
    invoke-static {v2, v5, v0}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 117
    move-result v0

    .line 120
    new-instance v2, Lcom/miui/clock/module/ClockBean;

    .line 121
    const-string v5, "classic"

    .line 123
    invoke-direct {v2, v5}, Lcom/miui/clock/module/ClockBean;-><init>(Ljava/lang/String;)V

    .line 125
    const-class v5, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 128
    if-nez v4, :cond_4

    .line 130
    if-eqz v7, :cond_4

    .line 132
    const/16 v11, 0x65

    .line 134
    invoke-virtual {v2, v11}, Lcom/miui/clock/module/ClockBean;->setClassicLine1(I)V

    .line 136
    goto :goto_3

    .line 139
    :cond_4
    sget-object v11, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 140
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    move-result-object v11

    .line 145
    check-cast v11, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 146
    check-cast v11, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 148
    iget-boolean v11, v11, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 150
    if-eqz v11, :cond_5

    .line 152
    if-eqz v4, :cond_5

    .line 154
    const/16 v11, 0xb

    .line 156
    invoke-virtual {v2, v11}, Lcom/miui/clock/module/ClockBean;->setClassicLine1(I)V

    .line 158
    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {v2, v6}, Lcom/miui/clock/module/ClockBean;->setClassicLine1(I)V

    .line 162
    :goto_3
    const/16 v11, 0x12c

    .line 165
    invoke-virtual {v2, v11}, Lcom/miui/clock/module/ClockBean;->setClassicLine2(I)V

    .line 167
    if-eqz v0, :cond_7

    .line 170
    if-eqz v7, :cond_6

    .line 172
    if-eqz v4, :cond_6

    .line 174
    const/16 v11, 0xd2

    .line 176
    invoke-virtual {v2, v11}, Lcom/miui/clock/module/ClockBean;->setClassicLine3(I)V

    .line 178
    goto :goto_4

    .line 181
    :cond_6
    const/16 v11, 0xca

    .line 182
    invoke-virtual {v2, v11}, Lcom/miui/clock/module/ClockBean;->setClassicLine3(I)V

    .line 184
    goto :goto_4

    .line 187
    :cond_7
    const/16 v11, 0xce

    .line 188
    invoke-virtual {v2, v11}, Lcom/miui/clock/module/ClockBean;->setClassicLine3(I)V

    .line 190
    :goto_4
    if-eqz v0, :cond_8

    .line 193
    const/16 v0, 0x190

    .line 195
    invoke-virtual {v2, v0}, Lcom/miui/clock/module/ClockBean;->setClassicLine4(I)V

    .line 197
    goto :goto_5

    .line 200
    :cond_8
    if-eqz v7, :cond_9

    .line 201
    if-eqz v4, :cond_9

    .line 203
    const/16 v0, 0xd1

    .line 205
    invoke-virtual {v2, v0}, Lcom/miui/clock/module/ClockBean;->setClassicLine4(I)V

    .line 207
    goto :goto_5

    .line 210
    :cond_9
    const/16 v0, 0xc8

    .line 211
    invoke-virtual {v2, v0}, Lcom/miui/clock/module/ClockBean;->setClassicLine4(I)V

    .line 213
    :goto_5
    if-eqz v9, :cond_a

    .line 216
    const/16 v0, 0xc

    .line 218
    invoke-virtual {v2, v0}, Lcom/miui/clock/module/ClockBean;->setClassicLine5(I)V

    .line 220
    invoke-virtual {v2, v10}, Lcom/miui/clock/module/ClockBean;->setClassicSignature(Ljava/lang/String;)V

    .line 223
    :cond_a
    invoke-virtual {v2, v8}, Lcom/miui/clock/module/ClockBean;->setAutoPrimaryColor(Z)V

    .line 226
    invoke-virtual {v2, v8}, Lcom/miui/clock/module/ClockBean;->setAutoSecondaryColor(Z)V

    .line 229
    new-instance v0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 232
    const/4 v12, 0x0

    .line 234
    const/4 v13, 0x0

    .line 235
    const/4 v14, 0x0

    .line 236
    const/4 v15, 0x0

    .line 237
    const/16 v16, 0xf

    .line 238
    const/16 v17, 0x0

    .line 240
    move-object v11, v0

    .line 242
    invoke-direct/range {v11 .. v17}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;-><init>(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 243
    invoke-virtual {v0, v6}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->setSupportSubject(Z)V

    .line 246
    new-instance v4, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;

    .line 249
    invoke-direct {v4, v2, v0}, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;-><init>(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;)V

    .line 251
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 254
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 256
    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;)Ljava/lang/String;

    .line 259
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_6

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const-string v2, "KeyguardPanelViewInjector"

    .line 265
    const-string v4, "buildLockscreenInfoFromOTA: error"

    .line 267
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 272
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    move-result-object v0

    .line 277
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 278
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 280
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 282
    if-eqz v0, :cond_b

    .line 284
    const-string/jumbo v0, "{\"clockInfo\":{\"classicLine1\":11,\"classicLine2\":300,\"classicLine3\":207,\"classicLine4\":200,\"classicLine5\":12,\"classicSignature\":\"\",\"enableDiffusion\":false,\"isAutoPrimaryColor\":false,\"isAutoSecondaryColor\":false,\"isDiffHourMinuteColor\":false,\"primaryColor\":-1,\"secondaryColor\":0,\"style\":21,\"templateId\":\"classic\"}}"

    .line 286
    goto :goto_6

    .line 289
    :cond_b
    const-string/jumbo v0, "{\"clockInfo\":{\"classicLine1\":0,\"classicLine2\":300,\"classicLine3\":207,\"classicLine4\":200,\"classicLine5\":12,\"classicSignature\":\"\",\"enableDiffusion\":false,\"isAutoPrimaryColor\":false,\"isAutoSecondaryColor\":false,\"isDiffHourMinuteColor\":false,\"primaryColor\":-1,\"secondaryColor\":0,\"style\":21,\"templateId\":\"classic\"}}"

    .line 290
    :goto_6
    iget-object v2, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 293
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 297
    move-result-object v2

    .line 300
    iget-object v4, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 301
    iget-object v4, v4, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 303
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 305
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 307
    move-result v4

    .line 310
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 311
    iget-object v2, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 314
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 318
    move-result-object v2

    .line 321
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 322
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 324
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 326
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 328
    move-result v1

    .line 331
    const-string v3, "miui_15_default_lockscreen_info"

    .line 332
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 334
    goto :goto_7

    .line 337
    :cond_c
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1$onChange$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 338
    const/4 v2, 0x0

    .line 340
    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onLockScreenInfoChange(Ljava/lang/String;Lcom/miui/clock/module/ClockBean;)V

    .line 341
    :goto_7
    return-void
    .line 344
.end method
