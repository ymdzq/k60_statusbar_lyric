.class Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;
.super Landroid/os/AsyncTask;
.source "MiuiManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadVIPNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 615
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    .line 627
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->context:Landroid/content/Context;

    invoke-static {p1}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 629
    invoke-virtual {p1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 630
    invoke-virtual {p1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 635
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->init(Landroid/content/Context;)V

    .line 636
    invoke-virtual {p1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 636
    :goto_0
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/CommonSdk;->getMiCloudMemberStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/VipInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "MiuiManageAccountsSettings"

    const-string v3, "Fail to get vip info."

    .line 639
    invoke-static {p1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lmiui/cloud/sync/VipInfo;->vipName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    const-string p1, ""

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v3

    const/4 p1, 0x1

    invoke-static {v2, p1, v3, v4}, Lcom/android/settings/MiuiUtils;->getQuantityStringWithUnit(Ljava/util/Locale;IJ)Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v3

    invoke-static {v2, p1, v3, v4}, Lcom/android/settings/MiuiUtils;->getQuantityStringWithUnit(Ljava/util/Locale;IJ)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s/%s"

    .line 643
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 615
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 652
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$fgetmCloudServicePref(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->xiaomi_cloud_service_unknown:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$LoadVIPNameTask;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-static {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->-$$Nest$fgetmCloudServicePref(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
