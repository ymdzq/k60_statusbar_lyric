.class public final synthetic Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->$r8$lambda$NhBhyIxXDNZMBBDXzj7wWmOMya8(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    return p0
.end method
