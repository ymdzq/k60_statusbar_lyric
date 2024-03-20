.class public Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;
.super Ljava/lang/Object;
.source "MiuiHeadsetBattery.java"


# instance fields
.field private BATTERY_CHARGE_FLAG:I

.field private BATTERY_VALUE_FLAG:I

.field private INVALID_BATTERY:I

.field private mBatteryCached:Ljava/lang/String;

.field private mBluetoothHfp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/bluetooth/BluetoothHeadset;",
            ">;"
        }
    .end annotation
.end field

.field private mBoxBattery:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceID:Ljava/lang/String;

.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftBattery:I

.field private mRightBattery:I

.field private mRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->BATTERY_CHARGE_FLAG:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetBATTERY_VALUE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->BATTERY_VALUE_FLAG:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->INVALID_BATTERY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoxBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBoxBattery:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceID(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDeviceID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mLeftBattery:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRightBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRightBattery:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBoxBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBoxBattery:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeftBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mLeftBattery:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRightBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRightBattery:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceHfpConnected(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->isDeviceHfpConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->updateBatteryIcon(IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mLeftBattery:I

    .line 40
    iput v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRightBattery:I

    .line 41
    iput v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBoxBattery:I

    const/16 v0, 0xff

    .line 42
    iput v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->INVALID_BATTERY:I

    const/16 v0, 0x80

    .line 43
    iput v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->BATTERY_CHARGE_FLAG:I

    const/16 v0, 0x7f

    .line 44
    iput v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->BATTERY_VALUE_FLAG:I

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBatteryCached:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRootView:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mContext:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDeviceID:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mContext:Ljava/lang/ref/WeakReference;

    .line 66
    :try_start_0
    check-cast p2, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDeviceID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRootView:Ljava/lang/ref/WeakReference;

    .line 71
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isDeviceHfpConnected()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 79
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetBattery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private updateBatteryIcon(IIZ)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;ZII)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUi()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mContext:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRootView:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 57
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public initBatteryDefault()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$2;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onBatteryChanged(III)V
    .locals 4

    const-string v0, " "

    const-string v1, "MiuiHeadsetBattery"

    .line 289
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBatteryChanged 2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mLeftBattery:I

    .line 292
    iput p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mRightBattery:I

    .line 293
    iput p3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBoxBattery:I

    .line 294
    invoke-direct {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->updateUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBatteryChanged(Ljava/lang/String;)V
    .locals 4

    const-string v0, "MiuiHeadsetBattery"

    .line 302
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatteryChanged 3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBatteryCached:Ljava/lang/String;

    const-string v1, "\\,"

    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-direct {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->isDeviceHfpConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mContext:Ljava/lang/ref/WeakReference;

    .line 307
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mDeviceID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 308
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 308
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onBatteryChanged(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBatteryChanged([Ljava/lang/String;)V
    .locals 8

    const-string v0, " "

    const-string v1, "MiuiHeadsetBattery"

    if-eqz p1, :cond_2

    .line 266
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v6, p1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBatteryChanged 1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 272
    :goto_0
    aget-object v2, p1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 273
    :goto_1
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    .line 275
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v2, p1, v4

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v5

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 275
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onBatteryChanged(III)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "onBatteryChanged 1 error message"

    .line 280
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 283
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public onDeviceDisconnectted()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onHfpChanged(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 1

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onHiddenChanged()V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->updateUi()V

    return-void
.end method
