.class Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;
.super Ljava/lang/Object;
.source "MiuiAddDeviceToBlockList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->updateStaConnectStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$mgetTetherConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fputmConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Ljava/util/List;)V

    .line 390
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$maddDevicesPreference(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    :cond_1
    return-void
.end method
