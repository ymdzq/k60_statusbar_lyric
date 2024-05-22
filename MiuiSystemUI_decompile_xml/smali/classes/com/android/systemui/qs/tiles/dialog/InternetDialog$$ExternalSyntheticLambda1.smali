.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 9
    const-string p1, "QsHasTurnedOffMobileData"

    .line 11
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {v2, p1, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 19
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    if-nez v2, :cond_0

    .line 31
    move v2, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    :goto_0
    if-eqz v2, :cond_3

    .line 36
    iget p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    .line 40
    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 44
    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 46
    invoke-virtual {p2, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService(I)Z

    .line 48
    move-result p2

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    if-nez p2, :cond_2

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 60
    const p2, 0x7f1307b5    # @string/mobile_data_disable_message_default_carrier 'your carrier'

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    :cond_2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 69
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p2, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    const v2, 0x7f1307b6    # @string/mobile_data_disable_title 'Turn off mobile data?'

    .line 76
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 79
    move-result-object p2

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 83
    const v3, 0x7f1307b4    # @string/mobile_data_disable_message 'You won’t have access to data or the internet through %s. Internet will only be available via WLAN.'

    .line 85
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 95
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    move-result-object p1

    .line 99
    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda4;

    .line 100
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 102
    const/high16 v2, 0x1040000    # @android:string/cancel

    .line 105
    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    move-result-object p1

    .line 110
    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda4;

    .line 111
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 113
    const v0, 0x104013c    # @android:string/anr_application_process

    .line 116
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 123
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 127
    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda5;

    .line 129
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    .line 131
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 137
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 139
    move-result-object p1

    .line 142
    const/16 p2, 0x7d9

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 148
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 150
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 153
    const/4 p2, 0x0

    .line 155
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 161
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 163
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 165
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 172
    invoke-virtual {p1, v0, p0, p2, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 174
    goto :goto_2

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {v2, p1, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 180
    move-result p1

    .line 183
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 184
    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 186
    move-result v2

    .line 189
    if-eqz v2, :cond_4

    .line 190
    if-nez p1, :cond_4

    .line 192
    goto :goto_1

    .line 194
    :cond_4
    move v0, v1

    .line 195
    :goto_1
    if-nez v0, :cond_6

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 198
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 200
    move-result p1

    .line 203
    if-ne p1, p2, :cond_5

    .line 204
    goto :goto_2

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 209
    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 211
    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->setMobileDataEnabled(ILandroid/content/Context;Z)V

    .line 213
    :cond_6
    :goto_2
    return-void

    .line 216
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 217
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 219
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    .line 221
    move-result p1

    .line 224
    if-ne p1, p2, :cond_7

    .line 225
    goto :goto_4

    .line 227
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiStateWorker:Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;

    .line 230
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 232
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda1;

    .line 234
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;Z)V

    .line 236
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 239
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 241
    :goto_4
    return-void

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 246
.end method
