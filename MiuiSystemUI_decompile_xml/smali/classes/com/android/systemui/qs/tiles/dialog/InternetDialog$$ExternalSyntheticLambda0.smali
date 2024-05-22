.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const-string v1, "InternetDialogController"

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_3

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    .line 19
    move-result v0

    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    const-string p0, "launchMobileNetworkSettings fail, invalid subId:"

    .line 25
    invoke-static {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 31
    const-string v2, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 33
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 38
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v3, ":settings:fragment_args_key"

    .line 43
    const-string v4, "auto_data_switch"

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "android.provider.extra.SUB_ID"

    .line 50
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v0, ":settings:show_fragment_args"

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->startActivity(Landroid/content/Intent;Landroid/view/View;)V

    .line 60
    :goto_0
    return-void

    .line 63
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 64
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 70
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 72
    return-void

    .line 75
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 76
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 78
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 80
    return-void

    .line 83
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 84
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getSettingsIntent()Landroid/content/Intent;

    .line 90
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->startActivity(Landroid/content/Intent;Landroid/view/View;)V

    .line 94
    return-void

    .line 97
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 98
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 102
    if-nez v0, :cond_1

    .line 104
    goto :goto_1

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 107
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->launchWifiDetailsSetting(Landroid/view/View;Ljava/lang/String;)V

    .line 113
    :goto_1
    return-void

    .line 116
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 117
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    .line 123
    move-result p1

    .line 126
    const/4 v0, 0x0

    .line 127
    if-eq p1, v3, :cond_3

    .line 128
    iget v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 130
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    .line 132
    move-result-object v3

    .line 135
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result v4

    .line 139
    if-eqz v4, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 142
    const v4, 0x7f1307b5    # @string/mobile_data_disable_message_default_carrier 'your carrier'

    .line 144
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 150
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 151
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 153
    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 158
    const v6, 0x7f130159    # @string/auto_data_switch_disable_title 'Switch back to %s?'

    .line 160
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 163
    move-result-object v3

    .line 166
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 170
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    move-result-object v3

    .line 174
    const v4, 0x7f130158    # @string/auto_data_switch_disable_message 'Mobile data won’t automatically switch based on availability'

    .line 175
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 178
    move-result-object v3

    .line 181
    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda7;

    .line 182
    invoke-direct {v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda7;-><init>()V

    .line 184
    const v5, 0x7f130156    # @string/auto_data_switch_dialog_negative_button 'No thanks'

    .line 187
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    move-result-object v3

    .line 193
    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda8;

    .line 194
    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 196
    const p1, 0x7f130157    # @string/auto_data_switch_dialog_positive_button 'Yes, switch'

    .line 199
    invoke-virtual {v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 206
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 212
    move-result-object p1

    .line 215
    const/16 v3, 0x7d9

    .line 216
    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 221
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 226
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 231
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 233
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 235
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 237
    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 242
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 244
    invoke-virtual {p1, v3, p0, v0, v2}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 246
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 251
    move-result p1

    .line 254
    sget-boolean v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 255
    if-nez p1, :cond_4

    .line 257
    if-eqz v3, :cond_9

    .line 259
    const-string p0, "Fail to connect carrier network : settings OFF"

    .line 261
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    goto :goto_2

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 267
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 269
    move-result p1

    .line 272
    xor-int/lit8 p1, p1, 0x1

    .line 273
    if-eqz p1, :cond_5

    .line 275
    if-eqz v3, :cond_9

    .line 277
    const-string p0, "Fail to connect carrier network : device locked"

    .line 279
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    goto :goto_2

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    .line 285
    move-result p1

    .line 288
    if-eqz p1, :cond_6

    .line 289
    const-string p0, "Fail to connect carrier network : already active"

    .line 291
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    goto :goto_2

    .line 296
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 297
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 299
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 301
    move-result-object p1

    .line 304
    if-nez p1, :cond_7

    .line 305
    const-string p0, "Fail to connect carrier network : no merged entry"

    .line 307
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    goto :goto_2

    .line 312
    :cond_7
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->canConnect()Z

    .line 313
    move-result v3

    .line 316
    if-nez v3, :cond_8

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "Fail to connect carrier network : merged entry connect state "

    .line 321
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 326
    move-result p1

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object p0

    .line 336
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    goto :goto_2

    .line 340
    :cond_8
    invoke-virtual {p1, v0, v2}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;Z)V

    .line 341
    const p1, 0x7f130cc3    # @string/wifi_wont_autoconnect_for_now 'Wi‑Fi won’t auto-connect for now'

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->makeOverlayToast(I)V

    .line 347
    :cond_9
    :goto_2
    return-void

    .line 350
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 351
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    new-instance v0, Landroid/content/Intent;

    .line 358
    const-string v1, "android.settings.WIFI_SCANNING_SETTINGS"

    .line 360
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    const/high16 v1, 0x10000000

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->startActivity(Landroid/content/Intent;Landroid/view/View;)V

    .line 370
    return-void

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 374
.end method
