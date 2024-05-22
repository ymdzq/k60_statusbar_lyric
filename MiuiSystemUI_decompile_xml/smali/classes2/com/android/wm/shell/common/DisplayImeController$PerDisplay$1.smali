.class public final Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCancelled:Z

.field public final mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

.field public final synthetic val$endY:F

.field public final synthetic val$hiddenY:F

.field public final synthetic val$isFloating:Z

.field public final synthetic val$shownY:F

.field public final synthetic val$startY:F

.field public final synthetic val$statsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic val$x:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/inputmethod/ImeTracker$Token;FFFFZF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$statsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 4
    iput p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$x:F

    .line 6
    iput p4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$startY:F

    .line 8
    iput p5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    .line 10
    iput p6, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    .line 12
    iput-boolean p7, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    .line 14
    iput p8, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    .line 16
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 18
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 22
    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 3
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$statsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "TOKEN_NONE"

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 26
    iget v1, v1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 33
    aput-object v1, v0, p1

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 38
    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    const/4 p1, 0x2

    .line 48
    aput-object p0, v0, p1

    .line 49
    const/16 p0, 0x7d0b

    .line 51
    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    :cond_1
    return-void
    .line 56
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 2
    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 4
    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 8
    move-result-object p1

    .line 11
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 18
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 20
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$x:F

    .line 24
    iget v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 31
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 33
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 35
    move-result-object v0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 44
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 46
    iget v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 48
    iget-boolean v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 50
    iget-object v3, v1, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 52
    monitor-enter v3

    .line 54
    :try_start_0
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v1

    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    .line 71
    invoke-interface {v4, v0, v2, p1}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 78
    iget v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 80
    const/4 v1, 0x0

    .line 82
    const/16 v2, 0x1b

    .line 83
    const/4 v3, 0x1

    .line 85
    const/4 v4, 0x2

    .line 86
    if-ne v0, v4, :cond_2

    .line 87
    iget-boolean v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 89
    if-nez v5, :cond_2

    .line 91
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 93
    move-result-object v0

    .line 96
    iget-object v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 97
    invoke-interface {v0, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 99
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 102
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 104
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 106
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 113
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    new-instance v0, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    .line 120
    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 122
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->removeImeSurface(Ljava/util/function/Consumer;)V

    .line 125
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 128
    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 132
    invoke-interface {v0, v2}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 134
    goto :goto_1

    .line 137
    :cond_2
    if-ne v0, v3, :cond_3

    .line 138
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 140
    if-nez v0, :cond_3

    .line 142
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 144
    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 148
    invoke-interface {v0, v2}, Landroid/view/inputmethod/ImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 150
    goto :goto_1

    .line 153
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mCancelled:Z

    .line 154
    if-eqz v0, :cond_4

    .line 156
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 158
    move-result-object v0

    .line 161
    iget-object v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 162
    invoke-interface {v0, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 164
    :cond_4
    :goto_1
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    .line 167
    if-eqz v0, :cond_6

    .line 169
    const/16 v0, 0x8

    .line 171
    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$statsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 175
    if-eqz v2, :cond_5

    .line 177
    invoke-virtual {v2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 182
    goto :goto_2

    .line 183
    :cond_5
    const-string v2, "TOKEN_NONE"

    .line 184
    :goto_2
    aput-object v2, v0, v1

    .line 186
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 188
    iget v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v2

    .line 195
    aput-object v2, v0, v3

    .line 196
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 198
    iget v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v2

    .line 205
    aput-object v2, v0, v4

    .line 206
    iget v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    .line 208
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object v2

    .line 213
    const/4 v3, 0x3

    .line 214
    aput-object v2, v0, v3

    .line 215
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 217
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 219
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 221
    move-result-object v2

    .line 224
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 228
    const/4 v3, 0x4

    .line 229
    aput-object v2, v0, v3

    .line 230
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 232
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 234
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    .line 236
    move-result-object v2

    .line 239
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    move-result-object v2

    .line 243
    const/4 v3, 0x5

    .line 244
    aput-object v2, v0, v3

    .line 245
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 247
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 249
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 251
    move-result-object v2

    .line 254
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    move-result-object v2

    .line 258
    const/4 v3, 0x6

    .line 259
    aput-object v2, v0, v3

    .line 260
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 262
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    .line 264
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    move-result-object v2

    .line 269
    const/4 v3, 0x7

    .line 270
    aput-object v2, v0, v3

    .line 271
    const/16 v2, 0x7d0a

    .line 273
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 275
    :cond_6
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 278
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 281
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 283
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 285
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 287
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 290
    iput v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 292
    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 295
    return-void

    .line 297
    :catchall_0
    move-exception p0

    .line 298
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    throw p0
    .line 300
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 4
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 6
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 8
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 14
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 16
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 18
    move-result-object v2

    .line 21
    iget v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$x:F

    .line 22
    iget v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$startY:F

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 26
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 29
    iget-object v3, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 31
    iget v9, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 33
    iget v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    .line 35
    iget-object v5, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    .line 37
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 39
    float-to-int v4, v4

    .line 41
    add-int v10, v5, v4

    .line 42
    iget v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    .line 44
    float-to-int v4, v4

    .line 46
    add-int v11, v5, v4

    .line 47
    iget v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 49
    const/4 v12, 0x1

    .line 51
    const/4 v13, 0x0

    .line 52
    if-ne v2, v12, :cond_0

    .line 53
    move v14, v12

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v14, v13

    .line 57
    :goto_0
    iget-boolean v15, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    .line 58
    iget-object v8, v3, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 60
    monitor-enter v8

    .line 62
    :try_start_0
    iget-object v2, v3, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v16

    .line 68
    move/from16 v17, v13

    .line 69
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    move v3, v9

    .line 83
    move v4, v10

    .line 84
    move v5, v11

    .line 85
    move v6, v14

    .line 86
    move v7, v15

    .line 87
    move-object/from16 v18, v8

    .line 88
    move-object v8, v1

    .line 90
    :try_start_1
    invoke-interface/range {v2 .. v8}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I

    .line 91
    move-result v2

    .line 94
    or-int v17, v17, v2

    .line 95
    move-object/from16 v8, v18

    .line 97
    goto :goto_1

    .line 99
    :cond_1
    move-object/from16 v18, v8

    .line 100
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 103
    and-int/lit8 v3, v17, 0x1

    .line 105
    if-nez v3, :cond_2

    .line 107
    move v3, v12

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move v3, v13

    .line 111
    :goto_2
    iput-boolean v3, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 112
    if-nez v3, :cond_4

    .line 114
    iget-boolean v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$isFloating:Z

    .line 116
    if-eqz v3, :cond_3

    .line 118
    goto :goto_3

    .line 120
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 121
    goto :goto_4

    .line 123
    :cond_4
    :goto_3
    iget v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$startY:F

    .line 124
    iget v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$hiddenY:F

    .line 126
    sub-float/2addr v3, v4

    .line 128
    iget v5, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$shownY:F

    .line 129
    sub-float/2addr v5, v4

    .line 131
    div-float/2addr v3, v5

    .line 132
    :goto_4
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 133
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 135
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 139
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 142
    iget v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 144
    if-ne v2, v12, :cond_5

    .line 146
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 148
    move-result-object v2

    .line 151
    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 152
    const/16 v5, 0x1b

    .line 154
    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 156
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 159
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 161
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 163
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 167
    :cond_5
    sget-boolean v2, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    .line 170
    if-eqz v2, :cond_7

    .line 172
    const/16 v2, 0xa

    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$statsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 178
    if-eqz v4, :cond_6

    .line 180
    invoke-virtual {v4}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    .line 182
    move-result-object v4

    .line 185
    goto :goto_5

    .line 186
    :cond_6
    const-string v4, "TOKEN_NONE"

    .line 187
    :goto_5
    aput-object v4, v2, v13

    .line 189
    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 191
    iget v4, v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v4

    .line 198
    aput-object v4, v2, v12

    .line 199
    iget-object v4, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 201
    iget v4, v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v4

    .line 208
    const/4 v5, 0x2

    .line 209
    aput-object v4, v2, v5

    .line 210
    const/4 v4, 0x3

    .line 212
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 213
    move-result-object v3

    .line 216
    aput-object v3, v2, v4

    .line 217
    iget v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$startY:F

    .line 219
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    move-result-object v3

    .line 224
    const/4 v4, 0x4

    .line 225
    aput-object v3, v2, v4

    .line 226
    iget v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->val$endY:F

    .line 228
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 230
    move-result-object v3

    .line 233
    const/4 v4, 0x5

    .line 234
    aput-object v3, v2, v4

    .line 235
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 237
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 239
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 241
    move-result-object v3

    .line 244
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 248
    const/4 v4, 0x6

    .line 249
    aput-object v3, v2, v4

    .line 250
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 252
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 254
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    .line 256
    move-result-object v3

    .line 259
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 263
    const/4 v4, 0x7

    .line 264
    aput-object v3, v2, v4

    .line 265
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 267
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 269
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 271
    move-result-object v3

    .line 274
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 278
    const/16 v4, 0x8

    .line 279
    aput-object v3, v2, v4

    .line 281
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 283
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    .line 285
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    move-result-object v3

    .line 290
    const/16 v4, 0x9

    .line 291
    aput-object v3, v2, v4

    .line 293
    const/16 v3, 0x7d09

    .line 295
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 297
    :cond_7
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 300
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;->this$1:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 303
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 305
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 309
    return-void

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    goto :goto_6

    .line 314
    :catchall_1
    move-exception v0

    .line 315
    move-object/from16 v18, v8

    .line 316
    :goto_6
    move-object/from16 v8, v18

    .line 318
    :goto_7
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 320
    throw v0

    .line 321
    :catchall_2
    move-exception v0

    .line 322
    goto :goto_7
    .line 323
.end method
