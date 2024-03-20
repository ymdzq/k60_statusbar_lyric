.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->Companion:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->values()[Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    .line 12
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    aget-object v4, v0, v3

    .line 21
    invoke-virtual {v4}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->getStateInt()I

    .line 23
    move-result v5

    .line 26
    if-ne v5, p1, :cond_0

    .line 27
    const/4 v5, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v5, v2

    .line 31
    :goto_1
    if-eqz v5, :cond_1

    .line 32
    goto :goto_2

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 38
    const-string v1, "Array contains no element matching the predicate."

    .line 40
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "Could not find requested state "

    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 60
    const-string v2, "ChipStateReceiver"

    .line 61
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    const/4 v4, 0x0

    .line 66
    :goto_2
    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    :cond_3
    const-string v0, "Invalid"

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 77
    check-cast v1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverLogger;

    .line 79
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 88
    iget-object v5, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 89
    const-string v6, "MediaTttReceiver"

    .line 91
    invoke-static {v5, v6, v0, v2, v3}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChange(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-nez v4, :cond_5

    .line 96
    iget-object p0, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 98
    invoke-static {p0, v6, p1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChangeError(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;I)V

    .line 100
    goto :goto_3

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->instanceMap:Ljava/util/Map;

    .line 104
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 109
    move-object v1, p1

    .line 110
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 111
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/internal/logging/InstanceId;

    .line 117
    if-nez v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->temporaryViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    .line 121
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 125
    move-result-object v0

    .line 128
    :cond_6
    move-object v10, v0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;

    .line 130
    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 132
    invoke-virtual {v4}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->getUiEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 134
    move-result-object v1

    .line 137
    invoke-interface {v0, v1, v10}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 138
    sget-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->CLOSE_TO_SENDER:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    .line 141
    if-eq v4, v0, :cond_7

    .line 143
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 148
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeView(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    goto :goto_3

    .line 156
    :cond_7
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 160
    invoke-interface {p1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    if-nez p3, :cond_8

    .line 164
    new-instance p1, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;

    .line 166
    const/4 v7, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 169
    move-result-object v9

    .line 172
    move-object v5, p1

    .line 173
    move-object v6, p2

    .line 174
    move-object v8, p4

    .line 175
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;-><init>(Landroid/media/MediaRoute2Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    .line 179
    goto :goto_3

    .line 182
    :cond_8
    new-instance p1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;

    .line 183
    invoke-direct {p1, p0, p2, p4, v10}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;-><init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/media/MediaRoute2Info;Ljava/lang/CharSequence;Lcom/android/internal/logging/InstanceId;)V

    .line 185
    iget-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->mainHandler:Landroid/os/Handler;

    .line 188
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    .line 190
    invoke-virtual {p3, p0, p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 192
    :goto_3
    return-void
    .line 195
.end method
