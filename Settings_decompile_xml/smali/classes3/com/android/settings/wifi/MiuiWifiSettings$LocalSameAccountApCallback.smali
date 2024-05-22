.class final Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalSameAccountApCallback"
.end annotation


# instance fields
.field private mWifiSettingsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/MiuiWifiSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 1

    .line 2418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2419
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onApConnectedStatusUpdate(ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0

    .line 2434
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/MiuiWifiSettings;

    if-eqz p0, :cond_0

    .line 2436
    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mapConnectedStatusUpdated(Lcom/android/settings/wifi/MiuiWifiSettings;ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    goto :goto_0

    .line 2438
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onApConnectedStatusUpdate: MiuiWifiSettings is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onApInfoUpdate(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0

    .line 2424
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/MiuiWifiSettings;

    if-eqz p0, :cond_0

    .line 2426
    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mrefreshVirtualApInfo(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    goto :goto_0

    .line 2428
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onApInfoUpdate: MiuiWifiSettings is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
