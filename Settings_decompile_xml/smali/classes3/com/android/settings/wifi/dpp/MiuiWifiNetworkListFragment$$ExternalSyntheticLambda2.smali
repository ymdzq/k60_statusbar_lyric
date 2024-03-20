.class public final synthetic Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->$r8$lambda$6HqRLbu9rFZeRziPT58aVJFg0xY(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    return-object p0
.end method
