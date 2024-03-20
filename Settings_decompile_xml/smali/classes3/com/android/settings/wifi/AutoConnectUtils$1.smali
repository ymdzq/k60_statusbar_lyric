.class Lcom/android/settings/wifi/AutoConnectUtils$1;
.super Landroid/database/ContentObserver;
.source "AutoConnectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AutoConnectUtils;->registerDisableWifiAutoConnectChangedObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AutoConnectUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AutoConnectUtils;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/wifi/AutoConnectUtils$1;->this$0:Lcom/android/settings/wifi/AutoConnectUtils;

    iput-object p3, p0, Lcom/android/settings/wifi/AutoConnectUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/android/settings/wifi/AutoConnectUtils$1;->this$0:Lcom/android/settings/wifi/AutoConnectUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/AutoConnectUtils;->-$$Nest$fgetmLock(Lcom/android/settings/wifi/AutoConnectUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/AutoConnectUtils$1;->this$0:Lcom/android/settings/wifi/AutoConnectUtils;

    iget-object p0, p0, Lcom/android/settings/wifi/AutoConnectUtils$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/AutoConnectUtils;->-$$Nest$fputmSsidSet(Lcom/android/settings/wifi/AutoConnectUtils;Ljava/util/HashSet;)V

    .line 71
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
