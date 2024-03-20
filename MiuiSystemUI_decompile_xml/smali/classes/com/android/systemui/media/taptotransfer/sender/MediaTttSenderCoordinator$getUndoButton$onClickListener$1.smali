.class public final Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $newState:I

.field public final synthetic $routeInfo:Landroid/media/MediaRoute2Info;

.field public final synthetic $uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

.field public final synthetic $undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;ILandroid/media/MediaRoute2Info;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    .line 8
    iput p5, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$newState:I

    .line 10
    iput-object p6, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_RECEIVER_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    .line 13
    if-eq v0, v2, :cond_1

    .line 15
    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_THIS_DEVICE_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    .line 17
    if-ne v0, v2, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 24
    :goto_1
    if-nez v2, :cond_2

    .line 25
    const-class p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    const-string v0, "Must pass an undo-specific UiEvent."

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_2

    .line 45
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 46
    invoke-interface {p1, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 48
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    .line 51
    invoke-interface {p1}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback;->onUndoTriggered()V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;

    .line 56
    iget v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$newState:I

    .line 58
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    .line 60
    const/4 v1, 0x0

    .line 62
    invoke-static {p1, v0, p0, v1}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->access$updateMediaTapToTransferSenderDisplay(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 63
    return-void
    .line 66
.end method
