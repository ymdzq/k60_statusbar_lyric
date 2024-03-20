.class Lcom/android/settings/MiuiTetherSettings$BluetoothListener;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothListener"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/MiuiTetherSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 1

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings$BluetoothListener;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 1499
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$BluetoothListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiTetherSettings;

    if-eqz p0, :cond_1

    .line 1501
    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmBluetoothPan(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1503
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1504
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1508
    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmCm(Lcom/android/settings/MiuiTetherSettings;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmTetherChoice(Lcom/android/settings/MiuiTetherSettings;)I

    move-result p2

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmStartTetheringCallback(Lcom/android/settings/MiuiTetherSettings;)Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 1510
    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 1512
    :cond_0
    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 1516
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$BluetoothListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1517
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$BluetoothListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmBluetoothPan(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
