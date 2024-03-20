.class Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;
.super Landroid/net/wifi/hotspot2/ProvisioningCallback;
.source "AccessPoint.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessPointPasspointR1ProvisioningCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method public static synthetic $r8$lambda$57E0fQg-jCrO7YcowiK3edpzvSQ(Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->lambda$onProvisioningComplete$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$FC6pGtXhV4V6w_nhNLCrXyHLRLE(Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->lambda$onProvisioningFailure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hwMvaE1uPQTSaRq6vxuMOj8tdDI(Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->lambda$onProvisioningStatus$1()V

    return-void
.end method

.method private synthetic lambda$onProvisioningComplete$2()V
    .locals 1

    .line 2664
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 2665
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onProvisioningFailure$0()V
    .locals 1

    .line 2633
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 2634
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onProvisioningStatus$1()V
    .locals 1

    .line 2650
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 2651
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onProvisioningComplete()V
    .locals 8

    .line 2659
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1ProvisioningComplete(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    .line 2660
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1Failure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    .line 2661
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1Status(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    .line 2663
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 2669
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "MiuiWifiService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/MiuiWifiManager;

    .line 2670
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmPasspointR1Provider(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/PasspointR1Provider;

    move-result-object v2

    .line 2671
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/MiuiWifiManager;->getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmPasspointR1Provider(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/PasspointR1Provider;

    move-result-object v2

    .line 2672
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "SettingsLib.AccessPoint"

    const-string v1, "Missing PasspointConfiguration for newly provisioned network!"

    .line 2674
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    :cond_0
    return-void

    .line 2682
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$mgetWifiManager(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 2684
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    .line 2686
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2687
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2688
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2689
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 2690
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2691
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 2692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2694
    new-instance v2, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v6, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2696
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 2700
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2701
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    :cond_4
    return-void
.end method

.method public onProvisioningFailure(I)V
    .locals 2

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPointPasspointR1ProvisioningCallback onProvisioningFailure status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsLib.AccessPoint"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->osu_sign_up_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1Failure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    .line 2630
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1Status(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    .line 2631
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1ProvisioningComplete(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    .line 2632
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProvisioningStatus(I)V
    .locals 2

    .line 2642
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$string;->osu_opening_provider:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmPasspointR1Provider(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/PasspointR1Provider;

    move-result-object v0

    .line 2643
    invoke-virtual {v0}, Landroid/net/wifi/PasspointR1Provider;->getDomainName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2642
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2644
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmOsuStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2645
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1Status(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    .line 2646
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1Failure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    .line 2647
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmPasspointR1ProvisioningComplete(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    if-eqz v0, :cond_0

    .line 2649
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointPasspointR1ProvisioningCallback;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
