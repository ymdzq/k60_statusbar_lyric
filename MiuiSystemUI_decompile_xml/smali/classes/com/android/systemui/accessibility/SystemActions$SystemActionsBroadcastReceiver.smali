.class public final Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/SystemActions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result p2

    .line 12
    const/4 v0, 0x7

    .line 13
    const/4 v1, 0x3

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, -0x1

    .line 19
    sparse-switch p2, :sswitch_data_0

    .line 20
    goto/16 :goto_0

    .line 23
    :sswitch_0
    const-string p2, "SYSTEM_ACTION_DPAD_LEFT"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    goto/16 :goto_0

    .line 33
    :cond_0
    const/16 v6, 0x11

    .line 35
    goto/16 :goto_0

    .line 37
    :sswitch_1
    const-string p2, "SYSTEM_ACTION_DPAD_DOWN"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    goto/16 :goto_0

    .line 47
    :cond_1
    const/16 v6, 0x10

    .line 49
    goto/16 :goto_0

    .line 51
    :sswitch_2
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    goto/16 :goto_0

    .line 61
    :cond_2
    const/16 v6, 0xf

    .line 63
    goto/16 :goto_0

    .line 65
    :sswitch_3
    const-string p2, "SYSTEM_ACTION_DPAD_RIGHT"

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    goto/16 :goto_0

    .line 75
    :cond_3
    const/16 v6, 0xe

    .line 77
    goto/16 :goto_0

    .line 79
    :sswitch_4
    const-string p2, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 86
    if-nez p1, :cond_4

    .line 87
    goto/16 :goto_0

    .line 89
    :cond_4
    const/16 v6, 0xd

    .line 91
    goto/16 :goto_0

    .line 93
    :sswitch_5
    const-string p2, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p1

    .line 100
    if-nez p1, :cond_5

    .line 101
    goto/16 :goto_0

    .line 103
    :cond_5
    const/16 v6, 0xc

    .line 105
    goto/16 :goto_0

    .line 107
    :sswitch_6
    const-string p2, "SYSTEM_ACTION_HEADSET_HOOK"

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p1

    .line 114
    if-nez p1, :cond_6

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_6
    const/16 v6, 0xb

    .line 119
    goto/16 :goto_0

    .line 121
    :sswitch_7
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 128
    if-nez p1, :cond_7

    .line 129
    goto/16 :goto_0

    .line 131
    :cond_7
    const/16 v6, 0xa

    .line 133
    goto/16 :goto_0

    .line 135
    :sswitch_8
    const-string p2, "SYSTEM_ACTION_DPAD_UP"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p1

    .line 142
    if-nez p1, :cond_8

    .line 143
    goto/16 :goto_0

    .line 145
    :cond_8
    const/16 v6, 0x9

    .line 147
    goto/16 :goto_0

    .line 149
    :sswitch_9
    const-string p2, "SYSTEM_ACTION_DPAD_CENTER"

    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p1

    .line 156
    if-nez p1, :cond_9

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_9
    const/16 v6, 0x8

    .line 161
    goto/16 :goto_0

    .line 163
    :sswitch_a
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result p1

    .line 170
    if-nez p1, :cond_a

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_a
    move v6, v0

    .line 175
    goto :goto_0

    .line 176
    :sswitch_b
    const-string p2, "SYSTEM_ACTION_RECENTS"

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result p1

    .line 182
    if-nez p1, :cond_b

    .line 183
    goto :goto_0

    .line 185
    :cond_b
    const/4 v6, 0x6

    .line 186
    goto :goto_0

    .line 187
    :sswitch_c
    const-string p2, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result p1

    .line 193
    if-nez p1, :cond_c

    .line 194
    goto :goto_0

    .line 196
    :cond_c
    const/4 v6, 0x5

    .line 197
    goto :goto_0

    .line 198
    :sswitch_d
    const-string p2, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result p1

    .line 204
    if-nez p1, :cond_d

    .line 205
    goto :goto_0

    .line 207
    :cond_d
    move v6, v4

    .line 208
    goto :goto_0

    .line 209
    :sswitch_e
    const-string p2, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result p1

    .line 215
    if-nez p1, :cond_e

    .line 216
    goto :goto_0

    .line 218
    :cond_e
    move v6, v1

    .line 219
    goto :goto_0

    .line 220
    :sswitch_f
    const-string p2, "SYSTEM_ACTION_POWER_DIALOG"

    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result p1

    .line 226
    if-nez p1, :cond_f

    .line 227
    goto :goto_0

    .line 229
    :cond_f
    move v6, v2

    .line 230
    goto :goto_0

    .line 231
    :sswitch_10
    const-string p2, "SYSTEM_ACTION_HOME"

    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result p1

    .line 237
    if-nez p1, :cond_10

    .line 238
    goto :goto_0

    .line 240
    :cond_10
    move v6, v3

    .line 241
    goto :goto_0

    .line 242
    :sswitch_11
    const-string p2, "SYSTEM_ACTION_BACK"

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result p1

    .line 248
    if-nez p1, :cond_11

    .line 249
    goto :goto_0

    .line 251
    :cond_11
    move v6, v5

    .line 252
    :goto_0
    const/4 p1, 0x0

    .line 253
    const-string p2, "SystemActions"

    .line 254
    packed-switch v6, :pswitch_data_0

    .line 256
    goto/16 :goto_1

    .line 259
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 261
    const/16 p1, 0x15

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 265
    goto/16 :goto_1

    .line 268
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 270
    const/16 p1, 0x14

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 274
    goto/16 :goto_1

    .line 277
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 279
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 281
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 283
    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 285
    goto/16 :goto_1

    .line 288
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 290
    const/16 p1, 0x16

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 294
    goto/16 :goto_1

    .line 297
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 299
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 301
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 303
    move-result-object p0

    .line 306
    check-cast p0, Ljava/util/Optional;

    .line 307
    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;

    .line 309
    invoke-direct {p1, v5}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;-><init>(I)V

    .line 311
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 314
    goto/16 :goto_1

    .line 317
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    .line 324
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 326
    invoke-direct {p2, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 328
    new-instance p0, Landroid/os/Handler;

    .line 331
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 333
    move-result-object v0

    .line 336
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 337
    invoke-virtual {p2, v4, p0, p1}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 340
    goto/16 :goto_1

    .line 343
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleHeadsetHook()V

    .line 347
    goto/16 :goto_1

    .line 350
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 352
    iget-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 354
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 356
    move-result-object p1

    .line 359
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    .line 365
    goto/16 :goto_1

    .line 368
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 370
    const/16 p1, 0x13

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 374
    goto/16 :goto_1

    .line 377
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 379
    const/16 p1, 0x17

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 383
    goto/16 :goto_1

    .line 386
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    new-instance p1, Landroid/content/Intent;

    .line 393
    const-string p2, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    .line 395
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    const p2, 0x10008000

    .line 400
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    const-class p2, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    .line 406
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 408
    move-result-object p2

    .line 411
    const-string v0, "android"

    .line 412
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 417
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 419
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 421
    move-result-object p2

    .line 424
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 427
    goto/16 :goto_1

    .line 430
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;

    .line 437
    invoke-direct {p1, v2}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;-><init>(I)V

    .line 439
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mRecentsOptional:Ljava/util/Optional;

    .line 442
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 444
    goto :goto_1

    .line 447
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 453
    move-result-object v1

    .line 456
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 457
    const-class v2, Landroid/os/PowerManager;

    .line 459
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 461
    move-result-object p0

    .line 464
    check-cast p0, Landroid/os/PowerManager;

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 467
    move-result-wide v2

    .line 470
    invoke-virtual {p0, v2, v3, v0, v5}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 471
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_1

    .line 477
    :catch_0
    const-string p0, "failed to lock screen."

    .line 478
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    goto :goto_1

    .line 483
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 484
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 486
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    .line 488
    goto :goto_1

    .line 491
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 492
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 494
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 496
    move-result-object p0

    .line 499
    check-cast p0, Ljava/util/Optional;

    .line 500
    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;

    .line 502
    invoke-direct {p1, v3}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;-><init>(I)V

    .line 504
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 507
    goto :goto_1

    .line 510
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 516
    move-result-object p0

    .line 519
    :try_start_1
    invoke-interface {p0}, Landroid/view/IWindowManager;->showGlobalActions()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    goto :goto_1

    .line 523
    :catch_1
    const-string p0, "failed to display power dialog."

    .line 524
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    goto :goto_1

    .line 529
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 530
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 532
    goto :goto_1

    .line 535
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    .line 536
    invoke-virtual {p0, v4}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 538
    :goto_1
    return-void

    .line 541
    :sswitch_data_0
    .sparse-switch
        -0x41cad4c0 -> :sswitch_11
        -0x41c7e4c8 -> :sswitch_10
        -0x2af1b8c5 -> :sswitch_f
        -0x1fe56d71 -> :sswitch_e
        -0xacfbdb0 -> :sswitch_d
        -0x9247679 -> :sswitch_c
        0x289985f -> :sswitch_b
        0x1f693002 -> :sswitch_a
        0x291b586c -> :sswitch_9
        0x309b4632 -> :sswitch_8
        0x4a438bbc -> :sswitch_7
        0x5903ea39 -> :sswitch_6
        0x5e2ce025 -> :sswitch_5
        0x6379b96e -> :sswitch_4
        0x65415305 -> :sswitch_3
        0x70f16138 -> :sswitch_2
        0x76dace79 -> :sswitch_1
        0x76de49de -> :sswitch_0
    .end sparse-switch

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 616
.end method
