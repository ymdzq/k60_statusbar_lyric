.class public Lcom/android/settings/MiuiCryptKeeperSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiCryptKeeperSettings.java"


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWarning:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/android/settings/MiuiCryptKeeperSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitiateButton(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWarning(Lcom/android/settings/MiuiCryptKeeperSettings;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mWarning:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlertDialog(Lcom/android/settings/MiuiCryptKeeperSettings;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunKeyguardConfirmation(Lcom/android/settings/MiuiCryptKeeperSettings;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiCryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settings/MiuiCryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiCryptKeeperSettings$1;-><init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/settings/MiuiCryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiCryptKeeperSettings$2;-><init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 2

    .line 251
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->crypt_keeper_encrypt_title:I

    .line 252
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355    # @android:attr/alertDialogIcon

    .line 253
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->crypt_keeper_final_desc:I

    .line 254
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MiuiCryptKeeperSettings$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/MiuiCryptKeeperSettings$3;-><init>(Lcom/android/settings/MiuiCryptKeeperSettings;ILjava/lang/String;)V

    const p1, 0x104000a    # @android:string/ok

    .line 255
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000    # @android:string/cancel

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 309
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 163
    const-class p0, Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    sget p1, Lcom/android/settings/R$layout;->crypt_keeper_settings_fragment:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-nez v1, :cond_0

    const-string v1, "crypt_keeper_decrypt_methods_summary"

    .line 183
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 185
    sget v1, Lcom/android/settings/R$string;->crypt_keeper_decrypt_methods_cannot_decrypt:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    const-string p0, "android.app.action.START_ENCRYPTION"

    .line 188
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "device_policy"

    .line 190
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo p2, "type"

    .line 240
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string/jumbo p1, "password"

    .line 241
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const-string p2, ""

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiCryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 135
    sget v0, Lcom/android/settings/R$layout;->crypt_keeper_information:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 314
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 322
    iput-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 148
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    sget p2, Lcom/android/settings/R$id;->initiate_encrypt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    sget p2, Lcom/android/settings/R$id;->warning_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings;->mWarning:Landroid/widget/TextView;

    return-void
.end method
