.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;
.super Ljava/lang/Object;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "MiuiHeadsetFitnessFragment"

    const-string/jumbo v0, "onA2dpServiceConnected()"

    .line 798
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 800
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/bluetooth/BluetoothA2dp;)V

    .line 801
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "MiuiHeadsetFitnessFragment"

    const-string/jumbo v0, "onA2dpServiceDisconnected()"

    .line 806
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 808
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    .line 809
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
