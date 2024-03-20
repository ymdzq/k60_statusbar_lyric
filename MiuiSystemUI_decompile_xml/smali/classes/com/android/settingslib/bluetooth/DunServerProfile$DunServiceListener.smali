.class public final Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/DunServerProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 1
    const-string p1, "DunServerProfile"

    .line 2
    const-string v0, "Bluetooth service connected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    .line 9
    check-cast p2, Landroid/bluetooth/BluetoothDun;

    .line 11
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    .line 13
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mIsProfileReady:Z

    .line 16
    return-void
    .line 18
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 1
    const-string p1, "DunServerProfile"

    .line 2
    const-string v0, "Bluetooth service disconnected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DunServerProfile;

    .line 9
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/DunServerProfile;->mIsProfileReady:Z

    .line 12
    return-void
    .line 14
.end method
