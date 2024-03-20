.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-boolean v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->DEBUG:Z

    .line 13
    const-string v1, "DeviceFoldProvider"

    .line 15
    if-eqz v0, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "Hinge angle: "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, ", lastHingeAngle: "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, ", lastHingeAngleBeforeTransition: "

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    const-string v2, "DeviceFoldStateProvider#onHingeAngle"

    .line 56
    float-to-long v3, p1

    .line 58
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 59
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    .line 62
    cmpg-float v2, p1, v2

    .line 64
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x0

    .line 67
    if-gez v2, :cond_1

    .line 68
    move v2, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v2, v4

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    .line 73
    move-result v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    iget-object v5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 79
    if-nez v5, :cond_2

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v5

    .line 87
    if-eq v2, v5, :cond_3

    .line 88
    :goto_1
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    .line 90
    iput v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    .line 92
    :cond_3
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    .line 94
    cmpg-float v5, p1, v2

    .line 96
    if-gez v5, :cond_4

    .line 98
    move v5, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move v5, v4

    .line 102
    :goto_2
    sub-float v2, p1, v2

    .line 103
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 105
    move-result v2

    .line 108
    const/high16 v6, 0x40f00000    # 7.5f

    .line 109
    cmpl-float v2, v2, v6

    .line 111
    if-lez v2, :cond_5

    .line 113
    move v2, v3

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move v2, v4

    .line 117
    :goto_3
    const/high16 v6, 0x43340000    # 180.0f

    .line 118
    sub-float/2addr v6, p1

    .line 120
    const/high16 v7, 0x41700000    # 15.0f

    .line 121
    cmpg-float v6, v6, v7

    .line 123
    if-gez v6, :cond_6

    .line 125
    move v6, v3

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    move v6, v4

    .line 129
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 130
    if-nez v7, :cond_7

    .line 132
    goto :goto_5

    .line 134
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v7

    .line 138
    if-eq v7, v5, :cond_8

    .line 139
    :goto_5
    move v7, v3

    .line 141
    goto :goto_6

    .line 142
    :cond_8
    move v7, v4

    .line 143
    :goto_6
    iget-boolean v8, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    .line 144
    iget-object v9, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->context:Landroid/content/Context;

    .line 146
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object v9

    .line 151
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 152
    move-result-object v9

    .line 155
    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 156
    const/16 v10, 0x258

    .line 158
    if-le v9, v10, :cond_9

    .line 160
    move v9, v3

    .line 162
    goto :goto_7

    .line 163
    :cond_9
    move v9, v4

    .line 164
    :goto_7
    if-eqz v2, :cond_f

    .line 165
    if-eqz v7, :cond_f

    .line 167
    if-nez v6, :cond_f

    .line 169
    if-eqz v8, :cond_f

    .line 171
    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityTypeProvider:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 173
    iget-object v2, v2, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    .line 175
    const/4 v7, 0x0

    .line 177
    if-eqz v2, :cond_c

    .line 178
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    move-result v2

    .line 183
    iget-object v8, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->unfoldKeyguardVisibilityProvider:Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 189
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    move-result v8

    .line 194
    if-eqz v0, :cond_a

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    const-string v10, "isHomeActivity="

    .line 199
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    const-string v10, ", isOnKeyguard="

    .line 207
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_a
    if-nez v2, :cond_c

    .line 222
    if-eqz v8, :cond_b

    .line 224
    goto :goto_8

    .line 226
    :cond_b
    const/16 v0, 0x3c

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v7

    .line 232
    :cond_c
    :goto_8
    if-eqz v7, :cond_e

    .line 233
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 235
    move-result v0

    .line 238
    int-to-float v0, v0

    .line 239
    cmpg-float v0, p1, v0

    .line 240
    if-gez v0, :cond_d

    .line 242
    goto :goto_9

    .line 244
    :cond_d
    move v3, v4

    .line 245
    :cond_e
    :goto_9
    if-eqz v3, :cond_f

    .line 246
    if-eqz v9, :cond_f

    .line 248
    iget v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    .line 250
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(FI)V

    .line 252
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    .line 255
    move-result v0

    .line 258
    if-eqz v0, :cond_12

    .line 259
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    .line 261
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->handler:Landroid/os/Handler;

    .line 263
    if-eqz v6, :cond_10

    .line 265
    const/4 v2, 0x3

    .line 267
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(FI)V

    .line 268
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    goto :goto_a

    .line 274
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    .line 275
    move-result v2

    .line 278
    if-eqz v2, :cond_11

    .line 279
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    :cond_11
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->halfOpenedTimeoutMillis:I

    .line 284
    int-to-long v2, v2

    .line 286
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_12
    :goto_a
    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    .line 290
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    .line 292
    check-cast p0, Ljava/util/ArrayList;

    .line 294
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 296
    move-result-object p0

    .line 299
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    move-result v0

    .line 303
    if-eqz v0, :cond_13

    .line 304
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    move-result-object v0

    .line 309
    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    .line 310
    invoke-interface {v0, p1}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onHingeAngleUpdate(F)V

    .line 312
    goto :goto_b

    .line 315
    :cond_13
    return-void
    .line 316
.end method
