.class Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;
.super Ljava/lang/Object;
.source "MiuiTetherDeviceSettings.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiTetherDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientsChanged(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetmLock(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fputmClients(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/Collection;)V

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetisUpdateOnceNeeded(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fputisUpdateOnceNeeded(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Z)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$mupdateStaConnectStatus(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 113
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
