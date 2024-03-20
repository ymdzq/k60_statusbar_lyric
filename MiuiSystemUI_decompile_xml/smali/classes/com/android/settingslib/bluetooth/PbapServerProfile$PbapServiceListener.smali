.class public final Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

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
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 2
    check-cast p2, Landroid/bluetooth/BluetoothPbap;

    .line 4
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    .line 9
    return-void
    .line 11
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    .line 5
    return-void
    .line 7
.end method
