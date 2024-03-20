.class public Lcom/android/settings/vpn2/MiuiVpnSettings;
.super Lcom/android/settings/vpn2/VpnSettings;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;
    }
.end annotation


# static fields
.field private static isSecure:Z


# instance fields
.field private mConfigureKeyGuardDialog:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

.field private mDialogShow:Z

.field private mIsLegacyVpnSelected:Z

.field private mIsThridPartyVpnSelected:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelecedThirdPartyAppPreference:Lcom/android/settings/vpn2/AppPreference;

.field private mSelectedPreference:Lcom/android/settings/vpn2/LegacyVpnPreference;

.field private mSelectedPreferenceKey:Ljava/lang/String;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnEnable:Landroidx/preference/CheckBoxPreference;

.field private mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmDialogShow(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialogShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenThirdPartyVpnApp(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/AppPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->openThirdPartyVpnApp(Lcom/android/settings/vpn2/AppPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVpnState(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->updateVpnState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$1;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closeAllVpnConnections()V
    .locals 4

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->vpn_states:I

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when disconnect vpn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiVpnSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 251
    :goto_1
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 257
    :cond_1
    invoke-virtual {v2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    instance-of v3, v2, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v3, :cond_2

    .line 259
    check-cast v2, Lcom/android/settings/vpn2/AppPreference;

    .line 260
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->openThirdPartyVpnApp(Lcom/android/settings/vpn2/AppPreference;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initSelectedPreference()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreference:Lcom/android/settings/vpn2/LegacyVpnPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 588
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsLegacyVpnSelected:Z

    .line 589
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsThridPartyVpnSelected:Z

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreference:Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 593
    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelecedThirdPartyAppPreference:Lcom/android/settings/vpn2/AppPreference;

    return-void
.end method

.method private openThirdPartyVpnApp(Lcom/android/settings/vpn2/AppPreference;)V
    .locals 3

    .line 269
    :try_start_0
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ManageablePreference;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v1, p0, v2, v0}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPN provider does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiVpnSettings"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private recoverVpnSelected()V
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsLegacyVpnSelected:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreference:Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 598
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private refreshVpnEnableButton(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 578
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnEnable:Landroidx/preference/CheckBoxPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private selectLegacyVpn(Lcom/android/internal/net/VpnProfile;)Z
    .locals 4

    .line 604
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->initSelectedPreference()V

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsLegacyVpnSelected:Z

    const/4 v1, 0x0

    .line 607
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsThridPartyVpnSelected:Z

    .line 609
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iput-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreference:Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 613
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnUtils;->setConnectedVpnKey(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 614
    iget-object p0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private selectThirdPartyVpn(Lcom/android/settings/vpn2/AppPreference;)Z
    .locals 1

    .line 619
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->initSelectedPreference()V

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsLegacyVpnSelected:Z

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsThridPartyVpnSelected:Z

    .line 624
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelecedThirdPartyAppPreference:Lcom/android/settings/vpn2/AppPreference;

    return v0
.end method

.method private updateVpnState(Z)V
    .locals 5

    const-string v0, "MiuiVpnSettings"

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/MiuiVpnUtils;->getConnectedVpnKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn2/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when updateVpnState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    if-eqz v2, :cond_0

    .line 220
    iget-object v1, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 224
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/vpn2/VpnManager;->connect(Lcom/android/internal/net/VpnProfile;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when connect vpn"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 231
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    iget-object p1, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private vpnEnableStateChange(Landroidx/preference/Preference;Z)V
    .locals 0

    if-eqz p2, :cond_2

    .line 630
    iget-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsLegacyVpnSelected:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 631
    invoke-direct {p0, p2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->updateVpnState(Z)V

    goto :goto_0

    .line 632
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsThridPartyVpnSelected:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelecedThirdPartyAppPreference:Lcom/android/settings/vpn2/AppPreference;

    if-eqz p1, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->openThirdPartyVpnApp(Lcom/android/settings/vpn2/AppPreference;)V

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->vpn_no_selected:I

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 638
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->closeAllVpnConnections()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected editProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->editProfile(Lcom/android/internal/net/VpnProfile;Z)V

    return-void
.end method

.method protected editProfile(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 6

    .line 450
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 451
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v0

    const-string/jumbo v1, "profile"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "profile_key"

    .line 452
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "profile_add"

    .line 453
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    const-class p1, Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 95
    const-class p0, Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initAllPreferenceSummary()V
    .locals 3

    const/4 v0, 0x0

    .line 515
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, ""

    .line 517
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected initVpnPreferenceList()V
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    .line 471
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 473
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 474
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 476
    invoke-static {}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 477
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v3

    .line 478
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 479
    new-instance v4, Lcom/android/settings/vpn2/MiuiVpnSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$3;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setEditListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show vpn config, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MiuiVpnSettings"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-static {v1, v3, v2}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;ZLcom/android/settings/vpn2/AdvancedVpnFeatureProvider;)Ljava/util/List;

    move-result-object v1

    .line 493
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/AppVpnInfo;

    .line 494
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;

    move-result-object v2

    .line 495
    new-instance v3, Lcom/android/settings/vpn2/MiuiVpnSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$4;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 502
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vpn_configure_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    .line 505
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 506
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->initSelectedPreference()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 359
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 363
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->onFragmentResult(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "setting_Connection_VPN"

    .line 101
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    const-string/jumbo p1, "user"

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 103
    new-instance p1, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog-IA;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mConfigureKeyGuardDialog:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    .line 104
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mUnavailable:Z

    .line 106
    new-instance p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 112
    new-instance p1, Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    .line 114
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo p1, "vpn_enable"

    .line 116
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnEnable:Landroidx/preference/CheckBoxPreference;

    .line 117
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "vpn_configure_category"

    .line 118
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    .line 120
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.vpn.SETTINGS"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "vpn_password_enable"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 460
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 464
    :cond_0
    sget p0, Lcom/android/settings/R$string;->vpn_create:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->action_button_new:I

    .line 465
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 466
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mConfigureKeyGuardDialog:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->initVpnPreferenceList()V

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_6

    const-string/jumbo p1, "profile"

    .line 373
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const-string/jumbo v0, "profile_key"

    .line 374
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "profile_delete"

    const/4 v2, 0x0

    .line 375
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 380
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    .line 381
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    const-string v3, "MiuiVpnSettings"

    const-string v4, "VPN_"

    if-eqz p2, :cond_3

    if-eqz v1, :cond_6

    .line 384
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 386
    iget-object p2, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 390
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/settings/vpn2/MiuiVpnUtils;->saveVpnConfiguredStatus(Landroid/content/Context;I)V

    .line 393
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delete vpn config, key = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", and Legacy Vpn size is : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 399
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    if-eqz v1, :cond_4

    .line 401
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 402
    sget p2, Lcom/android/settings/vpn2/AppPreference;->STATE_DISCONNECTED:I

    invoke-virtual {v1, p2}, Lcom/android/settings/vpn2/ManageableRadioPreference;->setState(I)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v0

    .line 405
    new-instance v1, Lcom/android/settings/vpn2/MiuiVpnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$2;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setEditListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/MiuiVpnUtils;->getConfiguredVpnStatus(Landroid/content/Context;)I

    move-result v0

    if-ge v0, p2, :cond_5

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/vpn2/MiuiVpnUtils;->saveVpnConfiguredStatus(Landroid/content/Context;I)V

    .line 417
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add vpn config, key = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreferenceKey:Ljava/lang/String;

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 432
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 435
    :goto_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 438
    :cond_0
    new-instance p1, Lcom/android/internal/net/VpnProfile;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->editProfile(Lcom/android/internal/net/VpnProfile;Z)V

    return v1

    .line 441
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 541
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vpn_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 544
    sget-boolean v0, Lcom/android/settings/vpn2/MiuiVpnSettings;->isSecure:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->vpnEnableStateChange(Landroidx/preference/Preference;Z)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mConfigureKeyGuardDialog:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->vpnEnableStateChange(Landroidx/preference/Preference;Z)V

    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 559
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_0

    .line 560
    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 561
    invoke-virtual {v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->selectLegacyVpn(Lcom/android/internal/net/VpnProfile;)Z

    .line 563
    :cond_0
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 564
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 565
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->selectThirdPartyVpn(Lcom/android/settings/vpn2/AppPreference;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 202
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 203
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/settings/vpn2/VpnSettings;->onResume()V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004    # @android:id/empty

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 145
    sget p0, Lcom/android/settings/R$string;->vpn_settings_not_available:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "disallow_vpn"

    invoke-static {v0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 158
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v0

    invoke-interface {v0, v1}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/vpn2/MiuiVpnSettings;->isSecure:Z

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "saved_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string/jumbo v1, "show_dialog"

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialogShow:Z

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mConfigureKeyGuardDialog:Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialogShow:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/settings/vpn2/MiuiVpnSettings;->isSecure:Z

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->show(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->initVpnPreferenceList()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreferenceKey:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_2

    .line 177
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/MiuiVpnUtils;->getConnectedVpnKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_9

    .line 179
    invoke-virtual {v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->selectLegacyVpn(Lcom/android/internal/net/VpnProfile;)Z

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 184
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 185
    :cond_a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vpn_configure_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_b

    .line 186
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_b
    :goto_3
    return-void

    .line 160
    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "show_dialog"

    .line 131
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mDialogShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "saved_bundle"

    .line 133
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mSelectedPreferenceKey:Ljava/lang/String;

    .line 528
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->recoverVpnSelected()V

    .line 531
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings;->mVpnProxyManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->getVpnConnectionStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->refreshVpnEnableButton(I)V

    return-void
.end method
