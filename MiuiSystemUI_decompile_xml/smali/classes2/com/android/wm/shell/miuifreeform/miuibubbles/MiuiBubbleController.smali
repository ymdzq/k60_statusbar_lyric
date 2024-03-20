.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAddedToWindowManager:Z

.field public final mBubbleContentObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

.field public final mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

.field public final mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

.field public final mBubblesReceiver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

.field public final mFocusModeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mMainExecutor:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

.field public final mMiuiBubbleAppChangeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

.field public final mMiuiBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;

.field public final mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

.field public final mScreenshotReceiver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

.field public final mSidebarBoundsObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

.field public mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mpopBubbleNotification(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 12
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 14
    check-cast v3, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-ge v2, v4, :cond_1

    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 29
    iget-object v4, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 31
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 33
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    iget-object v4, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 41
    iget v4, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 43
    if-ne v4, v1, :cond_0

    .line 45
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, v5

    .line 51
    :goto_1
    if-eqz v3, :cond_2

    .line 52
    iget-object v0, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 54
    if-eqz v0, :cond_2

    .line 56
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->PINNED:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->isEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    move-object v5, v3

    .line 66
    :cond_2
    if-eqz v5, :cond_3

    .line 67
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 69
    iget-object v1, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 71
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    iget-object v0, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 81
    iput-object p1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 83
    invoke-virtual {v5, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->updateEntryData(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;)V

    .line 85
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->inflateAndAddOrUpdate(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 88
    :cond_3
    return-void
    .line 91
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;Landroid/os/Handler;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;

    .line 13
    invoke-direct {v4, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;)V

    .line 15
    iput-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMiuiBubbleNotification:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$1;

    .line 18
    new-instance v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;

    .line 20
    invoke-direct {v4, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;)V

    .line 22
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

    .line 25
    const/4 v6, 0x0

    .line 27
    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 28
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubblesReceiver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

    .line 31
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

    .line 33
    const/4 v7, 0x1

    .line 35
    invoke-direct {v5, v0, v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 36
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mScreenshotReceiver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

    .line 39
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 41
    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 43
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mFocusModeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 46
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 48
    invoke-direct {v5, v0, v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 50
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mSidebarBoundsObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 53
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 55
    const/4 v8, 0x2

    .line 57
    invoke-direct {v5, v0, v8}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 58
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMiuiBubbleAppChangeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 61
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 63
    const/4 v8, 0x3

    .line 65
    invoke-direct {v5, v0, v8}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 66
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleContentObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 69
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 71
    const/4 v8, 0x4

    .line 73
    invoke-direct {v5, v0, v8}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V

    .line 74
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mDesktopModeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 77
    iput-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 79
    iput-object v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 81
    iput-object v3, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

    .line 85
    invoke-direct {v5, v3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;-><init>(Landroid/os/Handler;)V

    .line 87
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMainExecutor:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

    .line 90
    new-instance v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 92
    invoke-direct {v3, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;)V

    .line 94
    iput-object v3, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 97
    const-string v5, "keyguard"

    .line 99
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object v5

    .line 104
    check-cast v5, Landroid/app/KeyguardManager;

    .line 105
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 107
    const-string/jumbo v5, "window"

    .line 109
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v5

    .line 115
    check-cast v5, Landroid/view/WindowManager;

    .line 116
    iput-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mWindowManager:Landroid/view/WindowManager;

    .line 118
    new-instance v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 120
    invoke-direct {v8, v1, v5, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;)V

    .line 122
    iput-object v8, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 125
    iput-object v4, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;

    .line 127
    sget-object v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 129
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 131
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 133
    sput-object v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mContext:Ljava/lang/ref/WeakReference;

    .line 136
    new-instance v2, Landroid/util/ArrayMap;

    .line 138
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object v3

    .line 146
    const v4, 0x7f030078    # @array/default_bubble_apps

    .line 147
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 153
    array-length v4, v3

    .line 154
    move v5, v6

    .line 155
    :goto_0
    if-ge v5, v4, :cond_0

    .line 156
    aget-object v8, v3, v5

    .line 158
    new-instance v9, Lmiui/app/MiuiBubbleApp;

    .line 160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 162
    move-result v10

    .line 165
    invoke-direct {v9, v8, v10}, Lmiui/app/MiuiBubbleApp;-><init>(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v9, v7}, Lmiui/app/MiuiBubbleApp;->setChecked(Z)Lmiui/app/MiuiBubbleApp;

    .line 169
    invoke-virtual {v2, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 175
    goto :goto_0

    .line 177
    :cond_0
    sget-object v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    .line 178
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->updateBubbleAppStates(Landroid/content/Context;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    const-string v4, "initBubbleApps: mBubbleAppMaps="

    .line 188
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v2

    .line 199
    const-string v4, "MiuiBubbleSettings"

    .line 200
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 210
    move-result-object v3

    .line 213
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 214
    move-result-object v3

    .line 217
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    move-result v4

    .line 221
    if-eqz v4, :cond_2

    .line 222
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    move-result-object v4

    .line 227
    check-cast v4, Lmiui/app/MiuiBubbleApp;

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 230
    move-result v5

    .line 233
    if-lez v5, :cond_1

    .line 234
    const-string v5, ","

    .line 236
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    invoke-virtual {v4}, Lmiui/app/MiuiBubbleApp;->getSpString()Ljava/lang/String;

    .line 241
    move-result-object v4

    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 249
    move-result-object v3

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 256
    const-string v4, "miui_bubble_app_settings"

    .line 257
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z

    .line 262
    move-result v2

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 266
    move-result-object v1

    .line 269
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 270
    move-result v3

    .line 273
    const-string v5, "miui_bubbles_notification_switch"

    .line 274
    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 276
    new-instance v11, Landroid/content/IntentFilter;

    .line 279
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 284
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 289
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 294
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "com.android.systemui.fsgesture"

    .line 299
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 304
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubblesReceiver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

    .line 306
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 308
    const/4 v12, 0x0

    .line 310
    const/4 v13, 0x0

    .line 311
    const/4 v14, 0x2

    .line 312
    invoke-virtual/range {v8 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 313
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 316
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mScreenshotReceiver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3;

    .line 318
    new-instance v2, Landroid/content/IntentFilter;

    .line 320
    const-string v3, "miui.intent.TAKE_SCREENSHOT"

    .line 322
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v18, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 327
    const/16 v19, 0x0

    .line 329
    const/16 v20, 0x2

    .line 331
    move-object/from16 v16, v1

    .line 333
    move-object/from16 v17, v2

    .line 335
    invoke-virtual/range {v15 .. v20}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 337
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 340
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 342
    move-result-object v2

    .line 345
    const-string/jumbo v3, "settings_focus_mode_status"

    .line 346
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 349
    move-result-object v3

    .line 352
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mFocusModeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 353
    invoke-virtual {v2, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 358
    move-result-object v2

    .line 361
    const-string/jumbo v3, "sidebar_bounds"

    .line 362
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 365
    move-result-object v3

    .line 368
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mSidebarBoundsObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 369
    invoke-virtual {v2, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 374
    move-result-object v2

    .line 377
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 378
    move-result-object v3

    .line 381
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMiuiBubbleAppChangeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 382
    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 387
    move-result-object v2

    .line 390
    const-string v3, "all_app_workespace_status"

    .line 391
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 393
    move-result-object v3

    .line 396
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleContentObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 397
    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 402
    move-result-object v1

    .line 405
    const-string v2, "miui_dkt_mode"

    .line 406
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 408
    move-result-object v2

    .line 411
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mDesktopModeObserver:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;

    .line 412
    const/4 v3, -0x2

    .line 414
    invoke-virtual {v1, v2, v6, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :catch_0
    return-void
    .line 418
.end method


# virtual methods
.method public final ensureStackViewCreated()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;)V

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 16
    :cond_0
    const-string v0, "addToWindowManagerMaybe: "

    .line 19
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 21
    if-eqz v3, :cond_2

    .line 23
    iget-boolean v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mAddedToWindowManager:Z

    .line 25
    if-eqz v3, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 30
    const/4 v5, -0x1

    .line 32
    const/4 v6, -0x1

    .line 33
    const/16 v7, 0x7d2

    .line 34
    const v8, 0x1000028

    .line 36
    const/4 v9, -0x3

    .line 39
    move-object v4, v3

    .line 40
    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 41
    const/16 v4, 0x7eb

    .line 44
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 46
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 48
    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 51
    const/16 v2, 0x10

    .line 54
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 56
    new-instance v4, Landroid/os/Binder;

    .line 58
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 60
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    iput-object v1, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 69
    const-string v1, "MiuiBubbles"

    .line 71
    invoke-virtual {v3, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v1, 0x30

    .line 76
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    const/4 v1, 0x3

    .line 80
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 81
    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 83
    or-int/2addr v1, v2

    .line 85
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 86
    const/4 v1, 0x1

    .line 88
    :try_start_0
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mAddedToWindowManager:Z

    .line 89
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 93
    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 98
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->update()V

    .line 100
    const-string v1, "MiuiBubbleController"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 124
    :cond_2
    :goto_0
    return-void
    .line 127
.end method

.method public final inflateAndAddOrUpdate(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->ensureStackViewCreated()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v6, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v6, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;)V

    .line 12
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 15
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 17
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mInflationTask:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 19
    const/4 v1, 0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 25
    move-result-object v0

    .line 28
    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 29
    if-eq v0, v2, :cond_0

    .line 31
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v8

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mInflationTask:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 40
    :cond_1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 43
    iget-object v7, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 45
    move-object v1, v0

    .line 47
    move-object v2, p1

    .line 48
    move-object v4, p0

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    .line 50
    iput-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mInflationTask:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 53
    new-array p0, v8, [Ljava/lang/Void;

    .line 55
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
    .line 60
.end method

.method public final onVisibilityChanged(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Z)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMainExecutor:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
    .line 12
.end method

.method public final removeBubble(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "removeBubble: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " reason="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "MiuiBubbleController"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbleInStackWithKey(I)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->dismissBubbleWithKey(II)V

    .line 42
    :cond_1
    return-void
    .line 45
.end method

.method public final shouldShow()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/utils/FocusModeUtils;->hasFinishFocusMode(Landroid/content/Context;)Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 11
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 13
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object p0

    .line 22
    const-string v0, "all_app_workespace_status"

    .line 23
    const/4 v1, -0x1

    .line 25
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    move-result p0

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p0, :cond_0

    .line 31
    move p0, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p0, v2

    .line 35
    :goto_0
    if-eqz p0, :cond_1

    .line 36
    move v2, v0

    .line 38
    :cond_1
    return v2
    .line 39
.end method
