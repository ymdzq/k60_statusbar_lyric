.class public Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "FingerprintManageSetting.java"

# interfaces
.implements Lcom/android/settings/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FingerprintManageSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintManageFragment"
.end annotation


# instance fields
.field private fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

.field private mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

.field private mFingerlistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintList:Landroidx/preference/PreferenceCategory;

.field private mFingerprintTipsForCts:Landroid/widget/TextView;

.field private mFingerprintTipsForCtsMore:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$oNRsWcm1hjVgm4JJYMumdp1XymU(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->lambda$setupUnlockTypeCategory$1(Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qGWHXfYwuy8yKmj58S53J1THIkY(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->lambda$showFingerprintTipsForCts$0(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFingerlistIds(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddFingerprint(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->addFingerprint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFodAodLowlightShowEnable(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->setFodAodLowlightShowEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFodAodShowEnable(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->setFodAodShowEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFodVibrateSwitchEnable(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->setFodVibrateSwitchEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFingerprintDetails(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->showFingerprintDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    return-void
.end method

.method private addApplyFingerprintItem(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 438
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 439
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    new-instance p2, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$8;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    iget-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "miui_keyguard"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 455
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p1, 0x0

    if-ne p0, v1, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, p1

    .line 456
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez p3, :cond_2

    .line 459
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 460
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private addFingerprint()V
    .locals 7

    .line 388
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 389
    sget v0, Lcom/android/settings/R$string;->max_fingerprint_reached_toast:I

    invoke-direct {p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->showInformationToast(I)V

    return-void

    .line 392
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 400
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    const-class v0, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v2, 0x0

    const/16 v4, 0x6b

    const/4 v5, 0x0

    .line 405
    sget v6, Lcom/android/settings/R$string;->add_fingerprint_text:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_2

    .line 393
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:show_fragment_title"

    .line 394
    sget v2, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    const/16 v1, 0x6b

    .line 396
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_2
    return-void
.end method

.method private checkedFingerprintAllItemState(Z)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 468
    :goto_0
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 470
    instance-of v2, v1, Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 471
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFingerprintUnlockTypeIndex()I
    .locals 1

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getFingerprintUnlockType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFodAodLowlightShowEnable()Z
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gxzw_icon_aod_lowlight_show_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isFodAodShowEnable()Z
    .locals 3

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gxzw_icon_aod_show_enable"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isFodVibrateSwitchEnable()Z
    .locals 3

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gxzw_icon_vibrate_enable"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isSetAnimNone()Z
    .locals 3

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fod_animation_type"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private synthetic lambda$setupUnlockTypeCategory$1(Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 561
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->setFingerprintUnlockType(I)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->updateFingerprintUnlockTypePreference(Lmiuix/preference/DropDownPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$showFingerprintTipsForCts$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x20

    .line 514
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 513
    invoke-static {p0, p1, v0}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 515
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private setFingerprintUnlockType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setFingerprintUnlockType(Landroid/content/Context;I)V

    return-void
.end method

.method private setFodAodLowlightShowEnable(Z)V
    .locals 2

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "gxzw_icon_aod_lowlight_show_enable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setFodAodShowEnable(Z)V
    .locals 2

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "gxzw_icon_aod_show_enable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setFodVibrateSwitchEnable(Z)V
    .locals 2

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "gxzw_icon_vibrate_enable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setupUnlockTypeCategory(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "unlock_type"

    .line 557
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 558
    invoke-static {}, Lcom/android/settings/utils/FingerprintUtils;->isBroadSideFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "fingerprint_unlock_type"

    .line 559
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    .line 560
    new-instance v0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->updateFingerprintUnlockTypePreference(Lmiuix/preference/DropDownPreference;)V

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private showFingerprintDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 378
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_fingerprint_key"

    .line 379
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_fingerprint_title"

    .line 380
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-class p1, Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x449

    sget v5, Lcom/android/settings/R$string;->empty_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private showFingerprintTipsForCts()V
    .locals 10

    .line 477
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lcom/android/settings/R$string;->security_fingerprint_disclaimer_lockscreen_disabled_1:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 480
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 481
    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 482
    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 483
    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 484
    new-instance v9, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;

    invoke-direct {v9, p0, v7, v2}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/lang/String;Landroid/app/Activity;)V

    const/16 v7, 0x21

    invoke-virtual {v0, v9, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCts:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCts:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 512
    new-instance v0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCtsMore:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCtsMore:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showInformationToast(I)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mToast:Landroid/widget/Toast;

    .line 415
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private sortFingerprintList()V
    .locals 5

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/utils/FingerprintUtils;->getFingerprintCreateDate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 362
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    new-instance v2, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$7;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateApplyCategories()V
    .locals 7

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->common_password_business_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->common_password_business_names:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->common_password_business_clickable_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 423
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    const-string v4, "fingerprint_apply_to_privacy_password"

    .line 424
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "miui_keyguard"

    aget-object v5, v0, v3

    .line 425
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com_miui_applicatinlock_use_fingerprint_state"

    aget-object v5, v0, v3

    .line 426
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    :cond_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 428
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->addApplyFingerprintItem(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateFingerprintList()V
    .locals 7

    .line 307
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    .line 309
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->sortFingerprintList()V

    .line 310
    new-instance v0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$6;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    .line 326
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    move v2, v1

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 330
    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 331
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/settings/utils/FingerprintUtils;->getFingerprintName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/android/settings/utils/FingerprintUtils;->generateFingerprintName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lcom/android/settings/utils/FingerprintUtils;->setFingerprintName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 341
    iget-object v3, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    new-instance v2, Lcom/android/settings/FingerprintManageSetting$AlwaysClickablePreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/FingerprintManageSetting$AlwaysClickablePreference;-><init>(Landroid/content/Context;)V

    const-string v3, "add_fingerprint"

    .line 345
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 346
    sget v3, Lcom/android/settings/R$string;->enrol_fingerprint_data:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 347
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 350
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_2

    .line 351
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    .line 353
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateFingerprintUnlockTypePreference(Lmiuix/preference/DropDownPreference;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->getFingerprintUnlockTypeIndex()I

    move-result p0

    .line 573
    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 240
    const-class p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public inflateCustomizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 221
    sget p3, Lcom/android/settings/R$layout;->fingerprint_manage_setting_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 224
    sget p2, Lcom/android/settings/R$id;->fingerprint_hint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCts:Landroid/widget/TextView;

    .line 225
    sget p2, Lcom/android/settings/R$id;->fingerprint_hint_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCtsMore:Landroid/widget/TextView;

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 p3, 0x20

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 227
    invoke-static {p2, p3, v0}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->showFingerprintTipsForCts()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCts:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintTipsForCtsMore:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 245
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x449

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 295
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 297
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    sget p1, Lcom/android/settings/R$xml;->fingerprint_manage:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "fingerprint_list"

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerprintList:Landroidx/preference/PreferenceCategory;

    const-string v0, "apply_fingerprint_to"

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    .line 127
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->updateApplyCategories()V

    .line 129
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isSupportQuickOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 131
    sget v1, Lcom/android/settings/R$string;->gxzw_quick_open_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 132
    new-instance v1, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$1;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.action.MANAGE_FINGERPRINT_PAYMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 147
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 148
    sget v2, Lcom/android/settings/R$string;->fingerprint_payment:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 149
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mApplyFingerprintCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v0, "gxzw_anim_type"

    .line 152
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "fingerprint_others"

    .line 153
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 155
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwSensor()Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 157
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_4

    :cond_2
    const-string v2, "gxzw_anim"

    .line 160
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 161
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isLargeFod()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    if-eqz v3, :cond_3

    goto :goto_0

    .line 164
    :cond_3
    new-instance v3, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$2;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 162
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string v2, "gxzw_vibrate"

    .line 174
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/MiuiGxzwUtils;->isSupportfodVibrateSwitch(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 176
    iget-object v2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$3;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->isFodVibrateSwitchEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    const-string v0, "gxzw_lowlight_open"

    .line 189
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 190
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isSupportLowlight()Z

    move-result v2

    if-nez v2, :cond_6

    .line 191
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 193
    :cond_6
    new-instance v1, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$4;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->isFodAodLowlightShowEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    const-string v0, "gxzw_aod_show"

    .line 204
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 205
    new-instance v1, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$5;-><init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->isFodAodShowEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->setupUnlockTypeCategory(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 260
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 262
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->updateFingerprintList()V

    .line 264
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->mFingerlistIds:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-direct {p0, v1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->checkedFingerprintAllItemState(Z)V

    goto :goto_1

    .line 269
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->checkedFingerprintAllItemState(Z)V

    .line 274
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 275
    invoke-direct {p0}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->isSetAnimNone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 278
    :cond_3
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->fodVibrateSwitchPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method
