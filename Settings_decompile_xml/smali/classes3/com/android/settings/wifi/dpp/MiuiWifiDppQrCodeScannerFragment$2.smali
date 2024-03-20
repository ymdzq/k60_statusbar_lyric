.class Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$2;
.super Landroid/os/SimpleClock;
.source "MiuiWifiDppQrCodeScannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Ljava/time/ZoneId;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$2;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
