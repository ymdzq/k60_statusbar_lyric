.class public final synthetic Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->$r8$lambda$0NfNoZg2nog28aiOB24ZUVhMfLQ(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
