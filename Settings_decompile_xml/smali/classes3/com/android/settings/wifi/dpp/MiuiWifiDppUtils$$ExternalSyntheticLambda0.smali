.class public final synthetic Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

.field public final synthetic f$1:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->$r8$lambda$PJ1D-r3_buyR2DiFOPAs_Ux7f3k(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;Ljava/lang/Integer;)V

    return-void
.end method
