.class public final Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget v3, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->$r8$classId:I

    .line 8
    const-string v4, "com.android.systemui"

    .line 10
    const-string v5, "feature"

    .line 12
    const-string/jumbo v6, "statusbar"

    .line 14
    iget-object v7, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;

    .line 17
    const-string v8, "Invalid command name "

    .line 19
    const-string/jumbo v9, "useAppIcon=false"

    .line 21
    const-string v10, "id"

    .line 24
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x2

    .line 27
    const/4 v13, 0x1

    .line 28
    packed-switch v3, :pswitch_data_0

    .line 29
    goto/16 :goto_7

    .line 32
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 34
    move-result v3

    .line 37
    if-ge v3, v12, :cond_0

    .line 38
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->help(Ljava/io/PrintWriter;)V

    .line 40
    goto/16 :goto_6

    .line 43
    :cond_0
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 57
    move-result v14

    .line 60
    if-ne v14, v12, :cond_1

    .line 61
    move v12, v13

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 65
    move-result v14

    .line 68
    invoke-interface {v2, v12, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 69
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v2

    .line 76
    move v12, v13

    .line 77
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v14

    .line 81
    if-eqz v14, :cond_5

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v14

    .line 87
    check-cast v14, Ljava/lang/String;

    .line 88
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v15

    .line 93
    if-eqz v15, :cond_2

    .line 94
    move v13, v11

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string/jumbo v15, "showUndo=false"

    .line 98
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    move-result v15

    .line 104
    if-eqz v15, :cond_3

    .line 105
    move v12, v11

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v15, 0x3

    .line 109
    invoke-virtual {v14, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    move-result-object v11

    .line 113
    const-string v15, "id="

    .line 114
    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v11

    .line 119
    if-eqz v11, :cond_4

    .line 120
    const/4 v11, 0x3

    .line 122
    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 126
    :cond_4
    :goto_1
    const/4 v11, 0x0

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :goto_2
    :try_start_0
    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {v3}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    .line 134
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getStateInt()I

    .line 138
    move-result v2

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v2, v7, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->context:Landroid/content/Context;

    .line 146
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    move-result-object v2

    .line 151
    check-cast v2, Landroid/app/StatusBarManager;

    .line 152
    new-instance v3, Landroid/media/MediaRoute2Info$Builder;

    .line 154
    invoke-direct {v3, v10, v0}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v3, v5}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 159
    move-result-object v0

    .line 162
    if-eqz v13, :cond_6

    .line 163
    invoke-virtual {v0, v4}, Landroid/media/MediaRoute2Info$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 165
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 168
    move-result v3

    .line 171
    const/4 v4, 0x4

    .line 172
    if-eq v3, v4, :cond_8

    .line 173
    const/4 v4, 0x5

    .line 175
    if-ne v3, v4, :cond_7

    .line 176
    goto :goto_3

    .line 178
    :cond_7
    const/4 v3, 0x0

    .line 179
    goto :goto_4

    .line 180
    :cond_8
    :goto_3
    const/4 v3, 0x1

    .line 181
    :goto_4
    if-eqz v3, :cond_9

    .line 182
    if-eqz v12, :cond_9

    .line 184
    new-instance v3, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand$execute$1;

    .line 186
    invoke-direct {v3, v1}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand$execute$1;-><init>(Ljava/lang/Integer;)V

    .line 188
    iget-object v4, v7, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 191
    goto :goto_5

    .line 193
    :cond_9
    const/4 v3, 0x0

    .line 194
    const/4 v4, 0x0

    .line 195
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 196
    move-result v1

    .line 199
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 200
    move-result-object v0

    .line 203
    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/app/StatusBarManager;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 204
    goto :goto_6

    .line 207
    :catch_0
    invoke-static {v8, v3, v1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 208
    :goto_6
    return-void

    .line 211
    :goto_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 212
    move-result v3

    .line 215
    if-eqz v3, :cond_a

    .line 216
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->help(Ljava/io/PrintWriter;)V

    .line 218
    goto :goto_9

    .line 221
    :cond_a
    const/4 v0, 0x0

    .line 222
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v3

    .line 226
    check-cast v3, Ljava/lang/String;

    .line 227
    :try_start_1
    sget-object v11, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->Companion:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;

    .line 229
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    invoke-static {v3}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    .line 234
    move-result-object v11

    .line 237
    invoke-virtual {v11}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->getStateInt()I

    .line 238
    move-result v11

    .line 241
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    iget-object v3, v7, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->context:Landroid/content/Context;

    .line 246
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 251
    check-cast v3, Landroid/app/StatusBarManager;

    .line 252
    new-instance v6, Landroid/media/MediaRoute2Info$Builder;

    .line 254
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 256
    move-result v7

    .line 259
    const/4 v8, 0x3

    .line 260
    if-lt v7, v8, :cond_b

    .line 261
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object v7

    .line 266
    move-object v10, v7

    .line 267
    check-cast v10, Ljava/lang/String;

    .line 268
    :cond_b
    const-string v7, "Test Name"

    .line 270
    invoke-direct {v6, v10, v7}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v6, v5}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 275
    move-result-object v5

    .line 278
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 279
    move-result v6

    .line 282
    if-lt v6, v12, :cond_c

    .line 283
    const/4 v6, 0x1

    .line 285
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v2

    .line 289
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    move-result v2

    .line 293
    if-nez v2, :cond_d

    .line 294
    move v0, v6

    .line 296
    goto :goto_8

    .line 297
    :cond_c
    const/4 v0, 0x1

    .line 298
    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    .line 299
    invoke-virtual {v5, v4}, Landroid/media/MediaRoute2Info$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 301
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 304
    move-result v0

    .line 307
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 308
    move-result-object v1

    .line 311
    const/4 v2, 0x0

    .line 312
    invoke-virtual {v3, v0, v1, v2, v2}, Landroid/app/StatusBarManager;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 313
    goto :goto_9

    .line 316
    :catch_1
    invoke-static {v8, v3, v1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 317
    :goto_9
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 322
.end method

.method public final help(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    const-string p0, "Usage: adb shell cmd statusbar media-ttt-chip-sender <deviceName> <chipState> useAppIcon=[true|false] id=<id> showUndo=[true|false]"

    .line 8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string p0, "Note: useAppIcon, id, and showUndo are optional additional commands."

    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    return-void

    .line 18
    :goto_0
    const-string p0, "Usage: adb shell cmd statusbar media-ttt-chip-receiver <chipState> useAppIcon=[true|false] <id>"

    .line 19
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
