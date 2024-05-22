.class public final Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;
.super Lcom/android/wm/shell/splitscreen/StageCoordinator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;


# instance fields
.field public final mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/wm/shell/common/SystemWindows;)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 12
    move-object/from16 v7, p7

    .line 14
    move-object/from16 v8, p8

    .line 16
    move-object/from16 v9, p9

    .line 18
    move-object/from16 v10, p10

    .line 20
    move-object/from16 v11, p12

    .line 22
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V

    .line 24
    new-instance v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 27
    move-object/from16 v2, p11

    .line 29
    move-object/from16 v3, p13

    .line 31
    invoke-direct {v0, p1, p0, v3, v2}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V

    .line 33
    iput-object v0, v12, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final onSplitScreenEnter()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    move-result-object v0

    .line 28
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    const/16 v3, 0x7f2

    .line 31
    const/16 v4, 0x10

    .line 33
    const/4 v5, -0x3

    .line 35
    move-object v0, v6

    .line 36
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 37
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 40
    const v1, 0x20000040

    .line 42
    or-int/2addr v0, v1

    .line 45
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 46
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 49
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 54
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 57
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    .line 60
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mRegistered:Z

    .line 62
    if-eqz v0, :cond_0

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 67
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    .line 69
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 71
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mMainHandler:Landroid/os/Handler;

    .line 73
    const-string v3, "com.android.systemui.permission.SELF"

    .line 75
    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mRegistered:Z

    .line 81
    :goto_0
    return-void
    .line 83
.end method

.method public final onSplitScreenExit()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;->mTvSplitMenuController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mActionBroadcastReceiver:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;

    .line 4
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mRegistered:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 11
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mRegistered:Z

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mSplitMenuView:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 25
    return-void
    .line 28
.end method
