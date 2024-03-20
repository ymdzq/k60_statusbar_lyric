.class public Lcom/android/settings/wifi/WifiDialog2;
.super Lmiuix/appcompat/app/AlertDialog;
.source "WifiDialog2.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase2;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/settings/wifi/WifiConfigController2;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

.field private final mMode:I

.field private mOcrWifiPwd:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public static synthetic $r8$lambda$mO6DI0VaWMFnQ98JzCRwKykSJy8(Lcom/android/settings/wifi/WifiDialog2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDialog2;->lambda$onStart$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/settings/wifi/WifiDialog2;)Lcom/android/settings/wifi/WifiConfigController2;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/WifiDialog2;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowPassword(Lcom/android/settings/wifi/WifiDialog2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDialog2;->showPassword(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZ)V
    .locals 0

    .line 128
    sget p5, Lcom/android/settings/R$style;->Theme_WifiDialog:I

    invoke-direct {p0, p1, p5}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 129
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog2;->mMode:I

    .line 130
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog2;->mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    .line 131
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 132
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog2;->mHideSubmitButton:Z

    return-void
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;
    .locals 8

    .line 97
    new-instance v7, Lcom/android/settings/wifi/WifiDialog2;

    const/4 v5, 0x0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZ)V

    return-object v7
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;II)Lcom/android/settings/wifi/WifiDialog2;
    .locals 8

    .line 107
    new-instance v7, Lcom/android/settings/wifi/WifiDialog2;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZ)V

    return-object v7
.end method

.method private initNegativeButton()V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog2;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->isCarrierCustomization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    new-instance v1, Lcom/android/settings/wifi/WifiDialog2$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiDialog2$2;-><init>(Lcom/android/settings/wifi/WifiDialog2;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isFindDeviceLocked()Z
    .locals 2

    .line 249
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.xiaomi.system.devicelock.locked"

    const/4 v1, 0x0

    .line 248
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onStart$0(Landroid/view/View;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    sget p1, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 238
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V

    return-void
.end method

.method private showPassword(Z)V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->password:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 354
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-eqz p1, :cond_0

    const/16 p1, 0x90

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    :goto_0
    or-int/lit8 p1, p1, 0x1

    .line 355
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 359
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    if-ltz v0, :cond_1

    .line 361
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    .line 304
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController2;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    return-object p0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    .line 299
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 289
    iget p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mMode:I

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 294
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method public initWifiShare()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->show_password_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 335
    sget v1, Lcom/android/settings/R$drawable;->wifi_not_show_password:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    .line 336
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiDialog2;->showPassword(Z)V

    .line 337
    new-instance v2, Lcom/android/settings/wifi/WifiDialog2$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiDialog2$1;-><init>(Lcom/android/settings/wifi/WifiDialog2;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    if-eqz p1, :cond_3

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 276
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 275
    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 277
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 281
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onForget(Lcom/android/settings/wifi/WifiDialog2;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->wifi_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setEnableImmersive(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 170
    new-instance v1, Lcom/android/settings/wifi/WifiConfigController2;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 171
    iget v5, p0, Lcom/android/settings/wifi/WifiDialog2;->mMode:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    move v5, v6

    :cond_1
    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/settings/wifi/WifiConfigController2;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    .line 172
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog2;->isFindDeviceLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 179
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mHideSubmitButton:Z

    if-eqz p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->hideSubmitButton()V

    goto :goto_0

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    .line 188
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mOcrWifiPwd:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 189
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog2;->mOcrWifiPwd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/WifiConfigController2;->displayOcrPwd(Ljava/lang/String;)V

    .line 190
    iput-object v2, p0, Lcom/android/settings/wifi/WifiDialog2;->mOcrWifiPwd:Ljava/lang/String;

    .line 194
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog2;->initNegativeButton()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog2;->initWifiShare()V

    .line 199
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p1, :cond_5

    .line 200
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->hideForgetButton()V

    .line 203
    :cond_5
    iget p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mMode:I

    if-ne p1, v7, :cond_6

    .line 204
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_info_reconnect:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->info_reconnect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_info_reconnect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0, v6}, Lmiuix/appcompat/app/AlertDialog;->setHapticFeedbackEnabled(Z)V

    .line 209
    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 p0, p0, 0x5

    .line 209
    invoke-virtual {p1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog2;->mController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->updatePassword()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 226
    sget v0, Lcom/android/settings/R$id;->ssid_scanner_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 227
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog2;->mHideSubmitButton:Z

    if-eqz v1, :cond_0

    const/16 p0, 0x8

    .line 228
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 232
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiDialog2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiDialog2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiDialog2;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 321
    invoke-virtual {p0, v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    .line 314
    invoke-virtual {p0, v0, p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 309
    invoke-virtual {p0, v0, p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
