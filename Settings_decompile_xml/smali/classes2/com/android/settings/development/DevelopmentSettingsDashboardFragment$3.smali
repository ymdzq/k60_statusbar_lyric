.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "DevSettingsDashboard"

    const-string v0, "Bluetooth le audio service connected"

    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {p1, p2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fputmBroadcastService(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmPreferenceControllers(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 208
    instance-of v0, p2, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    if-eqz v0, :cond_0

    .line 209
    check-cast p2, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmBroadcastService(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothLeBroadcast;

    move-result-object p0

    .line 210
    invoke-virtual {p2, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothLeBroadcast;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "DevSettingsDashboard"

    const-string v0, "Bluetooth le audio service disconnected"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fputmBroadcastService(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmPreferenceControllers(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 220
    instance-of v0, p1, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    if-eqz v0, :cond_0

    .line 221
    check-cast p1, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    .line 222
    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->onBluetoothServiceDisconnected()V

    :cond_1
    return-void
.end method
