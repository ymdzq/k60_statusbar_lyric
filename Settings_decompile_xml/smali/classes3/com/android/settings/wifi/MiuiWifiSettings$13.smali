.class Lcom/android/settings/wifi/MiuiWifiSettings$13;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->initMiuiSynergySdk()V
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

    .line 2282
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$13;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2285
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$13;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$13;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$13;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->querySameAccountApInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    .line 2287
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$13;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mrefreshVirtualApInfo(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    :cond_0
    return-void
.end method
