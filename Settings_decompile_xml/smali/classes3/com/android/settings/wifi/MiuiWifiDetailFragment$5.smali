.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    .line 1045
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    .line 1046
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fputmModifyConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)V

    .line 1047
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmMiuiWifiPrivacyUtils(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmModifyConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1048
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmMiuiWifiPrivacyUtils(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmPrivacySettingsSpinner(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lmiuix/appcompat/widget/Spinner;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->update(Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method
