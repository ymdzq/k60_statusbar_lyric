.class Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7;
.super Ljava/lang/Object;
.source "SlaveWifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 450
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pUtils(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    move-result-object p1

    sget-object p2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7$1;-><init>(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$7;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->cancelConnect(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method
