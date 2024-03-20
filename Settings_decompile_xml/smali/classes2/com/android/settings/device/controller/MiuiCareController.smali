.class public Lcom/android/settings/device/controller/MiuiCareController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiCareController.java"


# instance fields
.field private mMiCareLink:Ljava/lang/String;

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/android/settings/device/controller/MiuiCareController;->mMiCareLink:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/device/controller/MiuiCareController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mMiCareLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/device/MiCareUtils;->startActivityWithUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    const-string v0, "after_sale_service"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    const-class p0, Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "\u552e\u540e\u670d\u52a1"

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    const-string/jumbo p1, "trade_in"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 63
    const-class p0, Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "\u4ee5\u65e7\u6362\u65b0"

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 32
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->isLocalCnAndChinese()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    const-string v1, "after_sale_service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "after_sale_link"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiCareUtils;->getMiCareInfoWithPrefKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mMiCareLink:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mPreferenceKey:Ljava/lang/String;

    const-string/jumbo v1, "trade_in"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trade_in_link"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiCareUtils;->getMiCareInfoWithPrefKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mMiCareLink:Ljava/lang/String;

    .line 40
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiCareController;->mMiCareLink:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
