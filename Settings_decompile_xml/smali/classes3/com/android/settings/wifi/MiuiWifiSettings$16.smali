.class Lcom/android/settings/wifi/MiuiWifiSettings$16;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->refreshVirtualApInfo(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2338
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2341
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    if-eqz v0, :cond_2

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getBatteryPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is5G: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    .line 2343
    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->isIs5G()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2344
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshVirtualApInfo: apInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    move-result-object v0

    .line 2346
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    if-nez v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2350
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getBatteryPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateBatteryLevel(I)V

    .line 2353
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2354
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->val$ap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getBatteryPercent()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateBatteryLevel(I)V

    goto :goto_1

    .line 2358
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mremoveVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 2359
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$16;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    :cond_3
    :goto_1
    return-void
.end method
