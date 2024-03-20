.class Lcom/android/settings/wifi/MiuiWifiSettings$3;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->initOperatorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 796
    sget v0, Lcom/android/settings/R$id;->provision_skip_btn:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 797
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmIsShowDataDialog(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p1, :cond_0

    .line 798
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 799
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog;->showDataConnectionDialog(Landroid/app/Activity;)V

    return-void

    .line 801
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMCustmized()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmESimCode(Lcom/android/settings/wifi/MiuiWifiSettings;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 802
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 803
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog;->show(Landroid/app/Activity;)V

    return-void

    :cond_1
    const-string p1, "provision_wifi_skip"

    .line 806
    invoke-static {p1, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 808
    :cond_2
    sget v0, Lcom/android/settings/R$id;->provision_global_next_btn:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/android/settings/R$id;->provision_next_btn:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "provision_wifi_next"

    .line 814
    invoke-static {p1, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 809
    :cond_4
    :goto_0
    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p1, :cond_5

    .line 810
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog;->setDataEnabled(Landroid/app/Activity;)V

    :cond_5
    :goto_1
    const-string p1, "provision_wifi_page"

    .line 816
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageEnd(Ljava/lang/String;)V

    .line 817
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 818
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
