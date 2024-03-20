.class Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;
.super Ljava/lang/Object;
.source "MiuiHeadsetActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MiuiHeadsetActivity"

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fputmService(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V

    .line 85
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->layout_content:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 86
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->onServiceConnected()V

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    if-eqz v0, :cond_1

    .line 90
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onServiceConnected()V

    goto :goto_0

    .line 92
    :cond_1
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    if-eqz v0, :cond_2

    .line 93
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->onServiceConnected()V

    goto :goto_0

    .line 94
    :cond_2
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    if-eqz v0, :cond_3

    .line 95
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->onServiceConnected()V

    goto :goto_0

    .line 96
    :cond_3
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    if-eqz v0, :cond_4

    .line 97
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->onServiceConnected()V

    goto :goto_0

    .line 98
    :cond_4
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    if-eqz v0, :cond_5

    .line 99
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->onServiceConnected()V

    .line 103
    :cond_5
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportRegisterCallbackDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ro.hardware"

    .line 104
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fgetmCallBack(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity$MiuiHeadsetCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    iget-object v2, v2, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->registerCallbackDevice(Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fgetmCallBack(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity$MiuiHeadsetCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->register(Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;)V

    .line 109
    :goto_1
    instance-of p2, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    if-nez p2, :cond_7

    .line 110
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect the mma failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    const-string/jumbo p0, "onServiceConnected"

    .line 115
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "MiuiHeadsetActivity"

    const-string/jumbo p1, "service disconnected"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
