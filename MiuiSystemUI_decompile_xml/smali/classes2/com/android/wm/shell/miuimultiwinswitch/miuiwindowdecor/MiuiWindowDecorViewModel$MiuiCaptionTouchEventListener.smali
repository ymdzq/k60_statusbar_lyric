.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mTaskId:I

.field private final mTaskToken:Landroid/window/WindowContainerToken;

.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$aUofF7qC_Y0KcCiOoX3GFnB1W9s(Landroid/content/Intent;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->lambda$onClick$0(Landroid/content/Intent;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 4
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Landroid/content/Intent;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    move-result-object p0

    .line 5
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 8
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskInBackground(ILandroid/content/ComponentName;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 4
    invoke-static {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmWindowDecorByTaskId(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/util/SparseArray;

    .line 6
    move-result-object v1

    .line 9
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 18
    move-result v2

    .line 21
    if-eqz v1, :cond_43

    .line 22
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->isHandleMenuActive()Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_43

    .line 28
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 30
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmIsInLockTaskMode(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Z

    .line 32
    move-result v3

    .line 35
    const v4, 0x7f0a08d4    # @id/state_fullscrren

    .line 36
    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 41
    if-eq v2, v4, :cond_0

    .line 44
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 46
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->pinModeToast(Landroid/content/Context;)V

    .line 52
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v3, 0x5

    .line 56
    const-string/jumbo v5, "\u5168\u5c4f"

    .line 57
    const-string/jumbo v6, "\u5c0f\u7a97"

    .line 60
    const/4 v7, 0x2

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x1

    .line 65
    if-ne v2, v4, :cond_5

    .line 66
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 68
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 70
    move-result v2

    .line 73
    if-ne v2, v9, :cond_2

    .line 74
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 76
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 79
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 81
    move-result-object v2

    .line 84
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 87
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 90
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 95
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 96
    invoke-static {v0, v1, v5, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto/16 :goto_d

    .line 101
    :cond_2
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 105
    move-result v2

    .line 108
    if-ne v2, v3, :cond_3

    .line 109
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 111
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 113
    move-result-object v2

    .line 116
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 117
    invoke-static {v2, v3, v6, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 122
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 124
    move-result-object v2

    .line 127
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 128
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 130
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 132
    move-result-object v4

    .line 135
    invoke-static {v2, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 136
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 139
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 141
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 144
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 147
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 149
    move-result-object v2

    .line 152
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 153
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 155
    move-result-object v3

    .line 158
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 159
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 161
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 163
    move-result-object v3

    .line 166
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->hideOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 167
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 170
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 172
    move-result-object v0

    .line 175
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 176
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToFullscreen(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 178
    goto/16 :goto_d

    .line 181
    :cond_3
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 183
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 185
    move-result-object v2

    .line 188
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 189
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 191
    move-result-object v3

    .line 194
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    invoke-static {v2, v3, v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackFromSplitStateByClick(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 197
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 200
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 202
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 205
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 208
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 210
    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 214
    move-result v2

    .line 217
    if-ne v2, v7, :cond_4

    .line 218
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 220
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 222
    move-result-object v2

    .line 225
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 226
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 228
    move-result-object v0

    .line 231
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 232
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSplitToFullscreen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 234
    goto/16 :goto_d

    .line 237
    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 239
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 241
    move-result-object v2

    .line 244
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 245
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplitByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 247
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 250
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 252
    move-result-object v2

    .line 255
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 256
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 258
    move-result-object v0

    .line 261
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 262
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSingleOpenToFullscreen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 264
    goto/16 :goto_d

    .line 267
    :cond_5
    const v4, 0x7f0a08d3    # @id/state_freeform

    .line 269
    if-ne v2, v4, :cond_b

    .line 272
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 274
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 276
    move-result v2

    .line 279
    if-ne v2, v3, :cond_6

    .line 280
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 282
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 285
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 287
    move-result-object v2

    .line 290
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 291
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 293
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 296
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 298
    move-result-object v0

    .line 301
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 302
    invoke-static {v0, v1, v6, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    goto/16 :goto_d

    .line 307
    :cond_6
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 309
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 311
    move-result v2

    .line 314
    if-ne v2, v9, :cond_8

    .line 315
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 317
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiMultiWinSwitchUtils(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    .line 319
    move-result-object v2

    .line 322
    iget v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 323
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->isSupportFreeform(I)Z

    .line 325
    move-result v2

    .line 328
    if-eqz v2, :cond_7

    .line 329
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 331
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 333
    move-result-object v2

    .line 336
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 337
    invoke-static {v2, v4, v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 342
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 344
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 347
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 350
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 352
    move-result-object v2

    .line 355
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 356
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 358
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 360
    move-result-object v0

    .line 363
    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFullscreenToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    .line 364
    goto/16 :goto_d

    .line 367
    :cond_7
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 369
    goto/16 :goto_d

    .line 372
    :cond_8
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 374
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiMultiWinSwitchUtils(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    .line 376
    move-result-object v2

    .line 379
    iget v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 380
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->isSupportFreeform(I)Z

    .line 382
    move-result v2

    .line 385
    if-eqz v2, :cond_a

    .line 386
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 388
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 390
    move-result-object v2

    .line 393
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 394
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 396
    move-result-object v4

    .line 399
    iget-object v5, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 400
    invoke-static {v2, v4, v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackFromSplitStateByClick(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 402
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 405
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 407
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 410
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 413
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 415
    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 419
    move-result v2

    .line 422
    if-ne v2, v7, :cond_9

    .line 423
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 425
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 427
    move-result-object v2

    .line 430
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 431
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 433
    move-result-object v0

    .line 436
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 437
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSplitToFreeform(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 439
    goto/16 :goto_d

    .line 442
    :cond_9
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 444
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 446
    move-result-object v2

    .line 449
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 450
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplitByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 452
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 455
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 457
    move-result-object v2

    .line 460
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 461
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 463
    move-result-object v0

    .line 466
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 467
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSingleOpenToFreeform(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 469
    goto/16 :goto_d

    .line 472
    :cond_a
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 474
    goto/16 :goto_d

    .line 477
    :cond_b
    const v4, 0x7f0a08d8    # @id/state_splitleftortop

    .line 479
    const-string/jumbo v10, "unsupported activitytype"

    .line 482
    const/4 v11, 0x3

    .line 485
    const-string/jumbo v12, "switch freeform to split, bottomTask is null,something is wrong"

    .line 486
    const-string v13, "WindowDecorClick"

    .line 489
    const/4 v14, 0x0

    .line 491
    if-ne v2, v4, :cond_1c

    .line 492
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 494
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 496
    if-eqz v2, :cond_c

    .line 498
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    .line 500
    move-result-object v4

    .line 503
    invoke-virtual {v4}, Lcom/miui/xspace/XSpaceManagerStub;->getXSpaceUserId()I

    .line 504
    move-result v4

    .line 507
    if-eq v2, v4, :cond_c

    .line 508
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 510
    return-void

    .line 513
    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 514
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 516
    move-result-object v2

    .line 519
    iget v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 520
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 522
    move-result v2

    .line 525
    if-eqz v2, :cond_d

    .line 526
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 528
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 530
    move-result-object v2

    .line 533
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 534
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 536
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 538
    move-result-object v4

    .line 541
    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestSplitFocus(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 542
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 545
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 548
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 550
    move-result-object v0

    .line 553
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 554
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackSplitLOTToLOTByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 556
    goto/16 :goto_d

    .line 559
    :cond_d
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 561
    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 563
    if-eqz v4, :cond_1b

    .line 565
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 567
    move-result v2

    .line 570
    if-ne v2, v9, :cond_e

    .line 571
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 573
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 575
    move-result-object v2

    .line 578
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 579
    invoke-static {v2, v3, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackToSplitLOTStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 581
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 584
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 586
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 589
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 592
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 594
    move-result-object v2

    .line 597
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 598
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 600
    move-result-object v0

    .line 603
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 604
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFullToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 606
    goto/16 :goto_d

    .line 609
    :cond_e
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 611
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 613
    move-result v2

    .line 616
    if-ne v2, v3, :cond_19

    .line 617
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 619
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 621
    move-result-object v2

    .line 624
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 625
    invoke-static {v2, v4, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackToSplitLOTStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 627
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 630
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 632
    move-result-object v2

    .line 635
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 636
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 638
    invoke-static {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 640
    move-result-object v5

    .line 643
    invoke-static {v2, v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 644
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 647
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 650
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 652
    move-result-object v2

    .line 655
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 656
    move-result v2

    .line 659
    if-eqz v2, :cond_11

    .line 660
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 662
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 664
    move-result-object v2

    .line 667
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 668
    move-result v2

    .line 671
    if-ne v2, v7, :cond_f

    .line 672
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 674
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 676
    move-result-object v2

    .line 679
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 680
    move-result-object v2

    .line 683
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 684
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 686
    move-result-object v3

    .line 689
    invoke-virtual {v3, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 690
    move-result-object v12

    .line 693
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 694
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 696
    move-result-object v10

    .line 699
    iget-object v11, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 700
    const/4 v14, 0x1

    .line 702
    const/4 v15, 0x1

    .line 703
    move-object v13, v2

    .line 704
    invoke-static/range {v10 .. v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitByExistReplace(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V

    .line 705
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 708
    invoke-virtual {v3, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 710
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 713
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 715
    move-result-object v3

    .line 718
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 719
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 721
    move-result-object v0

    .line 724
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 725
    invoke-virtual {v3, v0, v1, v2, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformReplaceSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 727
    goto/16 :goto_d

    .line 730
    :cond_f
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 732
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 734
    move-result-object v2

    .line 737
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 738
    move-result v2

    .line 741
    if-nez v2, :cond_10

    .line 742
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 744
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 746
    move-result-object v2

    .line 749
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 750
    move-result-object v2

    .line 753
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 754
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 756
    move-result-object v3

    .line 759
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 760
    invoke-static {v3, v4, v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingleByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 762
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 765
    invoke-virtual {v3, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 767
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 770
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 772
    move-result-object v3

    .line 775
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 776
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 778
    move-result-object v0

    .line 781
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 782
    invoke-virtual {v3, v0, v1, v2, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformSqueeSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 784
    goto/16 :goto_d

    .line 787
    :cond_10
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 789
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 791
    move-result-object v2

    .line 794
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 795
    move-result v2

    .line 798
    if-ne v2, v9, :cond_43

    .line 799
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 801
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 803
    move-result-object v2

    .line 806
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 807
    move-result-object v2

    .line 810
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 811
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 813
    move-result-object v3

    .line 816
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 817
    invoke-static {v3, v4, v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingleByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 819
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 822
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 824
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 827
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 829
    move-result-object v2

    .line 832
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 833
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 835
    move-result-object v0

    .line 838
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 839
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformFillSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 841
    goto/16 :goto_d

    .line 844
    :cond_11
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 846
    move-result-object v2

    .line 849
    invoke-virtual {v2, v3, v8}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 850
    move-result-object v2

    .line 853
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 854
    move-result v3

    .line 857
    if-nez v3, :cond_13

    .line 858
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 860
    move-result v3

    .line 863
    sub-int/2addr v3, v9

    .line 864
    :goto_0
    if-ltz v3, :cond_13

    .line 865
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 867
    move-result-object v4

    .line 870
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 871
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 873
    move-result v5

    .line 876
    if-eqz v5, :cond_12

    .line 877
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 879
    move-result v5

    .line 882
    if-ne v5, v9, :cond_12

    .line 883
    move-object v14, v4

    .line 885
    goto :goto_1

    .line 886
    :cond_12
    add-int/lit8 v3, v3, -0x1

    .line 887
    goto :goto_0

    .line 889
    :cond_13
    :goto_1
    if-eqz v14, :cond_18

    .line 890
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 892
    move-result v2

    .line 895
    if-eq v2, v7, :cond_17

    .line 896
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 898
    move-result v2

    .line 901
    if-ne v2, v11, :cond_14

    .line 902
    goto :goto_2

    .line 904
    :cond_14
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 905
    move-result v2

    .line 908
    if-ne v2, v9, :cond_16

    .line 909
    iget-boolean v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 911
    if-eqz v2, :cond_15

    .line 913
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 915
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 917
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 920
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 922
    move-result-object v2

    .line 925
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 926
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 928
    move-result-object v0

    .line 931
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 932
    invoke-virtual {v2, v0, v1, v14, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 934
    goto/16 :goto_d

    .line 937
    :cond_15
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 939
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 941
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 944
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 946
    move-result-object v2

    .line 949
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 950
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 952
    move-result-object v0

    .line 955
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 956
    invoke-virtual {v2, v0, v1, v14, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSplitUnsupported(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 958
    goto/16 :goto_d

    .line 961
    :cond_16
    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    goto/16 :goto_d

    .line 966
    :cond_17
    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 968
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 970
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 973
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 975
    move-result-object v2

    .line 978
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 979
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 981
    move-result-object v0

    .line 984
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 985
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 987
    goto/16 :goto_d

    .line 990
    :cond_18
    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    goto/16 :goto_d

    .line 995
    :cond_19
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 997
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 999
    move-result-object v2

    .line 1002
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1003
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackSwapToLOTStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1005
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1008
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1010
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1013
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1016
    invoke-static {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1018
    move-result-object v1

    .line 1021
    invoke-virtual {v1, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1022
    move-result-object v1

    .line 1025
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1026
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1028
    move-result-object v2

    .line 1031
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1032
    move-result v2

    .line 1035
    if-ne v2, v7, :cond_1a

    .line 1036
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1038
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1040
    move-result-object v2

    .line 1043
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1044
    move-result-object v2

    .line 1047
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1048
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1050
    move-result-object v3

    .line 1053
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1054
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1056
    move-result-object v0

    .line 1059
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->swapSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 1060
    goto/16 :goto_d

    .line 1063
    :cond_1a
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1065
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1067
    move-result-object v2

    .line 1070
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1071
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1073
    move-result-object v0

    .line 1076
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->swapSingle(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 1077
    goto/16 :goto_d

    .line 1080
    :cond_1b
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1082
    goto/16 :goto_d

    .line 1085
    :cond_1c
    const v4, 0x7f0a08d9    # @id/state_splitrightorbottom

    .line 1087
    if-ne v2, v4, :cond_2e

    .line 1090
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1092
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1094
    if-eqz v2, :cond_1d

    .line 1096
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    .line 1098
    move-result-object v4

    .line 1101
    invoke-virtual {v4}, Lcom/miui/xspace/XSpaceManagerStub;->getXSpaceUserId()I

    .line 1102
    move-result v4

    .line 1105
    if-eq v2, v4, :cond_1d

    .line 1106
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1108
    return-void

    .line 1111
    :cond_1d
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1112
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1114
    move-result-object v2

    .line 1117
    iget v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 1118
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 1120
    move-result v2

    .line 1123
    if-eqz v2, :cond_1f

    .line 1124
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1126
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1129
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1131
    move-result-object v2

    .line 1134
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1135
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1137
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1139
    move-result-object v4

    .line 1142
    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestSplitFocus(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 1143
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 1146
    move-result-object v2

    .line 1149
    invoke-virtual {v2, v14}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 1150
    move-result v2

    .line 1153
    if-eqz v2, :cond_1e

    .line 1154
    const-string/jumbo v2, "\u53f3\u5206\u5c4f"

    .line 1156
    goto :goto_3

    .line 1159
    :cond_1e
    const-string/jumbo v2, "\u4e0b\u5206\u5c4f"

    .line 1160
    :goto_3
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1163
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1165
    move-result-object v0

    .line 1168
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1169
    invoke-static {v0, v1, v2, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    goto/16 :goto_d

    .line 1174
    :cond_1f
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1176
    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 1178
    if-eqz v4, :cond_2d

    .line 1180
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1182
    move-result v2

    .line 1185
    if-ne v2, v9, :cond_20

    .line 1186
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1188
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1190
    move-result-object v2

    .line 1193
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1194
    invoke-static {v2, v3, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackToSplitROBStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 1196
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1199
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1201
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 1204
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1207
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1209
    move-result-object v2

    .line 1212
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1213
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1215
    move-result-object v0

    .line 1218
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1219
    invoke-virtual {v2, v0, v1, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFullToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1221
    goto/16 :goto_d

    .line 1224
    :cond_20
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1226
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1228
    move-result v2

    .line 1231
    if-ne v2, v3, :cond_2b

    .line 1232
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1234
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1236
    move-result-object v2

    .line 1239
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1240
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1242
    invoke-static {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 1244
    move-result-object v5

    .line 1247
    invoke-static {v2, v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 1248
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1251
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1253
    move-result-object v2

    .line 1256
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1257
    invoke-static {v2, v4, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackToSplitROBStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenuNoAnim()V

    .line 1262
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1265
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1267
    move-result-object v2

    .line 1270
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 1271
    move-result v2

    .line 1274
    if-eqz v2, :cond_23

    .line 1275
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1277
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1279
    move-result-object v2

    .line 1282
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1283
    move-result v2

    .line 1286
    if-ne v2, v7, :cond_21

    .line 1287
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1289
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1291
    move-result-object v2

    .line 1294
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1295
    move-result-object v2

    .line 1298
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1299
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1301
    move-result-object v3

    .line 1304
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1305
    move-result-object v12

    .line 1308
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1309
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1311
    move-result-object v10

    .line 1314
    iget-object v11, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1315
    const/4 v14, 0x0

    .line 1317
    const/4 v15, 0x1

    .line 1318
    move-object v13, v2

    .line 1319
    invoke-static/range {v10 .. v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitByExistReplace(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V

    .line 1320
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1323
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1325
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1328
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1330
    move-result-object v3

    .line 1333
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1334
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1336
    move-result-object v0

    .line 1339
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1340
    invoke-virtual {v3, v0, v1, v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformReplaceSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1342
    goto/16 :goto_d

    .line 1345
    :cond_21
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1347
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1349
    move-result-object v2

    .line 1352
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1353
    move-result v2

    .line 1356
    if-nez v2, :cond_22

    .line 1357
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1359
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1361
    move-result-object v2

    .line 1364
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1365
    move-result-object v2

    .line 1368
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1369
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1371
    move-result-object v3

    .line 1374
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1375
    invoke-static {v3, v4, v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingleByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 1377
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1380
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1382
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1385
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1387
    move-result-object v2

    .line 1390
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1391
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1393
    move-result-object v0

    .line 1396
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1397
    invoke-virtual {v2, v0, v1, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformFillSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1399
    goto/16 :goto_d

    .line 1402
    :cond_22
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1404
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1406
    move-result-object v2

    .line 1409
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1410
    move-result v2

    .line 1413
    if-ne v2, v9, :cond_43

    .line 1414
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1416
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1418
    move-result-object v2

    .line 1421
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1422
    move-result-object v2

    .line 1425
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1426
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1428
    move-result-object v3

    .line 1431
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1432
    invoke-static {v3, v4, v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingleByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 1434
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1437
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1439
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1442
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1444
    move-result-object v3

    .line 1447
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1448
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1450
    move-result-object v0

    .line 1453
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1454
    invoke-virtual {v3, v0, v1, v2, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformSqueeSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1456
    goto/16 :goto_d

    .line 1459
    :cond_23
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 1461
    move-result-object v2

    .line 1464
    invoke-virtual {v2, v3, v8}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 1465
    move-result-object v2

    .line 1468
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1469
    move-result v3

    .line 1472
    if-nez v3, :cond_25

    .line 1473
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1475
    move-result v3

    .line 1478
    sub-int/2addr v3, v9

    .line 1479
    :goto_4
    if-ltz v3, :cond_25

    .line 1480
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1482
    move-result-object v4

    .line 1485
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1486
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 1488
    move-result v5

    .line 1491
    if-eqz v5, :cond_24

    .line 1492
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1494
    move-result v5

    .line 1497
    if-ne v5, v9, :cond_24

    .line 1498
    move-object v14, v4

    .line 1500
    goto :goto_5

    .line 1501
    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 1502
    goto :goto_4

    .line 1504
    :cond_25
    :goto_5
    if-eqz v14, :cond_2a

    .line 1505
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 1507
    move-result v2

    .line 1510
    if-eq v2, v7, :cond_29

    .line 1511
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 1513
    move-result v2

    .line 1516
    if-ne v2, v11, :cond_26

    .line 1517
    goto :goto_6

    .line 1519
    :cond_26
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 1520
    move-result v2

    .line 1523
    if-ne v2, v9, :cond_28

    .line 1524
    iget-boolean v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 1526
    if-eqz v2, :cond_27

    .line 1528
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1530
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1532
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1535
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1537
    move-result-object v2

    .line 1540
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1541
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1543
    move-result-object v0

    .line 1546
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1547
    invoke-virtual {v2, v0, v1, v14, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1549
    goto/16 :goto_d

    .line 1552
    :cond_27
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1554
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1556
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1559
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1561
    move-result-object v2

    .line 1564
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1565
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1567
    move-result-object v0

    .line 1570
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1571
    invoke-virtual {v2, v0, v1, v14, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSplitUnsupported(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1573
    goto/16 :goto_d

    .line 1576
    :cond_28
    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    goto/16 :goto_d

    .line 1581
    :cond_29
    :goto_6
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1583
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1585
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1588
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1590
    move-result-object v2

    .line 1593
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1594
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1596
    move-result-object v0

    .line 1599
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1600
    invoke-virtual {v2, v0, v1, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 1602
    goto/16 :goto_d

    .line 1605
    :cond_2a
    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    goto/16 :goto_d

    .line 1610
    :cond_2b
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1612
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1614
    move-result-object v2

    .line 1617
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1618
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackSwapToROBStateByClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1620
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1623
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 1625
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1628
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1631
    invoke-static {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1633
    move-result-object v1

    .line 1636
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1637
    move-result-object v1

    .line 1640
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1641
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1643
    move-result-object v2

    .line 1646
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1647
    move-result v2

    .line 1650
    if-ne v2, v7, :cond_2c

    .line 1651
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1653
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1655
    move-result-object v2

    .line 1658
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1659
    move-result-object v2

    .line 1662
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1663
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1665
    move-result-object v3

    .line 1668
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1669
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1671
    move-result-object v0

    .line 1674
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->swapSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 1675
    goto/16 :goto_d

    .line 1678
    :cond_2c
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1680
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1682
    move-result-object v2

    .line 1685
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1686
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1688
    move-result-object v0

    .line 1691
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->swapSingle(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 1692
    goto/16 :goto_d

    .line 1695
    :cond_2d
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1697
    goto/16 :goto_d

    .line 1700
    :cond_2e
    const v3, 0x7f0a08d6    # @id/state_newwindow

    .line 1702
    if-ne v2, v3, :cond_3e

    .line 1705
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 1707
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1710
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1712
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1714
    if-eqz v2, :cond_2f

    .line 1716
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1718
    move-result-object v2

    .line 1721
    const-string v4, "cn.wps.moffice_eng"

    .line 1722
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1724
    move-result v2

    .line 1727
    if-eqz v2, :cond_2f

    .line 1728
    sget-object v2, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->sWpsMultipleTaskTargetActivity:Ljava/lang/String;

    .line 1730
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    :cond_2f
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1735
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmRecentTasks(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Ljava/util/Optional;

    .line 1737
    move-result-object v2

    .line 1740
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener$$ExternalSyntheticLambda0;

    .line 1741
    invoke-direct {v4, v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;)V

    .line 1743
    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 1746
    move-result-object v2

    .line 1749
    invoke-virtual {v2, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    move-result-object v2

    .line 1753
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1754
    const/4 v4, -0x1

    .line 1756
    if-eqz v2, :cond_31

    .line 1757
    iget-object v7, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1759
    if-eqz v7, :cond_31

    .line 1761
    iget-object v7, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 1763
    if-nez v7, :cond_30

    .line 1765
    goto :goto_7

    .line 1767
    :cond_30
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 1768
    goto :goto_8

    .line 1770
    :cond_31
    :goto_7
    move v2, v4

    .line 1771
    :goto_8
    const-string v7, "Open multiple window: backgroundTaskId="

    .line 1772
    const-string v10, "MiuiWindowDecorViewModel"

    .line 1774
    invoke-static {v7, v2, v10}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 1776
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1779
    invoke-static {v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1781
    move-result-object v15

    .line 1784
    const/16 v16, 0x0

    .line 1785
    const/high16 v18, 0x2000000

    .line 1787
    const/16 v19, 0x0

    .line 1789
    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1791
    move-object/from16 v17, v3

    .line 1793
    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 1795
    move-result-object v3

    .line 1798
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1799
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1801
    move-result v7

    .line 1804
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1805
    invoke-static {v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1807
    move-result-object v11

    .line 1810
    invoke-virtual {v11}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1811
    move-result v11

    .line 1814
    if-eqz v11, :cond_32

    .line 1815
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1817
    invoke-static {v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1819
    move-result-object v11

    .line 1822
    invoke-virtual {v11}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 1823
    move-result v11

    .line 1826
    if-ne v11, v9, :cond_33

    .line 1827
    :cond_32
    move v8, v9

    .line 1829
    :cond_33
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 1830
    move-result v11

    .line 1833
    const/high16 v12, 0x10000000

    .line 1834
    const/high16 v13, 0x8000000

    .line 1836
    const-string v14, "Failed to open freeform because freeform launch options is null!"

    .line 1838
    const-string/jumbo v15, "\u5e94\u7528\u591a\u5f00"

    .line 1840
    if-eqz v11, :cond_37

    .line 1843
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1845
    invoke-static {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1847
    move-result-object v5

    .line 1850
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1851
    invoke-static {v5, v7, v6, v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 1856
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1858
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 1861
    move-result-object v6

    .line 1864
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1865
    invoke-static {v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1867
    move-result-object v7

    .line 1870
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1871
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1873
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1875
    move-result-object v1

    .line 1878
    invoke-virtual {v6, v7, v1, v9}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/ActivityOptions;

    .line 1879
    move-result-object v1

    .line 1882
    if-nez v1, :cond_34

    .line 1883
    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void

    .line 1888
    :cond_34
    if-eq v2, v4, :cond_36

    .line 1889
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1891
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->hasFreeformDesktopMemory(I)Z

    .line 1894
    move-result v4

    .line 1897
    if-eqz v4, :cond_35

    .line 1898
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->getFreeformLastPosition(I)Landroid/graphics/Rect;

    .line 1900
    move-result-object v2

    .line 1903
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 1904
    :cond_35
    const/4 v2, 0x0

    .line 1907
    goto :goto_9

    .line 1908
    :cond_36
    new-instance v2, Landroid/content/Intent;

    .line 1909
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1911
    invoke-virtual {v2, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1914
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1917
    :goto_9
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 1920
    move-result-object v1

    .line 1923
    invoke-virtual {v5, v3, v2, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 1924
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1927
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1929
    move-result-object v0

    .line 1932
    invoke-virtual {v0, v5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1933
    goto/16 :goto_d

    .line 1936
    :cond_37
    if-ne v7, v9, :cond_38

    .line 1938
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1940
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1942
    move-result-object v4

    .line 1945
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1946
    invoke-static {v4, v1, v5, v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1951
    invoke-static {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 1953
    move-result-object v1

    .line 1956
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1957
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1959
    move-result-object v0

    .line 1962
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->openWindowFromFullscreen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;ILandroid/app/PendingIntent;)V

    .line 1963
    goto/16 :goto_d

    .line 1966
    :cond_38
    const/4 v5, 0x6

    .line 1968
    if-ne v7, v5, :cond_3a

    .line 1969
    if-eqz v8, :cond_39

    .line 1971
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1973
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 1975
    move-result-object v4

    .line 1978
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1979
    invoke-static {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1981
    move-result-object v5

    .line 1984
    iget-object v6, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1985
    invoke-static {v4, v5, v6, v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackFromSplitStateByClick(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 1987
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1990
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1992
    move-result-object v4

    .line 1995
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1996
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1998
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 2000
    move-result v1

    .line 2003
    xor-int/2addr v1, v9

    .line 2004
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2005
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2007
    move-result-object v4

    .line 2010
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2011
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2013
    move-result-object v0

    .line 2016
    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->openWindowFromSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;ILandroid/app/PendingIntent;I)V

    .line 2017
    goto/16 :goto_d

    .line 2020
    :cond_39
    const/4 v5, 0x6

    .line 2022
    :cond_3a
    if-ne v7, v5, :cond_3b

    .line 2023
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2025
    invoke-static {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2027
    move-result-object v5

    .line 2030
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2031
    invoke-static {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2033
    move-result-object v6

    .line 2036
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2037
    invoke-static {v5, v6, v7, v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackFromSplitStateByClick(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 2039
    goto :goto_a

    .line 2042
    :cond_3b
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2043
    invoke-static {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2045
    move-result-object v5

    .line 2048
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2049
    invoke-static {v5, v7, v6, v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    :goto_a
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 2054
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 2056
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2059
    move-result-object v6

    .line 2062
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2063
    invoke-static {v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2065
    move-result-object v7

    .line 2068
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2069
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2071
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2073
    move-result-object v1

    .line 2076
    invoke-virtual {v6, v7, v1, v9}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/ActivityOptions;

    .line 2077
    move-result-object v1

    .line 2080
    if-nez v1, :cond_3c

    .line 2081
    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    return-void

    .line 2086
    :cond_3c
    if-eq v2, v4, :cond_3d

    .line 2087
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2089
    const/4 v2, 0x0

    .line 2092
    goto :goto_b

    .line 2093
    :cond_3d
    new-instance v2, Landroid/content/Intent;

    .line 2094
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2096
    invoke-virtual {v2, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2099
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2102
    :goto_b
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 2105
    move-result-object v1

    .line 2108
    invoke-virtual {v5, v3, v2, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 2109
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2112
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2114
    move-result-object v0

    .line 2117
    invoke-virtual {v0, v5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 2118
    goto/16 :goto_d

    .line 2121
    :cond_3e
    const v3, 0x7f0a08d2    # @id/state_close

    .line 2123
    if-ne v2, v3, :cond_43

    .line 2126
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2128
    const/4 v3, 0x7

    .line 2130
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMultiwinSwitchStart(I)V

    .line 2131
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 2134
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2137
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2139
    move-result v2

    .line 2142
    const-string/jumbo v3, "\u5173\u95ed"

    .line 2143
    const/4 v4, 0x6

    .line 2146
    if-ne v2, v4, :cond_40

    .line 2147
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2149
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2151
    move-result-object v2

    .line 2154
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2155
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2157
    move-result-object v4

    .line 2160
    iget-object v5, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2161
    invoke-static {v2, v4, v5, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackFromSplitStateByClick(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)V

    .line 2163
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2166
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2168
    move-result-object v2

    .line 2171
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 2172
    move-result v2

    .line 2175
    if-ne v2, v7, :cond_3f

    .line 2176
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2178
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2180
    move-result-object v2

    .line 2183
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2184
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2186
    move-result-object v0

    .line 2189
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2190
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->closeTaskFromFullSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2192
    goto/16 :goto_d

    .line 2195
    :cond_3f
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2197
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2199
    move-result-object v2

    .line 2202
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2203
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplitByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2205
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2208
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2210
    move-result-object v2

    .line 2213
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2214
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2216
    move-result-object v0

    .line 2219
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2220
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->closeTaskFromSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2222
    goto :goto_d

    .line 2225
    :cond_40
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2226
    move-result v2

    .line 2229
    if-eqz v2, :cond_41

    .line 2230
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2232
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2234
    move-result v2

    .line 2237
    if-ne v2, v9, :cond_41

    .line 2238
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2240
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2242
    move-result-object v2

    .line 2245
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2246
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2248
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->showOtherFreeform(I)V

    .line 2250
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2253
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2255
    move-result-object v2

    .line 2258
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2259
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 2261
    invoke-static {v2, v4, v7, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->dtkTrackStateCloseFromFullOrFreeForm(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;I)V

    .line 2263
    :cond_41
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2266
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2268
    move-result v2

    .line 2271
    if-ne v2, v9, :cond_42

    .line 2272
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2274
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2276
    move-result-object v2

    .line 2279
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2280
    invoke-static {v2, v4, v5, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    goto :goto_c

    .line 2285
    :cond_42
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2286
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2288
    move-result-object v2

    .line 2291
    iget-object v4, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2292
    invoke-static {v2, v4, v6, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowControlButtonClick(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2297
    invoke-static {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;

    .line 2299
    move-result-object v2

    .line 2302
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2303
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2305
    invoke-static {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2307
    move-result-object v4

    .line 2310
    invoke-static {v2, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 2311
    :goto_c
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2314
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2316
    move-result-object v0

    .line 2319
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2320
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->minimizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2322
    iget-object v0, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2325
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2327
    const/high16 v1, 0x200000

    .line 2329
    invoke-static {v1, v0}, Lmiui/app/MiuiFreeFormManager;->dispatchFreeFormStackModeChanged(II)V

    .line 2331
    :cond_43
    :goto_d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a01c2    # @id/caption_handle

    .line 6
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 19
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 21
    move-result-object p1

    .line 24
    iget p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->mTaskId:I

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 31
    move-result p2

    .line 34
    const/4 v0, 0x6

    .line 35
    if-ne p2, v0, :cond_1

    .line 36
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 38
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 40
    move-result-object p2

    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 44
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestSplitFocus(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 54
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->-$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 60
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0
    .line 64
.end method
