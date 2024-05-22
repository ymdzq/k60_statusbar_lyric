.class public final Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result v0

    .line 5
    const-string v1, "StatusBar.startActivity fail "

    .line 6
    const-string v2, "MiuiKeyguardMoveLeftBaseView"

    .line 8
    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    .line 10
    const/4 v4, 0x1

    .line 12
    const v5, 0x7f0a04a0    # @id/keyguard_smarthome_info

    .line 13
    if-ne v0, v5, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 18
    iget-object p1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "com.xiaomi.smarthome"

    .line 22
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 24
    move-result v6

    .line 27
    invoke-static {p1, v0, v6}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/miui/utils/IntentUtils;->getSmartHomeMainIntent()Landroid/content/Intent;

    .line 34
    move-result-object p0

    .line 37
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 42
    invoke-interface {p1, p0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 55
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto/16 :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 71
    invoke-static {p0, v5}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mstartAppStoreToDownload(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;I)V

    .line 73
    goto/16 :goto_0

    .line 76
    :cond_1
    const/high16 v5, 0x10000000

    .line 78
    const v6, 0x7f0a0497    # @id/keyguard_remote_controller_info

    .line 80
    if-ne v0, v6, :cond_3

    .line 83
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 85
    iget-object p1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 89
    move-result v0

    .line 92
    const-string v7, "com.duokan.phone.remotecontroller"

    .line 93
    invoke-static {p1, v7, v0}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 95
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    :try_start_1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    move-result-object p0

    .line 108
    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    move-result-object p0

    .line 112
    invoke-virtual {p0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 119
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 120
    invoke-interface {p1, p0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto/16 :goto_0

    .line 125
    :catch_1
    move-exception p0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 133
    move-result-object p0

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 143
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto/16 :goto_0

    .line 147
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 149
    invoke-static {p0, v6}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mstartAppStoreToDownload(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;I)V

    .line 151
    goto/16 :goto_0

    .line 154
    :cond_3
    const v1, 0x7f0a0490    # @id/keyguard_mi_wallet_info

    .line 156
    if-ne v0, v1, :cond_4

    .line 159
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 161
    sget-object p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->KEYGUARD_SMART_HOME:Landroid/net/Uri;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    .line 168
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 170
    const-string v0, "com.miui.intent.action.DOUBLE_CLICK"

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v0, "event_source"

    .line 178
    const-string/jumbo v1, "shortcut_of_all_cards"

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 189
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 191
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 193
    goto/16 :goto_0

    .line 196
    :cond_4
    const v1, 0x7f0a047c    # @id/keyguard_electric_torch

    .line 198
    if-ne v0, v1, :cond_5

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 203
    iget-object v0, v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 205
    check-cast v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 207
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 209
    move-result v0

    .line 212
    xor-int/2addr v0, v4

    .line 213
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 214
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 216
    check-cast p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->setFlashlight(Z)V

    .line 220
    sget-boolean p0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 223
    if-eqz p0, :cond_d

    .line 225
    const p0, 0x10000002

    .line 227
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 230
    goto/16 :goto_0

    .line 233
    :cond_5
    const p1, 0x7f0a048c    # @id/keyguard_lock_screen_magazine_info

    .line 235
    if-ne v0, p1, :cond_7

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 240
    iget-object v0, v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 242
    sget-object v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 246
    move-result v2

    .line 249
    invoke-static {v0, v1, v2}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 250
    move-result v0

    .line 253
    if-eqz v0, :cond_6

    .line 254
    const-string p1, "miui_keyguard"

    .line 256
    const-string v0, "left view goto lock screen wall paper"

    .line 258
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 263
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 265
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 270
    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 272
    move-result-object p0

    .line 275
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 276
    move-result-object p0

    .line 279
    const-string p1, "prfe_key_preview_button_clicked"

    .line 280
    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    move-result-object p0

    .line 285
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    const-wide/16 p0, 0x1f4

    .line 289
    invoke-static {p0, p1}, Lcom/miui/utils/CommonExtensionsKt;->checkFastDoubleClick(J)Z

    .line 291
    move-result p0

    .line 294
    if-eqz p0, :cond_d

    .line 295
    const-class p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 297
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 299
    move-result-object p0

    .line 302
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 303
    const-string p1, "leftLockScreen"

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startMagazinePreviewActivity(Ljava/lang/String;)V

    .line 307
    goto/16 :goto_0

    .line 310
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 312
    invoke-static {p0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mstartAppStoreToDownload(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;I)V

    .line 314
    goto/16 :goto_0

    .line 317
    :cond_7
    const p1, 0x7f0a047f    # @id/keyguard_google_home

    .line 319
    if-ne v0, p1, :cond_9

    .line 322
    :try_start_3
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 324
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 326
    const-string p1, "com.google.android.apps.chromecast.app"

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 330
    move-result-object p0

    .line 333
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    move-result-object p0

    .line 337
    if-eqz p0, :cond_8

    .line 338
    invoke-virtual {p0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    :cond_8
    if-eqz p0, :cond_d

    .line 343
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    move-result-object p1

    .line 348
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 349
    invoke-interface {p1, p0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 351
    goto/16 :goto_0

    .line 354
    :catch_2
    move-exception p0

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    .line 357
    const-string v0, "GoogleHome startActivity fail "

    .line 359
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 364
    move-result-object p0

    .line 367
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object p0

    .line 374
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    goto :goto_0

    .line 378
    :cond_9
    const p1, 0x7f0a0480    # @id/keyguard_google_wallet

    .line 379
    if-ne v0, p1, :cond_d

    .line 382
    :try_start_4
    const-string p1, "IN"

    .line 384
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    .line 386
    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    move-result p1

    .line 393
    if-eqz p1, :cond_b

    .line 394
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 396
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 398
    const-string p1, "com.google.android.apps.nbu.paisa.user"

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 402
    move-result-object p0

    .line 405
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    move-result-object p0

    .line 409
    if-eqz p0, :cond_a

    .line 410
    invoke-virtual {p0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    :cond_a
    if-eqz p0, :cond_d

    .line 415
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 417
    move-result-object p1

    .line 420
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 421
    invoke-interface {p1, p0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 423
    goto :goto_0

    .line 426
    :cond_b
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 427
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 429
    const-string p1, "com.google.android.apps.walletnfcrel"

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 433
    move-result-object p0

    .line 436
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    move-result-object p0

    .line 440
    if-eqz p0, :cond_c

    .line 441
    invoke-virtual {p0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 443
    :cond_c
    if-eqz p0, :cond_d

    .line 446
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 448
    move-result-object p1

    .line 451
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 452
    invoke-interface {p1, p0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 454
    goto :goto_0

    .line 457
    :catch_3
    move-exception p0

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    .line 459
    const-string v0, "GoogleWallet startActivity fail "

    .line 461
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 466
    move-result-object p0

    .line 469
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    move-result-object p0

    .line 476
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :catch_4
    :cond_d
    :goto_0
    return-void
    .line 480
.end method
