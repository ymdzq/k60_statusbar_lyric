.class Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;
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

    .line 466
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 471
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz p2, :cond_1

    .line 473
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pUtils(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    move-result-object p1

    sget-object p2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    .line 474
    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getNetworkId()I

    move-result v1

    new-instance v2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8$1;-><init>(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;)V

    .line 473
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->deletePersistentGroup(Ljava/lang/Object;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 484
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 493
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    :cond_1
    :goto_0
    return-void
.end method
