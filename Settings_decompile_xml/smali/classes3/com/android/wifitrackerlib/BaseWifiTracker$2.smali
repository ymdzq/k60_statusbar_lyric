.class Lcom/android/wifitrackerlib/BaseWifiTracker$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BaseWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/BaseWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 218
    invoke-static {p2}, Lcom/android/wifitrackerlib/NonSdkApiWrapper;->isPrimaryWifiNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p2}, Lcom/android/wifitrackerlib/CrossSubnetUtils;->isWifiNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 225
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v0

    .line 224
    invoke-static {p1, p2, v0}, Lcom/android/wifitrackerlib/CrossSubnetUtils;->replaceNetworkCapabilitiesIfNeeded(Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)Landroid/net/NetworkCapabilities;

    move-result-object p2

    .line 227
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 205
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/android/wifitrackerlib/NonSdkApiWrapper;->isPrimaryWifiNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 234
    invoke-static {p1}, Lcom/android/wifitrackerlib/CrossSubnetUtils;->clear(Landroid/net/Network;)V

    .line 237
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkLost(Landroid/net/Network;)V

    return-void
.end method
