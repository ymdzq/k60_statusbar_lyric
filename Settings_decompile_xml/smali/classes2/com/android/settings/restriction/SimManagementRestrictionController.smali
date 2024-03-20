.class public Lcom/android/settings/restriction/SimManagementRestrictionController;
.super Lcom/android/settings/BaseSettingsController;
.source "SimManagementRestrictionController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public updateStatus()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_mobile_networks"

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 30
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->disabled_by_admin_summary_text:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
