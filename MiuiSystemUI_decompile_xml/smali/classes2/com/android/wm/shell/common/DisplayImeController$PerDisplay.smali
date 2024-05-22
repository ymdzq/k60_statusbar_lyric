.class public final Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public mAnimateAlpha:Z

.field public mAnimation:Landroid/animation/ValueAnimator;

.field public mAnimationDirection:I

.field public final mDisplayId:I

.field public final mImeFrame:Landroid/graphics/Rect;

.field public mImeShowing:Z

.field public mImeSourceControl:Landroid/view/InsetsSourceControl;

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRequestedVisibleTypes:I

.field public final mRotation:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayImeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayImeController;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/view/InsetsState;

    .line 7
    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 12
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 14
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    .line 18
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 21
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 24
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 26
    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    .line 28
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    .line 32
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    .line 37
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 40
    iput p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 42
    iput p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public getImeSourceControl()Landroid/view/InsetsSourceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 2
    move-result p2

    .line 5
    and-int/2addr p1, p2

    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 11
    return-void
    .line 14
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 13
    move-result v2

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    .line 17
    move-result v1

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibility(Z)V

    .line 21
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 26
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 33
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v3, v2

    .line 38
    :goto_0
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 43
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    move v6, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v6, v4

    .line 51
    :goto_1
    sget v7, Landroid/view/InsetsSource;->ID_IME:I

    .line 52
    invoke-virtual {v0, v7}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 54
    move-result-object v7

    .line 57
    if-eqz v7, :cond_3

    .line 58
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 60
    move-result-object v7

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object v7, v2

    .line 65
    :goto_2
    invoke-virtual {v0, p1, v5}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 66
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 69
    if-eqz p1, :cond_4

    .line 71
    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    if-eqz v6, :cond_4

    .line 79
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 81
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 83
    :cond_4
    if-eqz v3, :cond_5

    .line 86
    if-eqz v7, :cond_5

    .line 88
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 90
    if-nez p1, :cond_5

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 94
    move-result p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 100
    move-result p1

    .line 103
    if-nez p1, :cond_5

    .line 104
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 106
    move-result p1

    .line 109
    if-nez p1, :cond_5

    .line 110
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 112
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 114
    :cond_5
    return-void
    .line 117
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_2

    .line 7
    array-length v1, p2

    .line 9
    move v2, p1

    .line 10
    move-object v3, v0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_3

    .line 12
    aget-object v4, p2, v2

    .line 14
    if-nez v4, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    .line 19
    move-result v5

    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 23
    move-result v6

    .line 26
    if-ne v5, v6, :cond_1

    .line 27
    move-object v3, v4

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    move-object v3, v0

    .line 33
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 34
    const/4 v1, 0x1

    .line 36
    if-eqz p2, :cond_4

    .line 37
    move p2, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_4
    move p2, p1

    .line 41
    :goto_2
    if-eqz v3, :cond_5

    .line 42
    move v2, v1

    .line 44
    goto :goto_3

    .line 45
    :cond_5
    move v2, p1

    .line 46
    :goto_3
    if-eq p2, v2, :cond_7

    .line 47
    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 49
    iget v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 51
    iget-object v6, v4, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 53
    monitor-enter v6

    .line 55
    :try_start_0
    iget-object v4, v4, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v4

    .line 61
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v7

    .line 65
    if-eqz v7, :cond_6

    .line 66
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 71
    check-cast v7, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    .line 72
    invoke-interface {v7, v5, v2}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeControlTargetChanged(IZ)V

    .line 74
    goto :goto_4

    .line 77
    :cond_6
    monitor-exit v6

    .line 78
    goto :goto_5

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_7
    :goto_5
    if-eqz v2, :cond_11

    .line 83
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 85
    if-eqz v2, :cond_9

    .line 87
    if-eqz p2, :cond_8

    .line 89
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 91
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 93
    move-result-object p1

    .line 96
    goto :goto_6

    .line 97
    :cond_8
    move-object p1, v0

    .line 98
    :goto_6
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 99
    move-result-object v2

    .line 102
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 106
    xor-int/2addr p1, v1

    .line 107
    if-eqz p1, :cond_12

    .line 108
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 110
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 112
    goto/16 :goto_b

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 117
    if-ne v0, v3, :cond_a

    .line 119
    goto :goto_7

    .line 121
    :cond_a
    if-eqz v0, :cond_e

    .line 122
    if-nez v3, :cond_b

    .line 124
    goto :goto_8

    .line 126
    :cond_b
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 127
    move-result-object v2

    .line 130
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 131
    move-result-object v4

    .line 134
    if-ne v2, v4, :cond_c

    .line 135
    :goto_7
    move v0, v1

    .line 137
    goto :goto_9

    .line 138
    :cond_c
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 139
    move-result-object v2

    .line 142
    if-eqz v2, :cond_e

    .line 143
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 145
    move-result-object v2

    .line 148
    if-nez v2, :cond_d

    .line 149
    goto :goto_8

    .line 151
    :cond_d
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 152
    move-result-object v0

    .line 155
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 156
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    .line 160
    move-result v0

    .line 163
    goto :goto_9

    .line 164
    :cond_e
    :goto_8
    move v0, p1

    .line 165
    :goto_9
    if-nez v0, :cond_10

    .line 166
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 168
    move-result-object v0

    .line 171
    if-eqz v0, :cond_10

    .line 172
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 174
    iget-object v4, v2, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 176
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 178
    move-result-object v4

    .line 181
    iget-boolean v5, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 182
    if-eqz v5, :cond_f

    .line 184
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 186
    goto :goto_a

    .line 189
    :cond_f
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 190
    :goto_a
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 193
    iget-object v0, v2, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 196
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 198
    :cond_10
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 201
    if-nez v0, :cond_12

    .line 203
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    new-instance v0, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    .line 210
    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 212
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->removeImeSurface(Ljava/util/function/Consumer;)V

    .line 215
    goto :goto_b

    .line 218
    :cond_11
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 219
    if-eqz p1, :cond_12

    .line 221
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 223
    :cond_12
    :goto_b
    if-eqz p2, :cond_13

    .line 226
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 228
    if-eq p1, v3, :cond_13

    .line 230
    new-instance p2, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;

    .line 232
    invoke-direct {p2, v1}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 237
    :cond_13
    iput-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 240
    return-void
    .line 242
