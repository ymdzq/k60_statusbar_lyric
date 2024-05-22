.class final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;->$packageName:Ljava/lang/String;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 4
    check-cast v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverLogger;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;->$packageName:Ljava/lang/String;

    .line 8
    const-string v1, "MediaTttReceiver"

    .line 10
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-static {v0, v1, p0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logPackageNotFound(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    return-object p0
    .line 19
.end method
