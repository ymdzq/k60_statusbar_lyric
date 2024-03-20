.class Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalBtA2dpServiceListener"
.end annotation


# instance fields
.field private mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/BluetoothSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 1

    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;->mOuterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "BluetoothSettings"

    const-string/jumbo v0, "onServiceConnected()"

    .line 1250
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothSettings;

    if-eqz p0, :cond_0

    .line 1253
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mhandleServiceConnected(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothA2dp;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string v0, "BluetoothSettings"

    const-string/jumbo v1, "onServiceDisconnected()"

    .line 1259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothSettings;

    if-eqz p0, :cond_0

    .line 1262
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/BluetoothSettings;I)V

    :cond_0
    return-void
.end method
