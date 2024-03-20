.class public Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EmergencyBroadcastPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final CELL_BROAD:Ljava/lang/String;

.field private final GOOGLE_CELL_BROAD:Ljava/lang/String;

.field private final TARGET_CLASS:Ljava/lang/String;

.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPrefKey:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.cellbroadcastreceiver"

    .line 52
    iput-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->CELL_BROAD:Ljava/lang/String;

    const-string v0, "com.google.android.cellbroadcastreceiver"

    .line 53
    iput-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->GOOGLE_CELL_BROAD:Ljava/lang/String;

    const-string v0, "com.android.cellbroadcastreceiver.CellBroadcastSettings"

    .line 54
    iput-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->TARGET_CLASS:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    const-string/jumbo p2, "user"

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 67
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V

    return-void
.end method

.method private isCellBroadcastAppLinkEnabled()Z
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {v2}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :catch_0
    :cond_0
    move v0, v1

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/android/settings/custs/CellBroadcastUtil;->nccBroadcastEnabled(Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.cellbroadcastreceiver"

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "com.android.cellbroadcastreceiver.CellBroadcastSettings"

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.android.cellbroadcastreceiver"

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 105
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-static {v0, v2}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.cellbroadcastreceiver"

    invoke-static {v0, v2}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "EmergencyBroadcastPreferenceController"

    const-string v0, "broadcast recevier is not installed"

    .line 109
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->isCellBroadcastAppLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    const-string/jumbo v0, "no_config_cell_broadcasts"

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 114
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 72
    instance-of p0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez p0, :cond_0

    return-void

    .line 75
    :cond_0
    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo p0, "no_config_cell_broadcasts"

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    return-void
.end method
