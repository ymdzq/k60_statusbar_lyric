.class Lcom/android/settings/wifi/MiuiWifiSettings$18;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->addVirtualAPPrefForEasyTether(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$order:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2426
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$18;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$18;->val$order:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2430
    :try_start_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2431
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$18;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$18;->val$order:I

    invoke-static {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$maddVirtualAPPrefForEasyTetherInternal(Lcom/android/settings/wifi/MiuiWifiSettings;I)V

    .line 2432
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 2434
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
