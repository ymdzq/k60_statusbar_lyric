.class public final synthetic Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 8
    instance-of p0, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 10
    if-nez p0, :cond_1

    .line 12
    instance-of p0, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0

    .line 22
    :pswitch_1
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 23
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_2
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 30
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    .line 32
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 36
    move-result-object p0

    .line 39
    new-instance p1, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;

    .line 40
    const/4 v0, 0x3

    .line 42
    invoke-direct {p1, v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 43
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 46
    move-result p0

    .line 49
    return p0

    .line 50
    :pswitch_3
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 51
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    .line 53
    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 57
    move-result-object p0

    .line 60
    new-instance p1, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;

    .line 61
    const/4 v0, 0x4

    .line 63
    invoke-direct {p1, v0}, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 64
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 67
    move-result p0

    .line 70
    return p0

    .line 71
    :goto_2
    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 72
    instance-of p0, p1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 74
    return p0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 78
.end method
