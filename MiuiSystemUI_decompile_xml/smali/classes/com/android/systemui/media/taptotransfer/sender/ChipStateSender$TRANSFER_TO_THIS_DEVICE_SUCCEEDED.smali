.class final Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_SUCCEEDED;
.super Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const-string v1, "TRANSFER_TO_THIS_DEVICE_SUCCEEDED"

    .line 2
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x5

    .line 5
    sget-object v4, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    .line 6
    const v0, 0x7f130723    # @string/media_transfer_playing_this_device 'Playing on this phone'

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v5

    .line 14
    sget-object v6, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 15
    new-instance v7, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    .line 17
    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_THIS_DEVICE_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    .line 19
    const/4 v8, 0x2

    .line 21
    invoke-direct {v7, v0, v8}, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;I)V

    .line 22
    move-object v0, p0

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;-><init>(Ljava/lang/String;IILcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;)V

    .line 26
    return-void
    .line 29
.end method


# virtual methods
.method public final isValidNextState(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    .line 2
    invoke-static {p0, p1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;->access$stateIsStartOfSequence(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
