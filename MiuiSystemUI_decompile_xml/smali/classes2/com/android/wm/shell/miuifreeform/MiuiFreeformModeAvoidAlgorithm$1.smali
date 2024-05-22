.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;


# direct methods
.method public static synthetic $r8$lambda$bzJrATmha6lZWRK4f7Odrr4bpsA(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->lambda$onChange$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method

.method private avoidMiniForSidebarChanged()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$mignoreAdjustBoundsForSidebar(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 11
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$mgetSidebarLineRects(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Ljava/util/ArrayList;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_6

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " mSideBarObserver onChange currSideBarBounds: "

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    const-string v2, "MiuiFreeformModeAvoidAlgorithm"

    .line 37
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v2, Landroid/util/ArraySet;

    .line 47
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 65
    check-cast v3, Landroid/graphics/Rect;

    .line 66
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 68
    invoke-static {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$mexpandSidebarRect(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Landroid/graphics/Rect;)V

    .line 70
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 73
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 75
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 79
    move-result-object v4

    .line 82
    const/4 v5, 0x0

    .line 83
    move v6, v5

    .line 84
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v7

    .line 88
    if-ge v6, v7, :cond_1

    .line 89
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v7

    .line 100
    iget-object v8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 101
    invoke-static {v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 103
    move-result-object v8

    .line 106
    invoke-virtual {v8, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 107
    move-result-object v7

    .line 110
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledBounds()Landroid/graphics/Rect;

    .line 111
    move-result-object v8

    .line 114
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 115
    move-result v9

    .line 118
    if-eqz v9, :cond_3

    .line 119
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 121
    move-result-object v9

    .line 124
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    iget-boolean v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 127
    if-eqz v9, :cond_3

    .line 129
    invoke-static {v8, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 131
    move-result v9

    .line 134
    if-eqz v9, :cond_3

    .line 135
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isEnteringMini()Z

    .line 137
    move-result v9

    .line 140
    if-nez v9, :cond_3

    .line 141
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 146
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 149
    invoke-static {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$fgetmMiuiFreeformModeDisplayInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 151
    move-result-object v9

    .line 154
    const/16 v10, 0x14

    .line 155
    invoke-virtual {v9, v10, v10, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 157
    move-result-object v9

    .line 160
    new-instance v10, Landroid/graphics/Rect;

    .line 161
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 163
    move-result-object v11

    .line 166
    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 167
    iget-object v11, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 170
    invoke-virtual {v11, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 172
    move-result-object v8

    .line 175
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 176
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 178
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 180
    invoke-virtual {v7, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 183
    iget-object v8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 186
    invoke-virtual {v8, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->avoidForActiveMiniTask(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$AvoidResult;

    .line 188
    move-result-object v7

    .line 191
    if-eqz v7, :cond_3

    .line 192
    iget-object v8, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$AvoidResult;->combination:Ljava/util/Map;

    .line 194
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 196
    move-result-object v8

    .line 199
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object v8

    .line 203
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v9

    .line 207
    if-eqz v9, :cond_3

    .line 208
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v9

    .line 213
    check-cast v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 214
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseBound()V

    .line 216
    new-instance v10, Landroid/graphics/Rect;

    .line 219
    iget-object v11, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$AvoidResult;->combination:Ljava/util/Map;

    .line 221
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object v11

    .line 226
    check-cast v11, Landroid/graphics/Rect;

    .line 227
    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 229
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 232
    move-result-object v11

    .line 235
    iget v12, v10, Landroid/graphics/Rect;->left:I

    .line 236
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 238
    invoke-virtual {v11, v12, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 240
    invoke-virtual {v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 243
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 246
    move-result v10

    .line 249
    if-nez v10, :cond_2

    .line 250
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 252
    goto :goto_1

    .line 255
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 260
    move-result-object v0

    .line 263
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    move-result v1

    .line 267
    const/16 v3, 0xc

    .line 268
    if-eqz v1, :cond_5

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    move-result-object v1

    .line 275
    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 276
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 278
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 280
    move-result-object v4

    .line 283
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 284
    move-result-object v4

    .line 287
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 288
    move-result-object v4

    .line 291
    invoke-virtual {v4, v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 292
    goto :goto_2

    .line 295
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 296
    move-result-object v0

    .line 299
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    move-result v1

    .line 303
    if-eqz v1, :cond_6

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    move-result-object v1

    .line 309
    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 310
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 312
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 314
    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 318
    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 322
    move-result-object v2

    .line 325
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 326
    goto :goto_3

    .line 329
    :cond_6
    return-void
    .line 330
.end method

.method private synthetic lambda$onChange$0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->avoidMiniForSidebarChanged()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 5
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 7
    move-result-object p1

    .line 10
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm$1;)V

    .line 13
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 16
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    return-void
    .line 21
.end method
