.class public final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 16
    goto/16 :goto_5

    .line 19
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 21
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRestrictState:Z

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 41
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothRestrictStateChange()V

    .line 43
    goto :goto_0

    .line 46
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 47
    iget p1, p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBluetoothBattery:I

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p0

    .line 56
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 67
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothBatteryChange(I)V

    .line 69
    goto :goto_1

    .line 72
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 73
    iget p1, p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mInoutState:I

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 82
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 93
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothInoutStateChange(I)V

    .line 95
    goto :goto_2

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 99
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    goto :goto_5

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 113
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_5

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object p1

    .line 124
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 134
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 137
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 139
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange()V

    .line 141
    goto :goto_3

    .line 144
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    move-result-object p0

    .line 150
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result p1

    .line 154
    if-eqz p1, :cond_4

    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    move-result-object p1

    .line 160
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 161
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    .line 163
    goto :goto_4

    .line 166
    :cond_4
    :goto_5
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 168
.end method
