.class Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;
.super Ljava/lang/Object;
.source "MiuiTetherDeviceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->updateStaConnectStatus()V
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

    .line 369
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$mgetTetherConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fputmConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/List;)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 379
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$maddDevicesPreference(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    :cond_1
    return-void
.end method
