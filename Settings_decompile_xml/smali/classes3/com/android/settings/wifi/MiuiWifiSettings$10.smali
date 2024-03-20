.class Lcom/android/settings/wifi/MiuiWifiSettings$10;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->onStart()V
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

    .line 2133
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 2145
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/Network;)V

    .line 2146
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network mobile data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " available"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 2151
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2152
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network mobile data "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " validated"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$misCustShowSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 2136
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2137
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network mobile data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/Network;)V

    .line 2139
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$10;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$misCustShowSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    :cond_0
    return-void
.end method
