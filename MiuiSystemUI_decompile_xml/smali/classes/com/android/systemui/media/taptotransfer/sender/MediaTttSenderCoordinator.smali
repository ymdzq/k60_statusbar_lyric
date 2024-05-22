.class public final Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

.field public final context:Landroid/content/Context;

.field public final defaultTimeout:I

.field public final displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

.field public final mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

.field public final stateMap:Ljava/util/Map;

.field public final uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/CommandQueue;Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;Lcom/android/systemui/media/taptotransfer/MediaTttFlags;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->context:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    .line 17
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 22
    const p2, 0x7f0b0068    # @integer/heads_up_notification_decay '5000'

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->defaultTimeout:I

    .line 30
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 32
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    .line 37
    new-instance p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

    .line 39
    invoke-direct {p1, p0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

    .line 44
    new-instance p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    .line 46
    invoke-direct {p1, p0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    .line 51
    return-void
    .line 53
.end method

.method public static final access$updateMediaTapToTransferSenderDisplay(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 20

    .line 1
    move-object/from16 v2, p0

    .line 2
    move/from16 v1, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->values()[Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    .line 17
    move-result-object v0

    .line 20
    array-length v6, v0

    .line 21
    move v7, v4

    .line 22
    :goto_0
    if-ge v7, v6, :cond_2

    .line 23
    aget-object v8, v0, v7

    .line 25
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getStateInt()I

    .line 27
    move-result v9

    .line 30
    if-ne v9, v1, :cond_0

    .line 31
    move v9, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v9, v4

    .line 35
    :goto_1
    if-eqz v9, :cond_1

    .line 36
    goto :goto_2

    .line 38
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 42
    const-string v6, "Array contains no element matching the predicate."

    .line 44
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    const-string v7, "Could not find requested state "

    .line 53
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 64
    const-string v7, "ChipStateSender"

    .line 65
    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    move-object v8, v5

    .line 70
    :goto_2
    if-eqz v8, :cond_3

    .line 71
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    :cond_3
    const-string v0, "Invalid"

    .line 79
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 88
    iget-object v9, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    .line 89
    iget-object v10, v9, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 91
    const-string v11, "MediaTttSender"

    .line 93
    invoke-static {v10, v11, v0, v6, v7}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChange(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, v9, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 98
    if-nez v8, :cond_5

    .line 100
    invoke-static {v0, v11, v1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChangeError(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;I)V

    .line 102
    goto/16 :goto_b

    .line 105
    :cond_5
    iget-object v1, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 112
    move-object v7, v1

    .line 113
    check-cast v7, Ljava/util/LinkedHashMap;

    .line 114
    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v6

    .line 119
    check-cast v6, Lkotlin/Pair;

    .line 120
    if-eqz v6, :cond_6

    .line 122
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 124
    move-result-object v6

    .line 127
    check-cast v6, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    .line 128
    goto :goto_3

    .line 130
    :cond_6
    move-object v6, v5

    .line 131
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 132
    move-result-object v10

    .line 135
    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v7

    .line 139
    check-cast v7, Lkotlin/Pair;

    .line 140
    iget-object v10, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 142
    if-eqz v7, :cond_7

    .line 144
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 146
    move-result-object v7

    .line 149
    check-cast v7, Lcom/android/internal/logging/InstanceId;

    .line 150
    if-nez v7, :cond_8

    .line 152
    :cond_7
    iget-object v7, v10, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    .line 154
    iget-object v7, v7, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 156
    invoke-virtual {v7}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 158
    move-result-object v7

    .line 161
    :cond_8
    move-object v15, v7

    .line 162
    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    .line 163
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    if-nez v6, :cond_9

    .line 168
    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    .line 170
    invoke-virtual {v7, v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->isValidNextState(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z

    .line 172
    move-result v7

    .line 175
    goto :goto_4

    .line 176
    :cond_9
    if-ne v6, v8, :cond_a

    .line 177
    move v7, v3

    .line 179
    goto :goto_4

    .line 180
    :cond_a
    invoke-virtual {v6, v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->isValidNextState(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z

    .line 181
    move-result v7

    .line 184
    :goto_4
    const-string v12, "FAR_FROM_RECEIVER"

    .line 185
    if-nez v7, :cond_d

    .line 187
    if-eqz v6, :cond_c

    .line 189
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 194
    if-nez v1, :cond_b

    .line 195
    goto :goto_5

    .line 197
    :cond_b
    move-object v12, v1

    .line 198
    :cond_c
    :goto_5
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 202
    sget-object v2, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 203
    sget-object v3, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logInvalidStateTransitionError$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logInvalidStateTransitionError$2;

    .line 205
    invoke-virtual {v0, v11, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 207
    move-result-object v2

    .line 210
    invoke-interface {v2, v12}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 211
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 217
    goto/16 :goto_b

    .line 220
    :cond_d
    iget-object v7, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    .line 222
    iget-object v7, v7, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 224
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getUiEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 226
    move-result-object v13

    .line 229
    invoke-interface {v7, v13, v15}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 230
    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    .line 233
    if-ne v8, v7, :cond_11

    .line 235
    if-nez v6, :cond_e

    .line 237
    goto/16 :goto_b

    .line 239
    :cond_e
    invoke-virtual {v6}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 241
    move-result-object v1

    .line 244
    sget-object v3, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 245
    if-eq v1, v3, :cond_10

    .line 247
    invoke-virtual {v6}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 249
    move-result-object v1

    .line 252
    sget-object v3, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 253
    if-ne v1, v3, :cond_f

    .line 255
    goto :goto_6

    .line 257
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 261
    invoke-virtual {v2, v0, v12}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->removeIdFromStore(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 268
    invoke-virtual {v10, v0, v12}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeView(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    goto/16 :goto_b

    .line 272
    :cond_10
    :goto_6
    invoke-virtual {v6}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 274
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 278
    move-result-object v1

    .line 281
    const-string/jumbo v2, "transferStatus="

    .line 282
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 288
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 289
    sget-object v3, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logRemovalBypass$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logRemovalBypass$2;

    .line 291
    invoke-virtual {v0, v11, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 293
    move-result-object v2

    .line 296
    invoke-interface {v2, v12}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 297
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 303
    goto/16 :goto_b

    .line 306
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 308
    move-result-object v6

    .line 311
    new-instance v7, Lkotlin/Pair;

    .line 312
    invoke-direct {v7, v15, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 320
    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;

    .line 322
    invoke-virtual {v0, v11, v6, v7, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 324
    move-result-object v6

    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 331
    invoke-interface {v6, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 335
    iget-object v0, v10, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    .line 338
    iget-object v1, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    .line 340
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 349
    move-result-object v1

    .line 352
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 353
    move-result v1

    .line 356
    iget-object v6, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->context:Landroid/content/Context;

    .line 357
    if-eqz v1, :cond_12

    .line 359
    const v1, 0x7f13072b    # @string/media_ttt_default_device_type 'tablet'

    .line 361
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 364
    move-result-object v1

    .line 367
    goto :goto_7

    .line 368
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 369
    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 373
    move-result-object v1

    .line 376
    :goto_7
    new-instance v7, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;

    .line 377
    invoke-direct {v7, v9, v0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;Ljava/lang/String;)V

    .line 379
    invoke-static {v6, v0, v4, v7}, Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;->getIconInfoFromPackageName(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    .line 382
    move-result-object v0

    .line 385
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTimeoutLength()Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

    .line 386
    move-result-object v4

    .line 389
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 390
    move-result v4

    .line 393
    iget v7, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->defaultTimeout:I

    .line 394
    if-eqz v4, :cond_14

    .line 396
    if-ne v4, v3, :cond_13

    .line 398
    mul-int/lit8 v7, v7, 0x2

    .line 400
    goto :goto_8

    .line 402
    :cond_13
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 403
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 405
    throw v0

    .line 408
    :cond_14
    :goto_8
    move/from16 v17, v7

    .line 409
    new-instance v9, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 411
    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->toTintedIcon()Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 413
    move-result-object v13

    .line 416
    invoke-virtual {v8, v6, v1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getChipTextString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/common/shared/model/Text;

    .line 417
    move-result-object v14

    .line 420
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    .line 421
    move-result-object v0

    .line 424
    if-nez v0, :cond_15

    .line 425
    goto :goto_a

    .line 427
    :cond_15
    instance-of v1, v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Loading;

    .line 428
    if-eqz v1, :cond_16

    .line 430
    sget-object v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    .line 432
    :goto_9
    move-object v5, v0

    .line 434
    goto :goto_a

    .line 435
    :cond_16
    instance-of v1, v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Error;

    .line 436
    if-eqz v1, :cond_17

    .line 438
    sget-object v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;

    .line 440
    goto :goto_9

    .line 442
    :cond_17
    instance-of v0, v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    .line 443
    if-eqz v0, :cond_19

    .line 445
    if-eqz p3, :cond_18

    .line 447
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    .line 449
    move-result-object v0

    .line 452
    check-cast v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    .line 453
    iget-object v3, v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;->uiEventOnClick:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 455
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    .line 457
    move-result-object v0

    .line 460
    check-cast v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    .line 461
    iget v6, v0, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;->newState:I

    .line 463
    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;

    .line 465
    move-object v1, v0

    .line 467
    move-object/from16 v2, p0

    .line 468
    move-object v4, v15

    .line 470
    move-object/from16 v5, p3

    .line 471
    move-object/from16 v7, p2

    .line 473
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;ILandroid/media/MediaRoute2Info;)V

    .line 475
    new-instance v5, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 478
    new-instance v1, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 480
    const v2, 0x7f130728    # @string/media_transfer_undo 'Undo'

    .line 482
    invoke-direct {v1, v2}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    .line 485
    invoke-direct {v5, v1, v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;-><init>(Lcom/android/systemui/common/shared/model/Text$Resource;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;)V

    .line 488
    :cond_18
    :goto_a
    invoke-virtual {v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 491
    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->getVibrationEffect()Landroid/os/VibrationEffect;

    .line 495
    move-result-object v16

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 499
    move-result-object v18

    .line 502
    move-object v12, v9

    .line 503
    move-object v7, v15

    .line 504
    move-object v15, v5

    .line 505
    move-object/from16 v19, v7

    .line 506
    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;-><init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 508
    invoke-virtual {v10, v9}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    .line 511
    :goto_b
    return-void

    .line 514
    :cond_19
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 515
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 517
    throw v0
    .line 520
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "Current sender states:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    return-void
    .line 16
.end method

.method public final removeIdFromStore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMapRemoval$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMapRemoval$2;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    const-string v3, "MediaTttSender"

    .line 13
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v2

    .line 19
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 20
    invoke-interface {v2, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    iget-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;

    .line 34
    invoke-virtual {v0, v3, v1, p1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    invoke-interface {p1, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 56
    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    .line 60
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
    .line 65
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/ReleasedFlag;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 19
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
