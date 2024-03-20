.class public final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "Received "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    const-string v3, "PowerUI.Notification"

    .line 22
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v2, "PNW.batterySaverSettings"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 35
    sget-object v2, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_SETTINGS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 37
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 39
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 44
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 47
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 49
    iget-object v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 51
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 53
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 55
    move-result-object v2

    .line 58
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySaverSettings:Landroid/content/Intent;

    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 61
    goto/16 :goto_5

    .line 64
    :cond_0
    const-string v2, "PNW.startSaver"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 71
    const/4 v3, 0x1

    .line 72
    if-eqz v2, :cond_1

    .line 73
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 75
    sget-object v2, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_TURN_ON:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 77
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 79
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 82
    iget-object v1, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 84
    const/4 v2, 0x5

    .line 86
    invoke-static {v2, v1, v3, v3}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(ILandroid/content/Context;ZZ)V

    .line 87
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 90
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 92
    goto/16 :goto_5

    .line 95
    :cond_1
    const-string v2, "PNW.startSaverConfirmation"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v2

    .line 102
    const/4 v6, 0x0

    .line 103
    if-eqz v2, :cond_9

    .line 104
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 106
    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 108
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 113
    move-result-object v1

    .line 116
    iget-object v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 117
    if-nez v2, :cond_16

    .line 119
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUseExtraSaverConfirmation:Z

    .line 121
    if-eqz v2, :cond_2

    .line 123
    goto/16 :goto_5

    .line 125
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 127
    iget-object v7, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 129
    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v8, "extra_confirm_only"

    .line 134
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 136
    move-result v8

    .line 139
    const-string v9, "extra_power_save_mode_trigger"

    .line 140
    invoke-virtual {v1, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 142
    move-result v9

    .line 145
    const-string v10, "extra_power_save_mode_trigger_level"

    .line 146
    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 148
    move-result v1

    .line 151
    const v10, 0x7f13051f    # @string/help_uri_battery_saver_learn_more_link_target ''

    .line 152
    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 155
    move-result-object v10

    .line 158
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 159
    move-result-object v10

    .line 162
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    move-result v11

    .line 166
    if-eqz v11, :cond_3

    .line 167
    const v10, 0x7f130173    # @string/battery_low_intro 'Battery Saver turns on Dark theme, restricts background activity, and delays notifications.'

    .line 169
    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 172
    move-result-object v7

    .line 175
    goto :goto_2

    .line 176
    :cond_3
    const v11, 0x10401ce    # @android:string/common_name_conjunctions

    .line 177
    invoke-virtual {v7, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 180
    move-result-object v7

    .line 183
    new-instance v11, Landroid/text/SpannableString;

    .line 184
    invoke-direct {v11, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 189
    invoke-direct {v7, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    .line 194
    move-result v12

    .line 197
    const-class v13, Landroid/text/Annotation;

    .line 198
    invoke-virtual {v11, v6, v12, v13}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 200
    move-result-object v12

    .line 203
    check-cast v12, [Landroid/text/Annotation;

    .line 204
    array-length v13, v12

    .line 206
    move v14, v6

    .line 207
    :goto_0
    if-ge v14, v13, :cond_5

    .line 208
    aget-object v15, v12, v14

    .line 210
    invoke-virtual {v15}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 212
    move-result-object v5

    .line 215
    const-string/jumbo v3, "url"

    .line 216
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v3

    .line 222
    if-nez v3, :cond_4

    .line 223
    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {v11, v15}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    .line 226
    move-result v3

    .line 229
    invoke-virtual {v11, v15}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    .line 230
    move-result v5

    .line 233
    new-instance v15, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    .line 234
    invoke-direct {v15, v0, v10}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v11, v15}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    .line 239
    move-result v4

    .line 242
    invoke-virtual {v7, v15, v3, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 243
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 246
    const/4 v3, 0x1

    .line 248
    goto :goto_0

    .line 249
    :cond_5
    :goto_2
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 253
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 257
    move-result-object v3

    .line 260
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 261
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    move-result v3

    .line 270
    if-eqz v3, :cond_6

    .line 271
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setMessageHyphenationFrequency(I)V

    .line 273
    :cond_6
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 276
    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessageMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 280
    const/4 v3, 0x2

    .line 283
    if-eqz v8, :cond_7

    .line 284
    const v4, 0x7f130181    # @string/battery_saver_confirmation_title_generic 'About Battery Saver'

    .line 286
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 289
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda4;

    .line 292
    invoke-direct {v4, v0, v9, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;II)V

    .line 294
    const v1, 0x104030e    # @android:string/dismiss_action

    .line 297
    invoke-virtual {v2, v1, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 300
    goto :goto_3

    .line 303
    :cond_7
    const v1, 0x7f130180    # @string/battery_saver_confirmation_title 'Turn on Battery Saver?'

    .line 304
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 307
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;

    .line 310
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 312
    const v4, 0x7f13017f    # @string/battery_saver_confirmation_ok 'Turn on'

    .line 315
    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 318
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;

    .line 321
    const/4 v4, 0x3

    .line 323
    invoke-direct {v1, v0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 324
    const/4 v4, -0x2

    .line 327
    const/high16 v5, 0x1040000    # @android:string/cancel

    .line 328
    const/4 v6, 0x1

    .line 330
    invoke-virtual {v2, v4, v5, v1, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 331
    :goto_3
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 334
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;

    .line 337
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 339
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 342
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryControllerLazy:Ldagger/Lazy;

    .line 345
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 350
    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 351
    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 353
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSaverStartView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 355
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 357
    move-result-object v3

    .line 360
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 361
    if-eqz v3, :cond_8

    .line 363
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 365
    move-result-object v4

    .line 368
    if-eqz v4, :cond_8

    .line 369
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 371
    move-result-object v4

    .line 374
    check-cast v4, Landroid/view/View;

    .line 375
    invoke-virtual {v4}, Landroid/view/View;->isAggregatedVisible()Z

    .line 377
    move-result v4

    .line 380
    if-eqz v4, :cond_8

    .line 381
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 383
    move-result-object v3

    .line 386
    move-object v9, v3

    .line 387
    check-cast v9, Landroid/view/View;

    .line 388
    new-instance v10, Lcom/android/systemui/animation/DialogCuj;

    .line 390
    const/16 v3, 0x3a

    .line 392
    const-string/jumbo v4, "start_power_saver"

    .line 394
    invoke-direct {v10, v3, v4}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 397
    iget-object v7, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 400
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    const/4 v11, 0x0

    .line 405
    const/16 v12, 0x8

    .line 406
    move-object v8, v2

    .line 408
    invoke-static/range {v7 .. v12}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;ZI)V

    .line 409
    goto :goto_4

    .line 412
    :cond_8
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 413
    :goto_4
    sget-object v3, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_DIALOG:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 416
    invoke-virtual {v0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 418
    iput-object v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 421
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 423
    move-result-object v0

    .line 426
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 427
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 429
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSaverStartView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 431
    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 434
    goto/16 :goto_5

    .line 437
    :cond_9
    const-string v2, "PNW.dismissedWarning"

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    move-result v2

    .line 444
    if-eqz v2, :cond_a

    .line 445
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 447
    sget-object v2, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 449
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 451
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 454
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 456
    goto/16 :goto_5

    .line 459
    :cond_a
    const-string v2, "PNW.clickedTempWarning"

    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    move-result v2

    .line 466
    const v3, 0x104000a    # @android:string/ok

    .line 467
    const v4, 0x1010355    # @android:attr/alertDialogIcon

    .line 470
    if-eqz v2, :cond_d

    .line 473
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 475
    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    .line 477
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 480
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 482
    if-eqz v1, :cond_b

    .line 484
    goto/16 :goto_5

    .line 486
    :cond_b
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 488
    iget-object v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 490
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 492
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 495
    const v4, 0x7f130529    # @string/high_temp_title 'Phone is getting warm'

    .line 498
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 501
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 504
    const v5, 0x7f130527    # @string/high_temp_dialog_message 'Your phone will automatically try to cool down. You can still use your phone, but it may run slower. ...'

    .line 506
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 509
    move-result-object v4

    .line 512
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 513
    const/4 v4, 0x0

    .line 516
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 517
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 520
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;

    .line 523
    const/4 v4, 0x3

    .line 525
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 526
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 529
    const v3, 0x7f130526    # @string/high_temp_dialog_help_url ''

    .line 532
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 535
    move-result-object v2

    .line 538
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 539
    move-result v3

    .line 542
    if-nez v3, :cond_c

    .line 543
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .line 545
    invoke-direct {v3, v0, v2, v6}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Ljava/lang/String;I)V

    .line 547
    const v2, 0x7f130525    # @string/high_temp_dialog_help_text 'See care steps'

    .line 550
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 553
    :cond_c
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 556
    iput-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 559
    goto/16 :goto_5

    .line 561
    :cond_d
    const-string v2, "PNW.dismissedTempWarning"

    .line 563
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    move-result v2

    .line 568
    if-eqz v2, :cond_e

    .line 569
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 571
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    .line 573
    goto/16 :goto_5

    .line 576
    :cond_e
    const-string v2, "PNW.clickedThermalShutdownWarning"

    .line 578
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    move-result v2

    .line 583
    if-eqz v2, :cond_11

    .line 584
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 586
    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissThermalShutdownWarning()V

    .line 588
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 591
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 593
    if-eqz v1, :cond_f

    .line 595
    goto/16 :goto_5

    .line 597
    :cond_f
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 599
    iget-object v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 601
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 603
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 606
    const v4, 0x7f130b99    # @string/thermal_shutdown_title 'Phone turned off due to heat'

    .line 609
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 612
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 615
    const v5, 0x7f130b97    # @string/thermal_shutdown_dialog_message 'Your phone was too hot, so it turned off to cool down. Your phone is now running normally.\n\nYour pho ...'

    .line 617
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 620
    move-result-object v4

    .line 623
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 624
    const/4 v4, 0x0

    .line 627
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 628
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 631
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;

    .line 634
    const/4 v4, 0x1

    .line 636
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 637
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 640
    const v3, 0x7f130b96    # @string/thermal_shutdown_dialog_help_url ''

    .line 643
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 646
    move-result-object v2

    .line 649
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 650
    move-result v3

    .line 653
    if-nez v3, :cond_10

    .line 654
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .line 656
    invoke-direct {v3, v0, v2, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Ljava/lang/String;I)V

    .line 658
    const v2, 0x7f130b95    # @string/thermal_shutdown_dialog_help_text 'See care steps'

    .line 661
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 664
    :cond_10
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 667
    iput-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 670
    goto/16 :goto_5

    .line 672
    :cond_11
    const-string v2, "PNW.dismissedThermalShutdownWarning"

    .line 674
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    move-result v2

    .line 679
    if-eqz v2, :cond_12

    .line 680
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 682
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissThermalShutdownWarning()V

    .line 684
    goto :goto_5

    .line 687
    :cond_12
    const-string v2, "PNW.autoSaverSuggestion"

    .line 688
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    move-result v2

    .line 693
    if-eqz v2, :cond_13

    .line 694
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 696
    const/4 v1, 0x1

    .line 698
    iput-boolean v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 699
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 701
    goto :goto_5

    .line 704
    :cond_13
    const-string v2, "PNW.dismissAutoSaverSuggestion"

    .line 705
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    move-result v2

    .line 710
    if-eqz v2, :cond_14

    .line 711
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 713
    iput-boolean v6, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 715
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 717
    goto :goto_5

    .line 720
    :cond_14
    const-string v2, "PNW.enableAutoSaver"

    .line 721
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    move-result v2

    .line 726
    if-eqz v2, :cond_15

    .line 727
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 729
    iput-boolean v6, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 731
    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 733
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 736
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    new-instance v1, Landroid/content/Intent;

    .line 741
    const-string v2, "com.android.settings.BATTERY_SAVER_SCHEDULE_SETTINGS"

    .line 743
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    const v2, 0x10008000

    .line 748
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 751
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 754
    const/4 v2, 0x1

    .line 756
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 757
    goto :goto_5

    .line 760
    :cond_15
    const-string v2, "PNW.autoSaverNoThanks"

    .line 761
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    move-result v1

    .line 766
    if-eqz v1, :cond_16

    .line 767
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 769
    iput-boolean v6, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 771
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 773
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 776
    move-result-object v0

    .line 779
    const-string/jumbo v1, "suppress_auto_battery_saver_suggestion"

    .line 780
    const/4 v2, 0x1

    .line 783
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    :cond_16
    :goto_5
    return-void
    .line 787
.end method
