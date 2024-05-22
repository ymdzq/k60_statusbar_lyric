.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

.field private final mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    move-object/from16 v3, p1

    .line 7
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mContext:Landroid/content/Context;

    .line 9
    move-object/from16 v1, p11

    .line 11
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 13
    new-instance v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 15
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 17
    move-object v1, v15

    .line 19
    move-object/from16 v4, p4

    .line 20
    move-object/from16 v5, p2

    .line 22
    move-object/from16 v6, p3

    .line 24
    move-object/from16 v7, p5

    .line 26
    move-object/from16 v8, p6

    .line 28
    move-object/from16 v9, p7

    .line 30
    move-object/from16 v10, p8

    .line 32
    move-object/from16 v11, p9

    .line 34
    move-object/from16 v12, p10

    .line 36
    move-object/from16 v13, p13

    .line 38
    move-object/from16 v14, p12

    .line 40
    move-object/from16 v16, v15

    .line 42
    move-object/from16 v15, p14

    .line 44
    invoke-direct/range {v1 .. v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 46
    move-object/from16 v1, v16

    .line 49
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->close()V

    .line 4
    return-void
    .line 7
.end method

.method public getmMiuiMultiWinGestureHandler()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 4
    return-void
    .line 7
.end method

.method public setDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->setDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 4
    return-void
    .line 7
.end method

.method public setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->mMiuiMultiWinGestureHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    .line 4
    return-void
    .line 7
.end method
