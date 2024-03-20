.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 973
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p2, p2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmSelectWifiConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/MiuiUtils;->resetAutoConnectAp(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 974
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmSelectWifiConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$misPasspoint(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 975
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p2, p2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmSelectWifiConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removePasspointConfig(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-nez p1, :cond_1

    .line 979
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, p2, :cond_3

    .line 981
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p2, p2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    .line 982
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 981
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 983
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 986
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmAmlMiuiWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/AmlMiuiWifiManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 987
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmAmlMiuiWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/AmlMiuiWifiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p2, p2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmNetworkId(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/net/wifi/AmlMiuiWifiManager;->notifyConfigDeleted(I)V

    .line 989
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p2, p2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmNetworkId(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I

    move-result p2

    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1$1;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;)V

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 999
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
