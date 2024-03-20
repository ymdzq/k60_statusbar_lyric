.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 846
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmBondState(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 847
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot start scanning since device is in bonding state."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 851
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 852
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->access$000(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0xa0

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 854
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 855
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 857
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_2

    .line 858
    check-cast p1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->removeAll()V

    .line 860
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->startScanning()V

    :cond_3
    :goto_0
    return-void
.end method
