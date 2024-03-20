.class final Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference$ServiceMessageHandler;
.super Landroid/os/Handler;
.source "MiuiOnLineBluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;Landroid/os/Looper;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference$ServiceMessageHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference$ServiceMessageHandler;-><init>(Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 176
    iget p1, p1, Landroid/os/Message;->what:I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "what= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiOnLineBluetoothDevicePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;->BondFailed()V

    :goto_0
    return-void
.end method
