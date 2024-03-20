.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

.field public final mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;

.field public final mContext:Ljava/lang/ref/WeakReference;

.field public final mController:Ljava/lang/ref/WeakReference;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mStackView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 14
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mController:Ljava/lang/ref/WeakReference;

    .line 19
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mStackView:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;

    .line 28
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 30
    return-void
    .line 32
.end method

.method public static loadIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x6

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    .line 24
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 29
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "loadSenderAvatar failed: "

    .line 40
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    const-string p1, "MiuiBubbleInflateTask"

    .line 56
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0
    .line 61
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Landroid/content/Context;

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mController:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mStackView:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 28
    const-string v2, "MiuiBubbleInflateTask"

    .line 30
    const-string v3, "populate"

    .line 32
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;

    .line 37
    invoke-direct {v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;-><init>()V

    .line 39
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 42
    const/4 v4, 0x0

    .line 44
    if-eqz v3, :cond_0

    .line 45
    const/4 v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v3, v4

    .line 49
    :goto_0
    if-nez v3, :cond_1

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    move-result-object v3

    .line 55
    const v5, 0x7f0d0190    # @layout/miui_bubble_view 'res/layout/miui_bubble_view.xml'

    .line 56
    invoke-virtual {v3, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 63
    iput-object v1, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 65
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 67
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 69
    invoke-direct {v1, p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;)V

    .line 71
    iput-object v1, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->bubbleMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 74
    const/16 v0, 0x8

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v0

    .line 84
    const v1, 0x7f0707db    # @dimen/miui_bubble_icon_size '56.0dp'

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    move-result v0

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 92
    iget-object v3, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 94
    iget v5, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 96
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mTopActivity:Landroid/content/ComponentName;

    .line 98
    invoke-static {p1, v3, v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->getAppIconForFloatingBall(Landroid/content/Context;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 100
    move-result-object v1

    .line 103
    if-nez v1, :cond_2

    .line 104
    const/4 v0, 0x0

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 108
    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 110
    move-result-object v3

    .line 113
    new-instance v5, Landroid/graphics/Canvas;

    .line 114
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    move-object v0, v3

    .line 125
    :goto_1
    iput-object v0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 128
    iput-object p0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 130
    if-eqz p0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->largeIcon:Landroid/graphics/drawable/Icon;

    .line 134
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->loadIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    .line 136
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->largeIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object p0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    .line 144
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->loadIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    .line 146
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object p0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 152
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 154
    :cond_3
    return-object v2
    .line 156
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;)V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 23
.end method
