.class public Lcom/android/settings/nfc/NfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcPayment:Lmiuix/preference/DropDownPreference;

.field private final mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

.field private mSeRoute:Landroidx/preference/ListPreference;


# direct methods
.method public static synthetic $r8$lambda$268xTNlrzxMrIxQL9wZLSlCbPWQ(Lcom/android/settings/nfc/NfcEnabler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;->lambda$showDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_kSChlPP5ZqvcROb3CVtupx4RD0(Lcom/android/settings/nfc/NfcEnabler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cusl0vkWCTKkwqhSwN39vO_MyMI(Lcom/android/settings/nfc/NfcEnabler;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->lambda$showDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tjjii4S3bbfe4TsXyG4kDzr3aG8(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->lambda$showDialog$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$v5J8HBhCFNZ3N0b7hpq99DvmQx8(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->lambda$showDialog$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;)V

    .line 218
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mSeRoute:Landroidx/preference/ListPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;Lmiuix/preference/DropDownPreference;Z)V
    .locals 0

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;)V

    .line 226
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Lmiuix/preference/DropDownPreference;

    return-void
.end method

.method private changeNfcStatus(Z)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showDialog$0()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->changeNfcStatus(Z)V

    .line 103
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showDialog$2()V
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$3(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->changeNfcStatus(Z)V

    .line 108
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showDialog$4(Landroid/content/DialogInterface;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private showDialog()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->miui_nfc_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miui_nfc_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miui_nfc_dialog_positive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miui_nfc_dialog_negative:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    .line 111
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSeRoute:Landroidx/preference/ListPreference;

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 205
    :cond_1
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Lmiuix/preference/DropDownPreference;

    if-eqz p0, :cond_8

    .line 206
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSeRoute:Landroidx/preference/ListPreference;

    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 181
    :cond_3
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Lmiuix/preference/DropDownPreference;

    if-eqz p0, :cond_8

    .line 182
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSeRoute:Landroidx/preference/ListPreference;

    if-eqz p1, :cond_5

    .line 191
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 193
    :cond_5
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Lmiuix/preference/DropDownPreference;

    if-eqz p0, :cond_8

    .line 194
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :cond_6
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 164
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSeRoute:Landroidx/preference/ListPreference;

    if-eqz p1, :cond_7

    .line 167
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 169
    :cond_7
    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Lmiuix/preference/DropDownPreference;

    if-eqz p0, :cond_8

    .line 170
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSwitchChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NfcEnabler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowMiuiNFC()Z

    move-result p1

    if-nez p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 78
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 87
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/NfcEnabler;->changeNfcStatus(Z)V

    goto :goto_1

    .line 89
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->showDialog()V

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method
