.class public final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/stylus/StylusManager$StylusCallback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1;->$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onStylusAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusBluetoothChargingStateChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusBluetoothConnected()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusBluetoothDisconnected()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusFirstUsed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1;->$context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isStylusEverUsed(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 12
    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onStylusRemoved()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStylusUsiBatteryStateChanged(ILandroid/hardware/BatteryState;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
