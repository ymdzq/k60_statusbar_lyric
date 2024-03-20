.class Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScUtilsImpl;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->val$context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "wmshell.sosc_enable"

    .line 8
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 16
    if-ne v0, v2, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-static {v1, v2}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fputSOSC_ENABLE(Lcom/android/wm/shell/sosc/SoScUtilsImpl;Z)V

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 25
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 27
    move-result-object v0

    .line 30
    if-eqz v0, :cond_6

    .line 31
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 33
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 38
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetSOSC_ENABLE(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 46
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmStageCoordinator(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateTaskAdjacent(Landroid/window/WindowContainerTransaction;)V

    .line 52
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 56
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getSplitController()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 60
    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getSplitController()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateTaskAdjacent(Landroid/window/WindowContainerTransaction;)V

    .line 74
    :cond_2
    :goto_1
    if-nez p1, :cond_5

    .line 77
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 79
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmMixedHandler(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 81
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 87
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmMixedHandler(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 89
    move-result-object p1

    .line 92
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 93
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetSOSC_ENABLE(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Z

    .line 95
    move-result v1

    .line 98
    iget-object v2, p1, Lcom/android/wm/shell/transition/SoScMixedHandler;->mDefaultMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 99
    if-nez v2, :cond_3

    .line 101
    goto :goto_2

    .line 103
    :cond_3
    iget-object v3, p1, Lcom/android/wm/shell/transition/SoScMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 104
    if-eqz v1, :cond_4

    .line 106
    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 118
    iget-object v1, p1, Lcom/android/wm/shell/transition/SoScMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 121
    if-eqz v1, :cond_5

    .line 123
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p1, p1, Lcom/android/wm/shell/transition/SoScMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 130
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    goto :goto_2

    .line 137
    :cond_4
    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 148
    iget-object v1, p1, Lcom/android/wm/shell/transition/SoScMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 151
    if-eqz v1, :cond_5

    .line 153
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p1, Lcom/android/wm/shell/transition/SoScMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 160
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$2;->this$0:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 167
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/sosc/SoScUtilsImpl;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 169
    move-result-object p0

    .line 172
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 173
    :cond_6
    return-void
    .line 176
.end method
