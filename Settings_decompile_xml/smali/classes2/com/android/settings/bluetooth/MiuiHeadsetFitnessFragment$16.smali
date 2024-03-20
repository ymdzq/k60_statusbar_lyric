.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;
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

    .line 775
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "MiuiHeadsetFitnessFragment"

    const-string/jumbo v0, "onHfpServiceConnected()"

    .line 778
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 780
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/bluetooth/BluetoothHeadset;)V

    .line 781
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

    const-string/jumbo v0, "onHfpServiceDisconnected()"

    .line 786
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 788
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    .line 789
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
