.class public Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "UseFullScreenIntentDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mFullScreenIntentBridge:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;

.field private mFullScreenIntentState:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x85

    .line 32
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;)Ljava/lang/CharSequence;
    .locals 0

    .line 157
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 159
    :cond_0
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 144
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    if-eqz v1, :cond_1

    .line 145
    check-cast v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    goto :goto_0

    .line 146
    :cond_1
    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->getFullScreenIntentInfo(Ljava/lang/String;I)Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    move-result-object v0

    .line 153
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanUseFullScreenIntent(Z)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    const/16 v3, 0x85

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 99
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PERMISSION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.lbe.security.miui"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "full_screen_intent"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "package"

    .line 103
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string p1, "accept"

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "reject"

    :goto_1
    const-string/jumbo v1, "status"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string/jumbo p1, "miui.permission.READ_AND_WIRTE_PERMISSION_MANAGER"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createDialog(II)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentBridge:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;

    const-string v0, "appops"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 50
    sget p1, Lcom/android/settings/R$xml;->use_full_screen_intent_permissions_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 51
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    .line 54
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 64
    sget p0, Lcom/android/settings/R$layout;->manage_applications_apps_unsupported:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    .line 72
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentBridge:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 83
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentState:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentState:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentState:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->setCanUseFullScreenIntent(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->refreshUi()Z

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentBridge:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge;->getFullScreenIntentInfo(Ljava/lang/String;I)Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentState:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    .line 120
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 121
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/UseFullScreenIntentDetails;->mFullScreenIntentState:Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppStateFullScreenIntentBridge$FullScreenIntentState;->controlEnabled:Z

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v1
.end method
