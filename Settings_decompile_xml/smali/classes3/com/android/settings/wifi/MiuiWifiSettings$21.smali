.class Lcom/android/settings/wifi/MiuiWifiSettings$21;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->refreshVirtualApInfoForEasyEther()V
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

    .line 2555
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$21;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2558
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherHotspotEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2559
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$21;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 2562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$21;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mremoveAllVirtualAPPreferenceForEasyEther(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 2563
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$21;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V

    .line 2564
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mEasyTetherHotspotEntries clear."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
