.class public Lcom/android/settings/accounts/MiuiManageAccountsSettings;
.super Lcom/android/settings/accounts/MiuiAccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/MiuiManageAccountsSettings$SyncDrawable;,
        Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;
    }
.end annotation


# static fields
.field private static final PREFERENCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected dialog:Lmiuix/appcompat/app/AlertDialog;

.field private mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mAuthorities:[Ljava/lang/String;

.field private mCloudServicePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mOtherAccountCategory:Landroidx/preference/PreferenceCategory;

.field private mSyncAccountCategory:Landroidx/preference/PreferenceCategory;

.field private mSyncDrawable:Lcom/android/settings/MiuiAnimationController;

.field private mSyncEnable:Landroidx/preference/CheckBoxPreference;

.field private mSyncWifiOnly:Landroidx/preference/CheckBoxPreference;

.field private mSyncing:Z

.field private mXiaoMiAccountCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCloudServicePref(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mCloudServicePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOtherAccountCategory(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mOtherAccountCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mturnOnSyncs(Lcom/android/settings/accounts/MiuiManageAccountsSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->turnOnSyncs(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetPREFERENCE_COMPARATOR()Ljava/util/Comparator;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->PREFERENCE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->PREFERENCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Landroid/content/Context;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private checkAndSync(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 418
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->turnOnSyncs(Z)V

    :goto_0
    return-void
.end method

.method public static isUserVisible(Ljava/lang/String;)Z
    .locals 6

    .line 382
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 383
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 384
    aget-object v4, v0, v3

    .line 385
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private loadOtherAccount()V
    .locals 1

    .line 313
    new-instance v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$3;-><init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 378
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onSyncCancel()V
    .locals 0

    .line 561
    iget-boolean p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 562
    invoke-static {p0, p0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSyncRequest()V
    .locals 2

    .line 567
    iget-boolean p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncing:Z

    if-nez p0, :cond_1

    .line 568
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 569
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "force"

    const/4 v1, 0x1

    .line 570
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 572
    invoke-static {v0, v0, p0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private playAnimation(Landroid/view/MenuItem;)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncDrawable:Lcom/android/settings/MiuiAnimationController;

    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->playAnimation()V

    return-void
.end method

.method private reportSimOnDevice(Z)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "sms"

    .line 405
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.cloudservice.mms.UPLOAD_PHONE_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    const-string v0, "extra_upload_opt"

    .line 407
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.miui.cloudservice"

    .line 410
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopAnimation(Landroid/view/MenuItem;)V
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncDrawable:Lcom/android/settings/MiuiAnimationController;

    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->stopAnimation()V

    return-void
.end method

.method private syncableAccountAvailable()Z
    .locals 11

    const-string v0, "account"

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 512
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p0

    .line 514
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 515
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 516
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p0, v4

    .line 517
    array-length v6, v0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v0, v7

    .line 518
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v1, :cond_0

    .line 522
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 523
    invoke-static {v5, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private trackEvent(Ljava/lang/String;)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventId"

    .line 591
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private trackViewOpened()V
    .locals 1

    const-string v0, "account_settings_opened"

    .line 577
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method private trackWifiOnlyEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "account_settings_wifi_only_enabled"

    goto :goto_0

    :cond_0
    const-string p1, "account_settings_wifi_only_disabled"

    .line 581
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method private turnOnSyncs(Z)V
    .locals 12

    const-string v0, "account"

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 429
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p0

    .line 431
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 432
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 433
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 434
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p0, v5

    .line 435
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 436
    array-length v7, v0

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v0, v8

    .line 437
    iget-object v10, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 438
    invoke-static {v6, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 439
    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 442
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncAdapterType;

    if-eqz p1, :cond_2

    .line 444
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 445
    invoke-static {v6, v8, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 447
    :cond_2
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateSyncEnablePreference(Z)V
    .locals 0

    .line 296
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->checkAndSync(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncStateUpdated()V

    .line 299
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->reportSimOnDevice(Z)V

    return-void
.end method

.method private updateSyncWifiOnlyPreference(Z)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_on_wifi_only"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->trackWifiOnlyEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 145
    const-class p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 218
    sget v0, Lcom/android/settings/R$id;->sync_settings_error_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncWifiOnly:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_on_wifi_only"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 151
    new-instance v1, Lcom/android/settings/accounts/MiuiManageAccountsSettings$SyncDrawable;

    invoke-direct {v1, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$SyncDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncDrawable:Lcom/android/settings/MiuiAnimationController;

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 153
    sget p1, Lcom/android/settings/R$xml;->manage_accounts_settings_miui:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string/jumbo v0, "sync_enable"

    .line 155
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "wifi_only"

    .line 156
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncWifiOnly:Landroidx/preference/CheckBoxPreference;

    .line 157
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncWifiOnly:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "xiaomi_cloud_service"

    .line 159
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mCloudServicePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncWifiOnly:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 162
    iput-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncWifiOnly:Landroidx/preference/CheckBoxPreference;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mCloudServicePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string p1, "account_other"

    .line 165
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mOtherAccountCategory:Landroidx/preference/PreferenceCategory;

    .line 167
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.miui.cloudservice"

    const-wide/16 v3, 0x0

    .line 169
    invoke-interface {p1, v2, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mCloudServicePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "MiuiManageAccountsSettings"

    const-string v3, "RemoteException\uff1a"

    .line 174
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mCloudServicePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget v2, Lcom/android/settings/R$layout;->preference_system_app:I

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->trackViewOpened()V

    .line 180
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->sure_sync_now:I

    .line 181
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->sync_now:I

    new-instance v3, Lcom/android/settings/accounts/MiuiManageAccountsSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V

    .line 182
    invoke-virtual {p1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->dlg_cancel:I

    .line 188
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 190
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    const-string p1, "account_sync"

    .line 193
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncAccountCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "account_xiaomi"

    .line 194
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mXiaoMiAccountCategory:Landroidx/preference/PreferenceCategory;

    .line 195
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncAccountCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 196
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mXiaoMiAccountCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 479
    sget p2, Lcom/android/settings/R$string;->account_add:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    sget v2, Lcom/android/settings/R$drawable;->action_button_new:I

    .line 480
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 481
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p2, 0x2

    .line 483
    sget v1, Lcom/android/settings/R$string;->sync_menu_sync_now:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncDrawable:Lcom/android/settings/MiuiAnimationController;

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->getAnimationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x5

    .line 485
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 203
    sget v0, Lcom/android/settings/R$layout;->manage_accounts_screen_miui:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 205
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    .line 207
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    .line 255
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 256
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 250
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 555
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 548
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncing:Z

    if-eqz p1, :cond_1

    .line 549
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncCancel()V

    goto :goto_0

    .line 551
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncRequest()V

    :goto_0
    return v1

    .line 545
    :cond_2
    const-class p1, Lcom/android/settings/accounts/MiuiChooseAccountFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    sget v7, Lcom/android/settings/R$string;->account_add:I

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return v1
.end method

.method public onPause()V
    .locals 0

    .line 243
    invoke-super {p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onPause()V

    const-string p0, "account_list"

    .line 244
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 261
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sync_enable"

    .line 262
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 263
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->updateSyncEnablePreference(Z)V

    return v1

    :cond_0
    const-string/jumbo p1, "wifi_only"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->updateSyncWifiOnlyPreference(Z)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 2

    .line 275
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi_cloud_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "account_list_to_cloud_service"

    .line 277
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 278
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.MICLOUD_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.cloudservice"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 284
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x2

    .line 490
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->syncableAccountAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 493
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 494
    iget-boolean v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncing:Z

    if-eqz v1, :cond_0

    .line 495
    sget v1, Lcom/android/settings/R$string;->sync_in_progress:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 496
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->playAnimation(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 498
    :cond_0
    sget v1, Lcom/android/settings/R$string;->sync_menu_sync_now:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 499
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->stopAnimation(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 502
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 503
    sget v1, Lcom/android/settings/R$string;->sync_menu_sync_now:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 506
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 231
    invoke-super {p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onResume()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->loadOtherAccount()V

    const-string p0, "account_list"

    .line 238
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageStart(Ljava/lang/String;)V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 470
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 471
    iget-boolean v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncing:Z

    if-eq v1, v0, :cond_1

    .line 472
    iput-boolean v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncing:Z

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public showDialog(I)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    const-string v0, "MiuiManageAccountsSettings"

    const-string v1, "Old dialog fragment not null!"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 459
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