.end method

.method public final setVisibleDirectly(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 2
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 6
    if-eqz p1, :cond_0

    .line 9
    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 13
    move-result v0

    .line 16
    or-int/2addr p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    .line 19
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 21
    move-result v0

    .line 24
    not-int v0, v0

    .line 25
    and-int/2addr p1, v0

    .line 26
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 29
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    .line 31
    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 33
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->updateDisplayWindowRequestedVisibleTypes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    return-void
    .line 38
.end method

.method public final showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 2
    move-result p2

    .line 5
    and-int/2addr p1, p2

    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScUtils;->inSoScSingleMode()Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScUtils;->supportSoScMinimizedMode()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    const-string p0, "DisplayImeController"

    .line 30
    const-string p1, "Do not handle ime show, we will enter sosc minimized mode."

    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 37
    :cond_1
    const/4 p1, 0x1

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 40
    return-void
    .line 43
.end method

.method public final startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    move-object/from16 v6, p3

    .line 4
    iget-object v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 6
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 10
    move-result-object v0

    .line 13
    const/16 v7, 0x1a

    .line 14
    if-eqz v0, :cond_13

    .line 16
    iget-object v1, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 18
    if-nez v1, :cond_0

    .line 20
    goto/16 :goto_a

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 32
    move-result v2

    .line 35
    const/4 v10, 0x1

    .line 36
    const/4 v11, 0x0

    .line 37
    iget v3, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 38
    iget-object v4, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 40
    if-nez v2, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 45
    move-result v0

    .line 48
    iget-object v2, v4, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 49
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 51
    move-result-object v2

    .line 54
    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 55
    if-gt v0, v2, :cond_2

    .line 57
    :goto_0
    move v0, v10

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v0, v11

    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    if-eqz p1, :cond_3

    .line 64
    move v8, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v8, v11

    .line 68
    :goto_2
    iget-object v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    .line 69
    if-eqz v8, :cond_4

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    iget-object v1, v4, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 76
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 78
    move-result-object v1

    .line 81
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 82
    int-to-float v1, v1

    .line 84
    const v2, 0x3bcccccd    # 0.00625f

    .line 85
    mul-float/2addr v1, v2

    .line 88
    const/high16 v2, -0x3d600000    # -80.0f

    .line 89
    mul-float/2addr v1, v2

    .line 91
    float-to-int v1, v1

    .line 92
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    sub-int/2addr v2, v1

    .line 95
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 96
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 99
    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 108
    iget v1, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 110
    if-ne v1, v10, :cond_6

    .line 112
    if-nez p1, :cond_7

    .line 114
    :cond_6
    iget v1, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 116
    const/4 v2, 0x2

    .line 118
    if-ne v1, v2, :cond_8

    .line 119
    if-nez p1, :cond_8

    .line 121
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 123
    move-result-object v0

    .line 126
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 127
    return-void

    .line 130
    :cond_8
    iget-object v1, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 131
    const/4 v3, 0x0

    .line 133
    if-eqz v1, :cond_a

    .line 134
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 136
    move-result v1

    .line 139
    if-eqz v1, :cond_9

    .line 140
    iget-object v1, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 142
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/Float;

    .line 148
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 150
    move-result v3

    .line 153
    move v1, v10

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    move v1, v11

    .line 156
    :goto_4
    iget-object v4, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 157
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 159
    goto :goto_5

    .line 162
    :cond_a
    move v1, v11

    .line 163
    :goto_5
    iget-object v4, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 164
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 166
    move-result-object v4

    .line 169
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 170
    int-to-float v12, v4

    .line 172
    iget-object v4, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 173
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 175
    move-result-object v4

    .line 178
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 179
    int-to-float v13, v4

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 182
    move-result v0

    .line 185
    int-to-float v0, v0

    .line 186
    add-float v14, v12, v0

    .line 187
    if-eqz p1, :cond_b

    .line 189
    move v15, v14

    .line 191
    goto :goto_6

    .line 192
    :cond_b
    move v15, v12

    .line 193
    :goto_6
    if-eqz p1, :cond_c

    .line 194
    move/from16 v16, v12

    .line 196
    goto :goto_7

    .line 198
    :cond_c
    move/from16 v16, v14

    .line 199
    :goto_7
    iget v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 201
    if-nez v0, :cond_d

    .line 203
    iget-boolean v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 205
    if-eqz v0, :cond_d

    .line 207
    if-eqz p1, :cond_d

    .line 209
    move v1, v10

    .line 211
    move v3, v12

    .line 212
    :cond_d
    if-eqz p1, :cond_e

    .line 213
    move v0, v10

    .line 215
    goto :goto_8

    .line 216
    :cond_e
    move v0, v2

    .line 217
    :goto_8
    iput v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 218
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibility(Z)V

    .line 220
    new-array v0, v2, [F

    .line 223
    aput v15, v0, v11

    .line 225
    aput v16, v0, v10

    .line 227
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 229
    move-result-object v0

    .line 232
    iput-object v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 233
    if-eqz p1, :cond_f

    .line 235
    const-wide/16 v4, 0x113

    .line 237
    goto :goto_9

    .line 239
    :cond_f
    const-wide/16 v4, 0x154

    .line 240
    :goto_9
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    if-eqz v1, :cond_10

    .line 245
    iget-object v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 247
    sub-float/2addr v3, v15

    .line 249
    sub-float v1, v16, v15

    .line 250
    div-float/2addr v3, v1

    .line 252
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 253
    :cond_10
    iget-object v5, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 256
    new-instance v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;

    .line 258
    move-object v0, v4

    .line 260
    move-object/from16 v1, p0

    .line 261
    move v2, v13

    .line 263
    move v3, v8

    .line 264
    move-object v10, v4

    .line 265
    move v4, v14

    .line 266
    move-object v11, v5

    .line 267
    move v5, v12

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FZFF)V

    .line 269
    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    iget-object v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 275
    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 277
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 282
    move-result-object v0

    .line 285
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 286
    iget-object v10, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 289
    new-instance v11, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;

    .line 291
    move-object v0, v11

    .line 293
    move-object/from16 v1, p0

    .line 294
    move-object/from16 v2, p3

    .line 296
    move v3, v13

    .line 298
    move v4, v15

    .line 299
    move v5, v14

    .line 300
    move v6, v12

    .line 301
    move v7, v8

    .line 302
    move/from16 v8, v16

    .line 303
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/inputmethod/ImeTracker$Token;FFFFZF)V

    .line 305
    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    if-nez p1, :cond_11

    .line 311
    const/4 v0, 0x0

    .line 313
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    .line 314
    :cond_11
    iget-object v0, v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 317
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 319
    if-eqz p1, :cond_12

    .line 322
    const/4 v0, 0x1

    .line 324
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    .line 325
    :cond_12
    return-void

    .line 328
    :cond_13
    :goto_a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 329
    move-result-object v0

    .line 332
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 333
    return-void
    .line 336
.end method

.method public final topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateImeVisibility(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 8
    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 10
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 12
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;

    .line 31
    invoke-interface {v2, p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;->onImeVisibilityChanged(IZ)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    monitor-exit v1

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_1
    return-void
    .line 42
.end method
