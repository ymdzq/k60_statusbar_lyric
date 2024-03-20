.class final Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;
.super Ljava/lang/Object;
.source "BroadcastProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BroadcastProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BroadcastProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BroadcastProfile;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;->this$0:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BroadcastProfile;Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;-><init>(Lcom/android/settingslib/bluetooth/BroadcastProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 72
    invoke-static {}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->-$$Nest$sfgetV()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BroadcastProfile"

    const-string v0, "Bluetooth Broadcast service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;->this$0:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    check-cast p2, Landroid/bluetooth/BluetoothBroadcast;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->-$$Nest$fputmService(Lcom/android/settingslib/bluetooth/BroadcastProfile;Landroid/bluetooth/BluetoothBroadcast;)V

    .line 74
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;->this$0:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/BroadcastProfile;Z)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 80
    invoke-static {}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->-$$Nest$sfgetV()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BroadcastProfile"

    const-string v0, "Bluetooth Broadcast service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BroadcastProfile$BroadcastListener;->this$0:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/BroadcastProfile;Z)V

    :cond_1
    return-void
.end method
