.class public Lcom/android/settings/development/RootManagementPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "RootManagementPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getLockState()Ljava/lang/String;
    .locals 1

    const-string/jumbo p0, "ro.secureboot.lockstate"

    const-string v0, ""

    .line 97
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRootable()Z
    .locals 2

    const-string/jumbo p0, "ro.debuggable"

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private varargs isDeviceIn([Ljava/lang/String;)Z
    .locals 4

    .line 77
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 79
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isDeviceLock()Z
    .locals 2

    const-string/jumbo p0, "ro.secureboot.devicelock"

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "root_manager"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 89
    sget-boolean p0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_5

    .line 46
    invoke-direct {p0}, Lcom/android/settings/development/RootManagementPreferenceController;->getRootable()Z

    move-result v0

    const-string v1, "com.miui.securitycenter"

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.permcenter.root.RootManagementActivity"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "ro.product.first_api_level"

    const/16 v2, 0x1f

    .line 49
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-gt v0, v2, :cond_4

    const-string/jumbo v0, "sunstone"

    const-string/jumbo v2, "moonstone"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/RootManagementPreferenceController;->isDeviceIn([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "unlocked"

    .line 52
    invoke-direct {p0}, Lcom/android/settings/development/RootManagementPreferenceController;->getLockState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/development/RootManagementPreferenceController;->isDeviceLock()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PERMISSION_CENTER_SECURITY_WEB_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    sget v1, Lcom/android/settings/R$string;->activity_title_root_note:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 53
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.updater"

    const-string v2, "com.miui.permcenter.root.RootAcquiredActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    sget v0, Lcom/android/settings/R$string;->activity_title_root_acquired:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    move-object v0, v1

    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.permcenter.root.NotSupportRootActivity"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/development/RootManagementPreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    return-void
.end method
