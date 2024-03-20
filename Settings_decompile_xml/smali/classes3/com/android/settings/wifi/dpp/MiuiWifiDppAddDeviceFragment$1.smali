.class Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$1;
.super Ljava/lang/Object;
.source "MiuiWifiDppAddDeviceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->DelayShareWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetMSG_CLICK_SHARE_WIFI_BUTTON(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I

    move-result p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
