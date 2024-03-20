.class public Lcom/android/settings/security/ManagePasswordPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ManagePasswordPreferenceController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/android/settings/security/ManagePasswordPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "manage_password"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ManagePasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ManagePasswordPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/android/settings/security/ManagePasswordPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/security/ManagePasswordPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->getSystemDefaultEnterAnim(Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/android/settings/security/ManagePasswordPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p0, 0x1

    return p0

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isManagePasswordNeeded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
