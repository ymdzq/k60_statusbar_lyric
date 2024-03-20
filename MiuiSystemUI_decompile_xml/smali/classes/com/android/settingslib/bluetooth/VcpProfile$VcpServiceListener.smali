.class public final Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/VcpProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/VcpProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 2
    check-cast p2, Landroid/bluetooth/BluetoothVcp;

    .line 4
    iput-object p2, p1, Lcom/android/settingslib/bluetooth/VcpProfile;->mService:Landroid/bluetooth/BluetoothVcp;

    .line 6
    const-string p1, "VcpProfile"

    .line 8
    const-string p2, "Bluetooth service Connected"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 15
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mIsProfileReady:Z

    .line 18
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 20
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 22
    return-void
    .line 25
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 1
    const-string p1, "VcpProfile"

    .line 2
    const-string v0, "Bluetooth service Disconnected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VcpProfile$VcpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 9
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/VcpProfile;->mIsProfileReady:Z

    .line 12
    return-void
    .line 14
.end method
