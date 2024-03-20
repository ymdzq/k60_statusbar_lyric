.class Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "MiuiWifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectConfiguratorStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .locals 1

    const-string p1, "MiuiWifiDppAddDeviceFragment"

    const-string/jumbo v0, "success to share wifi"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fputmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/net/wifi/WifiManager;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fputmModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fputmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Z)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)V"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyConnectConfiguratorStatusCallback.onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiWifiDppAddDeviceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried channels: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 102
    array-length v2, p4

    if-lez v2, :cond_3

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Supported bands: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v0

    .line 104
    :goto_0
    array-length v4, p4

    if-ge v3, v4, :cond_2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p4, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$mgetResultIntent(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$mshowErrorUi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;ILandroid/content/Intent;Z)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    .line 0
    return-void
.end method
