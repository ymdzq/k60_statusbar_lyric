.class public final synthetic Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/bluetooth/BroadcastDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bluetooth/BroadcastDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const-string v1, "BroadcastDialog"

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 11
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mOutputPackageName:Ljava/lang/String;

    .line 15
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Landroid/view/View;Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 21
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 25
    sget-boolean p1, Lcom/android/systemui/bluetooth/BroadcastDialog;->DEBUG:Z

    .line 27
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string/jumbo p1, "startSwitchBroadcast"

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 40
    const v2, 0x7f1306ee    # @string/media_output_broadcast_starting 'Starting…'

    .line 42
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 48
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 54
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 56
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 58
    if-nez p1, :cond_1

    .line 60
    const-string p1, "The broadcast profile is null"

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move v0, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    .line 69
    iget-object v3, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 71
    const-string v4, "LocalBluetoothLeBroadcast"

    .line 73
    if-nez v3, :cond_2

    .line 75
    const-string p1, "The BluetoothLeBroadcast is null when stopping the broadcast."

    .line 77
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    const-string/jumbo v3, "stopBroadcast()"

    .line 83
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 89
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V

    .line 91
    :goto_0
    if-nez v0, :cond_3

    .line 94
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 96
    const v0, 0x7f1306ed    # @string/media_output_broadcast_start_failed 'Can’t broadcast'

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 104
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialog;->refreshSwitchBroadcastButton()V

    .line 109
    :cond_3
    return-void

    .line 112
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 113
    sget-boolean p1, Lcom/android/systemui/bluetooth/BroadcastDialog;->DEBUG:Z

    .line 115
    if-eqz p1, :cond_4

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const-string p1, "BroadcastDialog dismiss."

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method
