.class public Lcom/android/settings/MiuiSecuritySettings;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAddOrManageFaceData:Landroidx/preference/Preference;

.field private mAddOrManageFingerprint:Landroidx/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

.field private mFingerprintHardwareAvailable:Z

.field private mHasClickFaceUnlockOrFinger:Z

.field private mIsOled:Z

.field private mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

.field private mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrivacyPassword:Landroidx/preference/Preference;

.field private mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

.field private mSecurityCategory:Landroidx/preference/PreferenceCategory;

.field private mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLockScreenMagazine(Lcom/android/settings/MiuiSecuritySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurityCategory(Lcom/android/settings/MiuiSecuritySettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddFaceData(Lcom/android/settings/MiuiSecuritySettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->addFaceData(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddFingerprint(Lcom/android/settings/MiuiSecuritySettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->addFingerprint(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateNewPassword(Lcom/android/settings/MiuiSecuritySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->createNewPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mkeyguardPasswordExisted(Lcom/android/settings/MiuiSecuritySettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->keyguardPasswordExisted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtoFaceManageFragment(Lcom/android/settings/MiuiSecuritySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->toFaceManageFragment()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoFingerprintManageFragment(Lcom/android/settings/MiuiSecuritySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->toFingerprintManageFragment()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addFaceData(I)V
    .locals 2

    .line 342
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/faceunlock/MiuiFaceDataInput;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x6c

    .line 343
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private addFingerprint(I)V
    .locals 2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 328
    sget p1, Lcom/android/settings/R$string;->max_fingerprint_number_reached:I

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->showInformationDialog(I)V

    return-void

    .line 332
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x6b

    .line 333
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private convertNotificationStatusToPrefIndex(I)I
    .locals 3

    .line 294
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->keyguard_notification_status_values:I

    .line 295
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 297
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 298
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private createNewPassword()V
    .locals 6

    .line 435
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 436
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->keyguardPasswordExisted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/4 v3, 0x0

    .line 437
    sget v5, Lcom/android/settings/R$string;->password_entrance_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private static getSettingsComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    .line 551
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "getSettingsComponent"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result_string"

    .line 552
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 553
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 554
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.LOCKWALLPAPER_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 511
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 514
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->isProviderEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_1

    .line 518
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string/jumbo v5, "mifg://fashiongallery/jump_setting"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    const-string v3, "IN"

    .line 519
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.android.fashiongallery.setting.SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 523
    const-class v4, Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call lockscreen magazine provider  throw an exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v2

    :goto_1
    const/16 v4, 0x40

    if-eqz v3, :cond_3

    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 532
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 533
    invoke-static {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->getSettingsComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    return-object v3

    :cond_5
    return-object v2
.end method

.method private handleSecurityLockToggle()V
    .locals 7

    .line 401
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->keyguardPasswordExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 403
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->keyguardPasswordExisted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "com.android.settings.MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment"

    const/4 v4, -0x1

    .line 404
    sget v6, Lcom/android/settings/R$string;->password_entrance_title:I

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    .line 409
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 410
    new-instance v1, Lcom/android/settings/MiuiSecuritySettings$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MiuiSecuritySettings$3;-><init>(Lcom/android/settings/MiuiSecuritySettings;Lcom/android/settings/FingerprintHelper;)V

    .line 421
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 422
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->delete_or_keep_legacy_passwords_confirm_msg:I

    .line 423
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->delete_legacy_fingerprint:I

    .line 424
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->keep_legacy_fingerprint:I

    .line 425
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 426
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->createNewPassword()V

    :goto_0
    return-void
.end method

.method private initKeyguardNotificationPref()V
    .locals 2

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSupportAodAnimateDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getKeyguardNotificationStatus(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v0

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->convertNotificationStatusToPrefIndex(I)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 282
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isWakeupForNotification(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 288
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private initLockScreenMagazine()V
    .locals 2

    .line 562
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 566
    :cond_0
    new-instance v0, Lcom/android/settings/MiuiSecuritySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecuritySettings$4;-><init>(Lcom/android/settings/MiuiSecuritySettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 583
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static isLockScreenMagazineAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 491
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMiShowMode(Landroid/content/Context;)Z
    .locals 2

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disable_security_by_mishow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isProviderEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 545
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    .line 546
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isToggled(Landroidx/preference/Preference;)Z
    .locals 0

    .line 397
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method private keyguardPasswordExisted()Z
    .locals 1

    .line 359
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setupTimeoutPreference()V
    .locals 4

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 445
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 446
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->disableUnusableTimeouts()V

    return-void
.end method

.method private showInformationDialog(I)V
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->showInformationDialog(Ljava/lang/String;)V

    return-void
.end method

.method private showInformationDialog(Ljava/lang/String;)V
    .locals 1

    .line 351
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 352
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 353
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->information_dialog_button_text:I

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private toFaceManageFragment()V
    .locals 6

    const-string v2, "com.android.settings.faceunlock.FaceManageFragment$FaceManageFragment"

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 337
    sget v5, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private toFingerprintManageFragment()V
    .locals 6

    const-string v2, "com.android.settings.FingerprintManageSetting$FingerprintManageFragment"

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 322
    sget v5, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x57

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 107
    const-class p0, Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3e9

    const/4 v0, -0x1

    if-ne p1, p3, :cond_0

    if-ne p2, v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->toFingerprintManageFragment()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x3ea

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->toFaceManageFragment()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance p1, Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const-string p1, "device_policy"

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/MiuiSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecuritySettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "ro.vendor.display.type"

    .line 116
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "oled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "ro.display.type"

    .line 117
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecuritySettings;->mIsOled:Z

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_0

    .line 124
    sget p0, Lcom/android/settings/R$layout;->password_guard_activity:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 452
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 453
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->convertNotificationStatusToPrefIndex(I)I

    move-result v0

    .line 454
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$array;->aod_notification_status_entries:I

    .line 455
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 457
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wakeup_for_keyguard_notification"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 365
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const-string/jumbo v2, "unlock_set_or_change"

    .line 368
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->handleSecurityLockToggle()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "lockenabled"

    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "power_button_instantly_locks"

    .line 373
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->isToggled(Landroidx/preference/Preference;)Z

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    move-object v1, p2

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const-string/jumbo v2, "wakeup_for_keyguard_notification"

    .line 376
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "privacy_password"

    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/privacypassword/TransparentHelper;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "keyguard_privacy_policy"

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 388
    sget v2, Lcom/android/settings/R$string;->keyguard_setting_privacy_policy_url:I

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 393
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 6

    .line 133
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 136
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 140
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->security_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 142
    sget v1, Lcom/android/settings/R$xml;->security_settings_common:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "security_category"

    .line 144
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v1, "screen_timeout"

    .line 147
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/KeyguardTimeoutListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->setupTimeoutPreference()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/KeyguardTimeoutListPreference;->updateTimeoutPreferenceSummary()V

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->mHasClickFaceUnlockOrFinger:Z

    .line 159
    new-instance v1, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v1}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintHardwareAvailable:Z

    const-string v2, "fingerprint_and_faceunlock"

    .line 161
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

    const-string v2, "add_or_manage_fingerprint"

    .line 162
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFingerprint:Landroidx/preference/Preference;

    .line 164
    iget-boolean v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintHardwareAvailable:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_4

    .line 165
    invoke-virtual {v1}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFingerprint:Landroidx/preference/Preference;

    new-instance v4, Lcom/android/settings/MiuiSecuritySettings$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/MiuiSecuritySettings$1;-><init>(Lcom/android/settings/MiuiSecuritySettings;I)V

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFingerprint:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->manage_fingerprint_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFingerprint:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->add_fingerprint_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_1
    move v1, v3

    goto :goto_2

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFingerprint:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move v1, v0

    :goto_2
    const-string v2, "add_or_manage_face_recoginition"

    .line 197
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFaceData:Landroidx/preference/Preference;

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_7

    .line 199
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

    sget v2, Lcom/android/settings/R$string;->fingerprint_first_open_screen_password_face_tittle:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getEnrolledFaceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_3

    .line 201
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 202
    :goto_3
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFaceData:Landroidx/preference/Preference;

    new-instance v4, Lcom/android/settings/MiuiSecuritySettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/MiuiSecuritySettings$2;-><init>(Lcom/android/settings/MiuiSecuritySettings;I)V

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v1, :cond_6

    .line 221
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFaceData:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->rgb_manage_facerecoginition_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_4

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFaceData:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->add_facerecoginition_text:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_4
    move v1, v3

    goto :goto_5

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/MiuiSecuritySettings;->mAddOrManageFaceData:Landroidx/preference/Preference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    if-nez v1, :cond_8

    .line 232
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    const-string/jumbo v1, "unlock_set_or_change"

    .line 235
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string/jumbo v2, "security_second_category"

    .line 236
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 237
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v4, v5}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    .line 244
    :cond_9
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 238
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->keyguardPasswordExisted()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 239
    sget v4, Lcom/android/settings/R$string;->password_turned_on_text:I

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_7

    .line 241
    :cond_b
    sget v4, Lcom/android/settings/R$string;->password_turned_off_text:I

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_7
    const-string/jumbo v1, "privacy_password"

    .line 247
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mPrivacyPassword:Landroidx/preference/Preference;

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 250
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mPrivacyPassword:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$string;->password_turned_on_text:I

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 252
    :cond_c
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mPrivacyPassword:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$string;->password_turned_off_text:I

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_8
    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    .line 256
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    const-string v1, "keyguard_notification_status"

    .line 258
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mKeyguardNotificationStatusPref:Landroidx/preference/ListPreference;

    .line 259
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->initKeyguardNotificationPref()V

    const-string v1, "lockscreen_magazine"

    .line 261
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 262
    invoke-virtual {v1, v3}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->initLockScreenMagazine()V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "disable_security_by_mishow"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 266
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings;->mFingerprintAndFaceUnlock:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 267
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    return-void
.end method
