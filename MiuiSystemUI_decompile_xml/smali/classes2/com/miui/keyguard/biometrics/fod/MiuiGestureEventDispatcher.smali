.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mListeners:Ljava/util/ArrayList;

.field public mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 10
    const/4 p2, 0x0

    .line 12
    new-array p2, p2, [Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 13
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 15
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mInputChannel:Landroid/view/InputChannel;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mInputChannel:Landroid/view/InputChannel;

    .line 5
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 7
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 17
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
    .line 23
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 12

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    .line 7
    move-result v0

    .line 10
    const/4 v2, 0x2

    .line 11
    and-int/2addr v0, v2

    .line 12
    if-eqz v0, :cond_11

    .line 13
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/view/MotionEvent;

    .line 16
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 19
    if-nez v3, :cond_1

    .line 21
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 23
    if-nez v3, :cond_0

    .line 25
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v3

    .line 32
    new-array v3, v3, [Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 33
    iput-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 35
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    move v4, v1

    .line 45
    :goto_0
    array-length v5, v3

    .line 46
    if-ge v4, v5, :cond_11

    .line 47
    aget-object v5, v3, v4

    .line 49
    iget-object v6, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 51
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 56
    move-result v7

    .line 59
    const/4 v8, 0x1

    .line 60
    const/16 v9, 0xa

    .line 61
    const/4 v10, 0x7

    .line 63
    const/16 v11, 0x9

    .line 64
    if-eq v7, v11, :cond_3

    .line 66
    if-eq v7, v10, :cond_3

    .line 68
    if-ne v7, v9, :cond_2

    .line 70
    goto :goto_1

    .line 72
    :cond_2
    move v7, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    move v7, v8

    .line 75
    :goto_2
    if-eqz v7, :cond_7

    .line 76
    iget-object v6, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v6}, Lcom/miui/systemui/util/AccessibilityUtils;->isTalkBackActive(Landroid/content/Context;)Z

    .line 80
    move-result v6

    .line 83
    if-eqz v6, :cond_7

    .line 84
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 86
    move-result v6

    .line 89
    if-eq v6, v10, :cond_6

    .line 90
    if-eq v6, v11, :cond_5

    .line 92
    if-eq v6, v9, :cond_4

    .line 94
    goto :goto_3

    .line 96
    :cond_4
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 97
    goto :goto_3

    .line 100
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 101
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 105
    :cond_7
    :goto_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 108
    move-result v6

    .line 111
    const/4 v7, 0x3

    .line 112
    if-nez v6, :cond_8

    .line 113
    iget-object v6, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 115
    iput-boolean v8, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->isCatchDownEvent:Z

    .line 117
    goto :goto_4

    .line 119
    :cond_8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 120
    move-result v6

    .line 123
    if-eq v6, v7, :cond_9

    .line 124
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 126
    move-result v6

    .line 129
    if-ne v6, v8, :cond_a

    .line 130
    :cond_9
    iget-object v6, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 132
    iput-boolean v1, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->isCatchDownEvent:Z

    .line 134
    :cond_a
    :goto_4
    iget-object v6, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 136
    iget-boolean v6, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 138
    if-eqz v6, :cond_c

    .line 140
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 142
    move-result v6

    .line 145
    if-eq v6, v8, :cond_b

    .line 146
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 148
    move-result v6

    .line 151
    const/4 v9, 0x6

    .line 152
    if-eq v6, v9, :cond_b

    .line 153
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 155
    move-result v6

    .line 158
    if-ne v6, v7, :cond_c

    .line 159
    :cond_b
    move v6, v8

    .line 161
    goto :goto_5

    .line 162
    :cond_c
    move v6, v1

    .line 163
    :goto_5
    if-nez v6, :cond_f

    .line 164
    iget-object v6, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 166
    iget-object v7, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 168
    invoke-virtual {v7}, Lmiui/stub/MiuiStub$3;->isFingerprintTemporarilyLockout()Z

    .line 170
    move-result v7

    .line 173
    if-eqz v7, :cond_d

    .line 174
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 176
    move-result v6

    .line 179
    if-nez v6, :cond_d

    .line 180
    move v6, v8

    .line 182
    goto :goto_6

    .line 183
    :cond_d
    move v6, v1

    .line 184
    :goto_6
    if-nez v6, :cond_f

    .line 185
    iget-object v6, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 187
    iget-object v7, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 189
    iget-boolean v7, v7, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowed:Z

    .line 191
    if-nez v7, :cond_f

    .line 193
    iget-object v6, v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 195
    iget-object v6, v6, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 197
    iget-object v6, v6, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 199
    iget-object v6, v6, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 201
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 203
    move-result-object v6

    .line 206
    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 207
    iget-object v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 209
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 211
    move-result v6

    .line 214
    and-int/2addr v6, v8

    .line 215
    if-nez v6, :cond_e

    .line 216
    goto :goto_7

    .line 218
    :cond_e
    move v8, v1

    .line 219
    :goto_7
    if-nez v8, :cond_10

    .line 220
    :cond_f
    iget-object v5, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 222
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 227
    move-result-object v6

    .line 230
    iget-object v7, v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    .line 231
    new-instance v8, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;

    .line 233
    invoke-direct {v8, v5, v6}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;Landroid/view/MotionEvent;)V

    .line 235
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 241
    goto/16 :goto_0

    .line 243
    :catchall_0
    move-exception p1

    .line 245
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    throw p1

    .line 247
    :cond_11
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 248
    return-void
    .line 251
.end method
