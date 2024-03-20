.class Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;
.super Ljava/lang/Object;
.source "MiuiSlaveWifiEnabler.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$fgetmIsNeededEnabled(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$fgetmSlaveWifiUtils(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->setWifiSlaveEnabled(Z)Z

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->-$$Nest$fputmIsNeededEnabled(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;Z)V

    :cond_0
    return-void
.end method
