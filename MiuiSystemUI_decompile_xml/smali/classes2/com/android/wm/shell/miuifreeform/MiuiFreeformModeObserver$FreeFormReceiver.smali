.class final Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final ACTION_FULLSCREEN_STATE_CHANGE:Ljava/lang/String; = "com.miui.fullscreen_state_change"

.field private static final EXTRA_FULLSCREEN_STATE_NAME:Ljava/lang/String; = "state"

.field private static final FREEFORM_STATE_TO_TASK_SNAPSHOT:Ljava/lang/String; = "taskSnapshot"

.field private static final FULLSCREEN_STATE_TO_HOME:Ljava/lang/String; = "toHome"

.field private static final FULLSCREEN_STATE_TO_RECENTS:Ljava/lang/String; = "toRecents"

.field private static final STATE_CLOSE_WINDOW:Ljava/lang/String; = "closeWindow"


# instance fields
.field mFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 12
    const-string v0, "com.miui.fullscreen_state_change"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 19
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 26
    const-string p1, "miui.intent.action_launch_fullscreen_from_freeform"

    .line 28
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    return-void
    .line 33
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string p1, "MiuiFreeformModeObserver"

    .line 2
    const-string v0, "ACTION_LAUNCH_FULLSCREEN_FROM_FREEFORM packageName: "

    .line 4
    const-string v1, "ACTION_FULLSCREEN_STATE_CHANGE stateName: "

    .line 6
    const-string v2, "exit freeform for user switch new userId: "

    .line 8
    const-string v3, "handleFreeFormReceiver intent="

    .line 10
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    move-result-object v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, " ,action="

    .line 24
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v3, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.intent.extra.user_handle"

    .line 53
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    move-result p2

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 65
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 69
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->exitAllFreeform()V

    .line 75
    goto/16 :goto_1

    .line 78
    :cond_0
    const-string v2, "com.miui.fullscreen_state_change"

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 85
    if-eqz v2, :cond_8

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 88
    move-result-object p2

    .line 91
    if-nez p2, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    const-string/jumbo v0, "state"

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string/jumbo p1, "toHome"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p1

    .line 123
    const/4 v0, -0x1

    .line 124
    if-nez p1, :cond_5

    .line 125
    const-string/jumbo p1, "toRecents"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result p1

    .line 133
    if-eqz p1, :cond_2

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    const-string/jumbo p1, "taskSnapshot"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 146
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 148
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->snapshotAllFreeform()V

    .line 152
    goto/16 :goto_1

    .line 155
    :cond_3
    const-string p1, "closeWindow"

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p1

    .line 162
    if-eqz p1, :cond_a

    .line 163
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 165
    move-result p1

    .line 168
    if-eqz p1, :cond_a

    .line 169
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 171
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 173
    move-result-object p1

    .line 176
    invoke-virtual {p1, v0, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->preAutoLayout(IZ)Z

    .line 177
    move-result p1

    .line 180
    if-eqz p1, :cond_4

    .line 181
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 183
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 185
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->updateBoundsToAutoLayoutResult()V

    .line 189
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 192
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 194
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->showAllHiddenFreeform()V

    .line 198
    goto/16 :goto_1

    .line 201
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 203
    move-result p1

    .line 206
    if-eqz p1, :cond_7

    .line 207
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 209
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 211
    move-result-object p1

    .line 214
    invoke-virtual {p1, v0, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->preAutoLayout(IZ)Z

    .line 215
    move-result p1

    .line 218
    if-eqz p1, :cond_6

    .line 219
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 221
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 223
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->updateBoundsToAutoLayoutResult()V

    .line 227
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 230
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 232
    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->showAllHiddenFreeform()V

    .line 236
    goto :goto_1

    .line 239
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 240
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 242
    move-result-object p0

    .line 245
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->allFreeformFromFreeformToMini()V

    .line 246
    goto :goto_1

    .line 249
    :cond_8
    const-string v1, "miui.intent.action_launch_fullscreen_from_freeform"

    .line 250
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v1

    .line 255
    if-eqz v1, :cond_a

    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 258
    move-result-object p2

    .line 261
    if-nez p2, :cond_9

    .line 262
    return-void

    .line 264
    :cond_9
    const-string v1, "packageName"

    .line 265
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v1

    .line 270
    const-string/jumbo v2, "userID"

    .line 271
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 274
    move-result p2

    .line 277
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 278
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 280
    move-result-object v2

    .line 283
    invoke-virtual {v2, v1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeFormModeTask(Ljava/lang/String;I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 284
    move-result-object v2

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, " userId: "

    .line 296
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string p2, " miuiFreeformModeTaskInfo: "

    .line 304
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object p2

    .line 315
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz v2, :cond_a

    .line 319
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$FreeFormReceiver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 321
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 323
    move-result-object p0

    .line 326
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 327
    move-result-object p0

    .line 330
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 331
    move-result-object p0

    .line 334
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMaximizeShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_1

    .line 338
    :catch_0
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :cond_a
    :goto_1
    return-void
    .line 343
.end method
