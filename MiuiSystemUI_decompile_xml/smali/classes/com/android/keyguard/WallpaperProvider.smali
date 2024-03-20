.class public Lcom/android/keyguard/WallpaperProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/android/keyguard/WallpaperProvider;->mHandler:Landroid/os/Handler;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "call method = "

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 15
    const-string v0, "WallpaperProvider"

    .line 16
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance p2, Landroid/os/Bundle;

    .line 21
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v1, "GET_ELECTRIC_TORCH_STATUS"

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    const-class p0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 34
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 40
    check-cast p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 44
    move-result p0

    .line 47
    const-string p1, "electric_torch_status"

    .line 48
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    goto/16 :goto_3

    .line 53
    :cond_0
    const-string v1, "SET_ELECTRIC_TORCH_STATUS"

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->toggleTorch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto/16 :goto_3

    .line 66
    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    const-string p3, "call METHOD_SET_ELECTRIC_TORCH_STATUS"

    .line 71
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    goto/16 :goto_3

    .line 79
    :cond_1
    const-string v1, "CHECK_TSM_CLIENT_STATUS"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    :try_start_1
    const-string p1, "TSM_client_status"

    .line 91
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 93
    move-result-object p0

    .line 96
    sget-boolean p3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 97
    if-nez p3, :cond_2

    .line 99
    const-string p3, "com.miui.tsmclient"

    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 103
    move-result v1

    .line 106
    invoke-static {p0, p3, v1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 107
    move-result p0

    .line 110
    if-eqz p0, :cond_2

    .line 111
    move v2, v3

    .line 113
    :cond_2
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    goto/16 :goto_3

    .line 117
    :catch_1
    move-exception p0

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    const-string p3, "call METHOD_CHECK_TSM_CLIENT_STATUS"

    .line 122
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    goto/16 :goto_3

    .line 130
    :cond_3
    const-string v1, "OPEN_TSM_CLIENT"

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    .line 140
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 142
    const-string p3, "com.miui.intent.action.DOUBLE_CLICK"

    .line 145
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string p3, "event_source"

    .line 150
    const-string/jumbo v1, "shortcut_of_all_cards"

    .line 152
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 p3, 0x10000000

    .line 158
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 163
    move-result-object p0

    .line 166
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 167
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    goto/16 :goto_3

    .line 172
    :catch_2
    move-exception p0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    const-string p3, "call METHOD_OPEN_TSM_CLIENT"

    .line 177
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 182
    goto/16 :goto_3

    .line 185
    :cond_4
    const-string v1, "CHECK_SMART_HOME_STATUS"

    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v1

    .line 192
    const-string v4, "com.xiaomi.smarthome"

    .line 193
    if-eqz v1, :cond_9

    .line 195
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 197
    move-result-object p1

    .line 200
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 201
    move-result p3

    .line 204
    invoke-static {p1, v4, p3}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 205
    move-result p1

    .line 208
    const-string p3, ""

    .line 209
    if-eqz p1, :cond_8

    .line 211
    sget-object p1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 213
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 215
    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->isRegionSupportMiHome(Landroid/content/Context;)Z

    .line 219
    move-result p1

    .line 222
    if-eqz p1, :cond_8

    .line 223
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 225
    move-result-object p0

    .line 228
    sget-object p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->KEYGUARD_SMART_HOME:Landroid/net/Uri;

    .line 229
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 231
    move-result v0

    .line 234
    if-nez p1, :cond_5

    .line 235
    const/4 p1, 0x0

    .line 237
    goto :goto_0

    .line 238
    :cond_5
    const/4 v1, -0x2

    .line 239
    if-eq v0, v1, :cond_6

    .line 240
    const-string v1, "content"

    .line 242
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 244
    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    move-result v1

    .line 251
    if-eqz v1, :cond_6

    .line 252
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    move-result v1

    .line 261
    xor-int/2addr v1, v3

    .line 262
    if-nez v1, :cond_6

    .line 263
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 265
    move-result-object v1

    .line 268
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, "@"

    .line 281
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object p1

    .line 292
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 293
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 296
    move-result-object p1

    .line 299
    :cond_6
    :goto_0
    const-string v0, "online_devices_count"

    .line 300
    invoke-static {p0, p1, v0}, Lcom/miui/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    .line 302
    move-result-object p0

    .line 305
    if-nez p0, :cond_7

    .line 306
    goto :goto_1

    .line 308
    :cond_7
    const-string p1, "count"

    .line 309
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object p0

    .line 314
    move-object p3, p0

    .line 315
    :goto_1
    move v2, v3

    .line 316
    :cond_8
    const-string/jumbo p0, "smart_home_status"

    .line 317
    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    if-eqz v2, :cond_e

    .line 323
    const-string/jumbo p0, "smart_home_online_devices_count"

    .line 325
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    goto/16 :goto_3

    .line 331
    :cond_9
    const-string v1, "OPEN_SMART_HOME"

    .line 333
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    move-result v1

    .line 338
    if-eqz v1, :cond_b

    .line 339
    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 341
    move-result-object p1

    .line 344
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 345
    move-result p3

    .line 348
    invoke-static {p1, v4, p3}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 349
    move-result p1

    .line 352
    if-eqz p1, :cond_a

    .line 353
    invoke-static {}, Lcom/miui/utils/IntentUtils;->getSmartHomeMainIntent()Landroid/content/Intent;

    .line 355
    move-result-object p1

    .line 358
    goto :goto_2

    .line 359
    :cond_a
    invoke-static {v4}, Lcom/miui/utils/IntentUtils;->getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    move-result-object p1

    .line 363
    :goto_2
    const-class p3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 364
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 366
    move-result-object p3

    .line 369
    check-cast p3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 370
    if-eqz p3, :cond_e

    .line 372
    iget-object p0, p0, Lcom/android/keyguard/WallpaperProvider;->mHandler:Landroid/os/Handler;

    .line 374
    new-instance p3, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticLambda1;

    .line 376
    invoke-direct {p3, p1}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;)V

    .line 378
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    goto/16 :goto_3

    .line 384
    :catch_3
    move-exception p0

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    .line 387
    const-string p3, "call METHOD_OPEN_SMART_HOME"

    .line 389
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 394
    goto/16 :goto_3

    .line 397
    :cond_b
    const-string p0, "SET_SUPPORT_LOCK_SCREEN_LEFT_OVERLAY"

    .line 399
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    move-result p0

    .line 404
    const-class v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 405
    if-eqz p0, :cond_c

    .line 407
    :try_start_4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 409
    move-result-object p0

    .line 412
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 413
    const-string/jumbo p1, "support_overlay"

    .line 415
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 418
    move-result p1

    .line 421
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeftOverlay:Z

    .line 422
    const-string/jumbo p0, "result_boolean"

    .line 424
    invoke-virtual {p2, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 427
    goto :goto_3

    .line 430
    :catch_4
    move-exception p0

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    .line 432
    const-string p3, "call METHOD_SET_SUPPORT_LOCK_SCREEN_LEFT_OVERLAY"

    .line 434
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 439
    goto :goto_3

    .line 442
    :cond_c
    const-string p0, "getGxzwAnimStyle"

    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    move-result p0

    .line 448
    if-eqz p0, :cond_d

    .line 449
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 451
    move-result-object p0

    .line 454
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->getGxzwAnimBitmap()Landroid/util/Pair;

    .line 455
    move-result-object p0

    .line 458
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 459
    check-cast p0, Ljava/lang/Integer;

    .line 461
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 463
    move-result p0

    .line 466
    const-string p1, "fingerStyle"

    .line 467
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 472
    move-result-object p0

    .line 475
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->getGxzwAnimBitmap()Landroid/util/Pair;

    .line 476
    move-result-object p0

    .line 479
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 480
    check-cast p0, Landroid/os/Parcelable;

    .line 482
    const-string/jumbo p1, "thumbnail"

    .line 484
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 487
    goto :goto_3

    .line 490
    :cond_d
    const-string p0, "UPDATE_MAGAZINE_INFO"

    .line 491
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    move-result p0

    .line 496
    if-eqz p0, :cond_e

    .line 497
    :try_start_5
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 499
    move-result-object p0

    .line 502
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 503
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 505
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 510
    goto :goto_3

    .line 513
    :catch_5
    move-exception p0

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    .line 515
    const-string p3, "call UPDATE_MAGAZINE_INFO"

    .line 517
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 522
    :cond_e
    :goto_3
    return-object p2
    .line 525
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
