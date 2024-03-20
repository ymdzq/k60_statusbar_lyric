.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

.field public mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

.field public final mClipboardUtils:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils;

.field public mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

.field public final mContext:Landroid/content/Context;

.field public mEnterAnimator:Landroid/animation/Animator;

.field public mExitAnimator:Landroid/animation/Animator;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsMinimized:Z

.field public mOnPreviewTapped:Ljava/lang/Runnable;

.field public mOnRemoteCopyTapped:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda4;

.field public mOnSessionCompleteListener:Ljava/lang/Runnable;

.field public mOnShareTapped:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

.field public mOnUiUpdate:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

.field public mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

.field public final mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

.field public final mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

.field public final mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;


# direct methods
.method public static $r8$lambda$koNO4Qea216Xwm-KPDQBymd8-B8(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;)V

    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 12
    const-class v1, Lcom/android/systemui/clipboardoverlay/EditTextActivity;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 16
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    const v1, 0x10008000

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    .line 30
    return-void
    .line 33
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils;Ljava/util/concurrent/Executor;Lcom/android/systemui/clipboardoverlay/ClipboardImageLoader;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object/from16 v4, p4

    .line 6
    move-object/from16 v5, p6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;

    .line 13
    invoke-direct {v6, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    .line 15
    iput-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 18
    iput-object v4, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 20
    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 22
    move-object/from16 v8, p11

    .line 24
    invoke-direct {v7, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    .line 26
    iput-object v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 29
    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 31
    iput-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    .line 33
    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v7, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    .line 37
    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    .line 40
    const/4 v9, 0x0

    .line 42
    invoke-direct {v8, p0, v9}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 43
    iput-object v7, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOnKeyboardChangeListener:Ljava/util/function/BiConsumer;

    .line 46
    iput-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mOnOrientationChangeListener:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 50
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    .line 54
    move-result v8

    .line 57
    if-eqz v8, :cond_0

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    iget-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    iget-object v10, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    invoke-interface {v8, v7, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->requestApplyInsets()V

    .line 68
    :goto_0
    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda0;

    .line 71
    invoke-direct {v7, p3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;)V

    .line 73
    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 76
    move-result-object v8

    .line 79
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    .line 80
    move-result v10

    .line 83
    if-eqz v10, :cond_1

    .line 84
    invoke-virtual {v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$$ExternalSyntheticLambda0;->run()V

    .line 86
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 90
    move-result-object v10

    .line 93
    new-instance v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;

    .line 94
    invoke-direct {v11, v8, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 99
    :goto_1
    move-object/from16 v7, p7

    .line 102
    iput-object v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 104
    iput-object v5, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 106
    const/16 v7, 0x1770

    .line 108
    iput v7, v5, Lcom/android/systemui/screenshot/TimeoutHandler;->mDefaultTimeout:I

    .line 110
    move-object/from16 v7, p8

    .line 112
    iput-object v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardUtils:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayUtils;

    .line 114
    move-object/from16 v7, p9

    .line 116
    iput-object v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 118
    invoke-virtual {p2, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setCallbacks(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;)V

    .line 120
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    .line 123
    const/4 v6, 0x1

    .line 125
    invoke-direct {v2, p0, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 126
    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 129
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 133
    move-result v7

    .line 136
    if-eqz v7, :cond_2

    .line 137
    invoke-virtual {v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;->run()V

    .line 139
    goto :goto_2

    .line 142
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 143
    move-result-object v7

    .line 146
    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;

    .line 147
    invoke-direct {v8, v3, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 152
    :goto_2
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    .line 155
    const/4 v3, 0x2

    .line 157
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 158
    iput-object v2, v5, Lcom/android/systemui/screenshot/TimeoutHandler;->mOnTimeout:Ljava/lang/Runnable;

    .line 161
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 163
    invoke-direct {v2, p0, v9}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 165
    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 168
    new-instance v3, Landroid/content/IntentFilter;

    .line 170
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 172
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 177
    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 180
    invoke-direct {v3, p0, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 182
    iput-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 185
    new-instance v5, Landroid/content/IntentFilter;

    .line 187
    const-string v2, "com.android.systemui.SCREENSHOT"

    .line 189
    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    const/4 v8, 0x2

    .line 196
    const-string v10, "com.android.systemui.permission.SELF"

    .line 197
    move-object/from16 v2, p4

    .line 199
    move-object v4, v5

    .line 201
    move-object v5, v6

    .line 202
    move-object v6, v7

    .line 203
    move v7, v8

    .line 204
    move-object v8, v10

    .line 205
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 206
    const-class v2, Landroid/hardware/input/InputManager;

    .line 209
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    move-result-object v2

    .line 214
    check-cast v2, Landroid/hardware/input/InputManager;

    .line 215
    const-string v3, "clipboard overlay"

    .line 217
    invoke-virtual {v2, v3, v9}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 219
    move-result-object v2

    .line 222
    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    .line 223
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    .line 225
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    .line 227
    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 229
    move-result-object v3

    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 233
    move-result-object v4

    .line 236
    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 237
    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    .line 240
    new-instance v0, Landroid/content/Intent;

    .line 242
    const-string v2, "com.android.systemui.COPY"

    .line 244
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    move-object/from16 v1, p5

    .line 256
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast$1(Landroid/content/Intent;)V

    .line 258
    return-void
    .line 261
.end method


# virtual methods
.method public final animateIn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->getEnterAnimation()Landroid/animation/Animator;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    .line 19
    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;

    .line 21
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$4;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEnterAnimator:Landroid/animation/Animator;

    .line 30
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 32
    return-void
    .line 35
.end method

.method public final animateOut()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->getExitAnimation()Landroid/animation/Animator;

    .line 15
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$7;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$7;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    .line 27
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 29
    return-void
    .line 32
.end method

.method public final editImage(Landroid/net/Uri;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 9
    const v1, 0x7f1302e1    # @string/config_screenshotEditor ''

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    new-instance v2, Landroid/content/Intent;

    .line 18
    const-string v3, "android.intent.action.EDIT"

    .line 20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    :cond_0
    const-string v1, "image/*"

    .line 38
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const/4 p1, 0x1

    .line 43
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    const v1, 0x10008000

    .line 47
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    const-string v1, "edit_source_clipboard"

    .line 53
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    .line 61
    return-void
    .line 64
.end method

.method public final hideImmediate()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    .line 8
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 29
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mCloseDialogsReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mScreenshotReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 52
    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputEventReceiver:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    .line 57
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 61
    iput-object v2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mInputMonitor:Landroid/view/InputMonitor;

    .line 64
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnSessionCompleteListener:Ljava/lang/Runnable;

    .line 66
    if-eqz p0, :cond_5

    .line 68
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 70
    :cond_5
    return-void
    .line 73
.end method

.method public final maybeShowRemoteCopy(Landroid/content/ClipData;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.REMOTE_COPY"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 9
    const v2, 0x7f1302dd    # @string/config_remoteCopyPackage ''

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 31
    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    const p1, 0x10008000

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object p1

    .line 47
    const-wide/16 v1, 0x0

    .line 48
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 50
    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    .line 54
    move-result-object p1

    .line 57
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 58
    if-eqz p1, :cond_1

    .line 60
    iget-object p1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 62
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    iget-object p1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    new-instance p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda4;

    .line 73
    invoke-direct {p1, p0, v0, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Landroid/os/Parcelable;I)V

    .line 75
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnRemoteCopyTapped:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda4;

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 81
    const/16 p1, 0x8

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    :goto_0
    return-void
    .line 88
.end method

.method public onInsetsChanged(Landroid/view/WindowInsets;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setInsets(Landroid/view/WindowInsets;I)V

    .line 4
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 7
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 11
    move-result-object p1

    .line 14
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 15
    const/4 p2, 0x1

    .line 17
    if-lez p1, :cond_0

    .line 18
    move p1, p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    iget-boolean p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    .line 25
    if-nez p1, :cond_1

    .line 27
    iput-boolean p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    .line 29
    invoke-virtual {v0, p2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setMinimized(Z)V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final setExpandedView$1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setMinimized(Z)V

    .line 7
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->type:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v3

    .line 15
    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 16
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x1

    .line 19
    iget-boolean v7, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->isRemote:Z

    .line 20
    if-eqz v3, :cond_2

    .line 22
    const/4 v8, 0x2

    .line 24
    if-eq v3, v6, :cond_1

    .line 25
    if-eq v3, v8, :cond_0

    .line 27
    if-eq v3, v5, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->showDefaultTextPreview()V

    .line 32
    goto :goto_1

    .line 35
    :cond_1
    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 36
    invoke-direct {v3, p0, v0, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Lcom/android/systemui/clipboardoverlay/ClipboardModel;I)V

    .line 38
    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    goto :goto_1

    .line 44
    :cond_2
    if-nez v7, :cond_3

    .line 45
    const-string/jumbo v3, "systemui"

    .line 47
    const-string v8, "clipboard_overlay_show_actions"

    .line 50
    invoke-static {v3, v8, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->textLinks:Landroid/view/textclassifier/TextLinks;

    .line 58
    if-eqz v3, :cond_4

    .line 60
    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 62
    const/4 v8, 0x6

    .line 64
    invoke-direct {v3, p0, v0, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Lcom/android/systemui/clipboardoverlay/ClipboardModel;I)V

    .line 65
    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->isSensitive:Z

    .line 71
    if-eqz v3, :cond_5

    .line 73
    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 75
    const v4, 0x7f1302a9    # @string/clipboard_asterisks '••••••'

    .line 77
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->showTextPreview(Ljava/lang/CharSequence;Z)V

    .line 84
    goto :goto_0

    .line 87
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->text:Ljava/lang/CharSequence;

    .line 88
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 93
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->showTextPreview(Ljava/lang/CharSequence;Z)V

    .line 94
    :goto_0
    invoke-virtual {v1, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setEditAccessibilityAction(Z)V

    .line 97
    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    .line 100
    const/4 v4, 0x5

    .line 102
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;I)V

    .line 103
    iput-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnPreviewTapped:Ljava/lang/Runnable;

    .line 106
    :goto_1
    if-nez v7, :cond_6

    .line 108
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->clipData:Landroid/content/ClipData;

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->maybeShowRemoteCopy(Landroid/content/ClipData;)V

    .line 112
    :cond_6
    sget-object v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;->OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 115
    iget-object v4, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->type:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 117
    if-eq v4, v3, :cond_7

    .line 119
    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 121
    invoke-direct {v3, p0, v0, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Lcom/android/systemui/clipboardoverlay/ClipboardModel;I)V

    .line 123
    iput-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnShareTapped:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 126
    iget-object p0, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 128
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 130
    iget-object p0, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 133
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_7
    return-void
    .line 138
.end method

.method public final shareContent(Landroid/content/ClipData;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SHARE_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "android.intent.action.SEND"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 21
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 25
    const/4 v4, 0x1

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 38
    move-result-object v5

    .line 41
    invoke-virtual {v5, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 45
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 53
    move-result-object p1

    .line 56
    const-string v1, "android.intent.extra.STREAM"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {p1, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 70
    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 77
    const-string v1, "android.intent.extra.TEXT"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo p1, "text/plain"

    .line 83
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :goto_0
    const/4 p1, 0x0

    .line 89
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 90
    move-result-object p1

    .line 93
    const v0, 0x10008000

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    move-result-object p1

    .line 100
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    move-result-object p1

    .line 104
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    .line 108
    return-void
    .line 111
.end method
