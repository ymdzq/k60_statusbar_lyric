.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSplitLayout(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 14
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mgetLeftOrTopStageBounds(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 16
    move-result-object v12

    .line 19
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mgetRightOrBottomStageBounds(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 22
    move-result-object v13

    .line 25
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 26
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getLeftOrTopStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    move-result-object v14

    .line 31
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 32
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRightOrBottomStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v15

    .line 37
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v4, "sendSoScStateChanged rootBounds:"

    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v4, " leftOrTopStageBounds:"

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v4, " rightOrBottomStageBounds:"

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v4, " mSoScState:"

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 74
    invoke-static {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSoScState(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)I

    .line 76
    move-result v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, " \n  mLeftOrTopTopTaskInfo:"

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 88
    invoke-static {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmLeftOrTopTopTaskInfo(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v4, " -> "

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v5, " \n  mRightOrBottomTopTaskInfo:"

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 110
    invoke-static {v5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmRightOrBottomTopTaskInfo(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    move-result-object v5

    .line 115
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v4, " \n  mMinimized:"

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 130
    invoke-static {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimized(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 132
    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v4, " mMinimizedPostion:"

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 144
    invoke-static {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimizedPostion(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)I

    .line 146
    move-result v4

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v4, " mMinimizedSize:"

    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 158
    invoke-static {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimizedSize(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)I

    .line 160
    move-result v4

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 170
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 174
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmCurRootBounds(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 176
    move-result-object v2

    .line 179
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 183
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmCurLTBounds(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 185
    move-result-object v2

    .line 188
    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 192
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmCurRBBounds(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Rect;

    .line 194
    move-result-object v2

    .line 197
    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 201
    invoke-static {v2, v14}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmLeftOrTopTopTaskInfo(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 203
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 206
    invoke-static {v2, v15}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmRightOrBottomTopTaskInfo(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 208
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 211
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mclearSoSoInfoIfNeed(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 213
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 216
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmListeners(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Ljava/util/List;

    .line 218
    move-result-object v2

    .line 221
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 222
    move-result v2

    .line 225
    add-int/lit8 v2, v2, -0x1

    .line 226
    move v11, v2

    .line 228
    :goto_0
    if-ltz v11, :cond_0

    .line 229
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 231
    invoke-static {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmListeners(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Ljava/util/List;

    .line 233
    move-result-object v2

    .line 236
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v2

    .line 240
    check-cast v2, Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 241
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 243
    invoke-static {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSoScState(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)I

    .line 245
    move-result v6

    .line 248
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 249
    invoke-static {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimized(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 251
    move-result v9

    .line 254
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 255
    invoke-static {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimizedPostion(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)I

    .line 257
    move-result v10

    .line 260
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$10;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 261
    invoke-static {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimizedSize(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)I

    .line 263
    move-result v16

    .line 266
    move-object v3, v1

    .line 267
    move-object v4, v12

    .line 268
    move-object v5, v13

    .line 269
    move-object v7, v14

    .line 270
    move-object v8, v15

    .line 271
    move/from16 v17, v11

    .line 272
    move/from16 v11, v16

    .line 274
    invoke-interface/range {v2 .. v11}, Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;->onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    .line 276
    add-int/lit8 v11, v17, -0x1

    .line 279
    goto :goto_0

    .line 281
    :cond_0
    return-void
    .line 282
.end method
