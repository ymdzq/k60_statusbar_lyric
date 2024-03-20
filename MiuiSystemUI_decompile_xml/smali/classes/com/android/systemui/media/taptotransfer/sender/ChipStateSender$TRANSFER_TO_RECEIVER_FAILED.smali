.class final Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_FAILED;
.super Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const-string v1, "TRANSFER_TO_RECEIVER_FAILED"

    .line 2
    const/4 v2, 0x6

    .line 4
    const/4 v3, 0x6

    .line 5
    sget-object v4, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_FAILED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    .line 6
    const v0, 0x7f130720    # @string/media_transfer_failed 'Something went wrong. Try again.'

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v5

    .line 14
    sget-object v6, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->FAILED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 15
    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Error;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Error;

    .line 17
    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;-><init>(Ljava/lang/String;IILcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;)V

    .line 20
    return-void
    .line 23
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
