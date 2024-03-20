.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$3:Landroid/app/PendingIntent;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$3:Landroid/app/PendingIntent;

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$4:Z

    .line 13
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$5:Z

    .line 15
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$6:Z

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 4
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$3:Landroid/app/PendingIntent;

    .line 10
    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$4:Z

    .line 12
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$5:Z

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$6:Z

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v14, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 21
    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    .line 23
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 28
    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterPanelCollapsed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterPanelCollapsed$2;

    .line 30
    iget-object v6, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 32
    const-string v7, "NotifActivityStarter"

    .line 34
    const/4 v10, 0x0

    .line 36
    invoke-virtual {v6, v7, v2, v3, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 37
    move-result-object v2

    .line 40
    invoke-static {v8, v2, v6, v2}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 41
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 44
    move-result-object v2

    .line 47
    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    const/16 v2, 0x10

    .line 51
    if-eqz v15, :cond_1

    .line 53
    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 55
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 57
    move-result-object v3

    .line 60
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 61
    and-int/2addr v3, v2

    .line 63
    if-eq v3, v2, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v2, 0x1

    .line 68
    :goto_0
    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    .line 71
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 75
    move-result v2

    .line 78
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 81
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 87
    invoke-virtual {v3, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 89
    move-result v3

    .line 92
    if-eqz v3, :cond_1

    .line 93
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 95
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 97
    move-result-object v11

    .line 100
    invoke-virtual {v3, v2, v11, v14}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    .line 101
    move-result v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeHunAfterClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 107
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    .line 110
    goto/16 :goto_16

    .line 113
    :cond_1
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    move-result v2

    .line 120
    if-nez v2, :cond_2

    .line 121
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 123
    goto :goto_1

    .line 125
    :cond_2
    move-object v2, v10

    .line 126
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v3

    .line 130
    iget-object v12, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 131
    if-nez v3, :cond_4

    .line 133
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 135
    if-eqz v3, :cond_3

    .line 137
    iget-object v3, v3, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 139
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 141
    move-result v3

    .line 144
    if-eqz v3, :cond_3

    .line 145
    const/4 v3, 0x1

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    const/4 v3, 0x0

    .line 149
    :goto_2
    if-nez v3, :cond_4

    .line 150
    new-instance v3, Landroid/content/Intent;

    .line 152
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 154
    const-string v11, "android.remoteInputDraft"

    .line 157
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 162
    invoke-virtual {v3, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    move-result-object v2

    .line 166
    move-object/from16 v16, v2

    .line 167
    goto :goto_3

    .line 169
    :cond_4
    move-object/from16 v16, v10

    .line 170
    :goto_3
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 172
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 174
    move-result v17

    .line 177
    iget-object v11, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    .line 178
    if-eqz v17, :cond_7

    .line 180
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 182
    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logExpandingBubble$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logExpandingBubble$2;

    .line 184
    invoke-virtual {v6, v7, v0, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 186
    move-result-object v0

    .line 189
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 190
    move-result-object v2

    .line 193
    invoke-interface {v0, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v6, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 197
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeHunAfterClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 200
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 203
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 205
    move-result v2

    .line 208
    if-nez v2, :cond_5

    .line 209
    goto :goto_4

    .line 211
    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 212
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    .line 216
    move-result v2

    .line 219
    if-eqz v2, :cond_6

    .line 220
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 225
    check-cast v0, Lcom/android/systemui/wmshell/BubblesManager;

    .line 226
    invoke-virtual {v0, v8}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 228
    move-result-object v2

    .line 231
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    .line 232
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 234
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 236
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 238
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda3;

    .line 240
    const/4 v5, 0x1

    .line 242
    invoke-direct {v4, v0, v2, v5}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;I)V

    .line 243
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 246
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 251
    check-cast v0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 253
    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade()Z

    .line 255
    goto :goto_4

    .line 258
    :cond_6
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;

    .line 259
    const/4 v2, 0x2

    .line 261
    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Ljava/lang/Object;I)V

    .line 262
    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :goto_4
    move-object/from16 v18, v11

    .line 268
    move-object/from16 v19, v12

    .line 270
    move-object/from16 v20, v13

    .line 272
    move-object/from16 v21, v14

    .line 274
    goto/16 :goto_a

    .line 276
    :cond_7
    move-object v3, v1

    .line 278
    check-cast v3, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter;

    .line 279
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 281
    move-result-object v2

    .line 284
    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    .line 285
    invoke-static {v6, v2}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;

    .line 287
    move-result-object v2

    .line 290
    if-eqz v2, :cond_8

    .line 291
    const/4 v10, 0x1

    .line 293
    goto :goto_5

    .line 294
    :cond_8
    const/4 v10, 0x0

    .line 295
    :goto_5
    move-object/from16 p0, v2

    .line 296
    const-string v2, "MiuiMultiWindowUtils"

    .line 298
    if-eqz v0, :cond_9

    .line 300
    move-object/from16 v18, v11

    .line 302
    const-string/jumbo v11, "startSmallFreeformFromNotification"

    .line 304
    move-object/from16 v19, v12

    .line 307
    :try_start_1
    const-class v12, Lmiui/app/MiuiFreeFormManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 309
    move-object/from16 v20, v13

    .line 311
    const/4 v13, 0x1

    .line 313
    :try_start_2
    new-array v13, v13, [Ljava/lang/Class;

    .line 314
    const-class v21, Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 316
    const/16 v22, 0x0

    .line 318
    :try_start_3
    aput-object v21, v13, v22

    .line 320
    invoke-virtual {v12, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 322
    move-result-object v12

    .line 325
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 326
    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 329
    move-object/from16 v21, v14

    .line 330
    const/4 v14, 0x0

    .line 332
    :try_start_4
    invoke-virtual {v12, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 333
    goto :goto_9

    .line 336
    :catch_1
    move-object/from16 v21, v14

    .line 337
    goto :goto_8

    .line 339
    :catch_2
    :goto_6
    move-object/from16 v21, v14

    .line 340
    goto :goto_7

    .line 342
    :catch_3
    move-object/from16 v20, v13

    .line 343
    goto :goto_6

    .line 345
    :goto_7
    const/16 v22, 0x0

    .line 346
    :catch_4
    :goto_8
    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto :goto_9

    .line 351
    :cond_9
    move-object/from16 v18, v11

    .line 352
    move-object/from16 v19, v12

    .line 354
    move-object/from16 v20, v13

    .line 356
    move-object/from16 v21, v14

    .line 358
    const/16 v22, 0x0

    .line 360
    :goto_9
    move/from16 v11, v22

    .line 362
    iget-object v14, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    .line 364
    if-nez v10, :cond_a

    .line 366
    if-eqz v0, :cond_a

    .line 368
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 373
    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;

    .line 375
    iget-object v6, v14, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 377
    const/4 v10, 0x0

    .line 379
    invoke-virtual {v6, v7, v0, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 380
    move-result-object v0

    .line 383
    invoke-static {v8, v0, v6, v0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 384
    :try_start_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;

    .line 387
    iget-object v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    .line 389
    const/4 v6, 0x0

    .line 391
    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->getAnimatorController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;

    .line 392
    move-result-object v2

    .line 395
    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 396
    invoke-direct {v0, v2, v6, v15}, Lcom/android/systemui/statusbar/phone/StatusBarLaunchAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Z)V

    .line 398
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 401
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 403
    move-result-object v11

    .line 406
    new-instance v12, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;

    .line 407
    move-object v2, v12

    .line 409
    move-object/from16 v6, v16

    .line 410
    move-object v7, v8

    .line 412
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 413
    invoke-virtual {v10, v0, v9, v11, v12}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_5

    .line 416
    goto :goto_a

    .line 419
    :catch_5
    move-exception v0

    .line 420
    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendingIntentFailed(Ljava/lang/Exception;)V

    .line 421
    :goto_a
    move v3, v15

    .line 424
    move-object/from16 v6, v18

    .line 425
    move-object/from16 v7, v19

    .line 427
    move-object/from16 v23, v20

    .line 429
    move-object/from16 v24, v21

    .line 431
    goto/16 :goto_f

    .line 433
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 438
    sget-object v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;

    .line 440
    iget-object v9, v14, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 442
    const/4 v10, 0x0

    .line 444
    invoke-virtual {v9, v7, v0, v4, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 445
    move-result-object v0

    .line 448
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 449
    move-result-object v4

    .line 452
    invoke-interface {v0, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v9, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 456
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 459
    move-result-object v0

    .line 462
    const-string v4, "quick_reply"

    .line 463
    const/4 v6, -0x2

    .line 465
    invoke-static {v0, v4, v11, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 466
    move-result v0

    .line 469
    const/4 v4, 0x1

    .line 470
    if-ne v0, v4, :cond_d

    .line 471
    :try_start_6
    const-class v0, Lmiui/app/MiuiFreeFormManager;

    .line 473
    const-string v6, "getAllFreeFormStackInfosOnDisplay"

    .line 475
    new-array v7, v4, [Ljava/lang/Class;

    .line 477
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 479
    aput-object v9, v7, v11

    .line 481
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 483
    move-result-object v0

    .line 486
    new-array v4, v4, [Ljava/lang/Object;

    .line 487
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    move-result-object v6

    .line 492
    aput-object v6, v4, v11

    .line 493
    const/4 v6, 0x0

    .line 495
    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-result-object v0

    .line 499
    check-cast v0, Ljava/util/List;

    .line 500
    if-eqz v0, :cond_d

    .line 502
    const-class v4, Landroid/util/MiuiMultiWindowAdapter;

    .line 504
    const-string v6, "isInTopGameList"

    .line 506
    const/4 v7, 0x1

    .line 508
    new-array v7, v7, [Ljava/lang/Class;

    .line 509
    const-class v9, Ljava/lang/String;

    .line 511
    aput-object v9, v7, v11

    .line 513
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 515
    move-result-object v4

    .line 518
    const-class v6, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 519
    const-string/jumbo v7, "windowState"

    .line 521
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 524
    move-result-object v6

    .line 527
    const-class v7, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 528
    const-string v9, "inPinMode"

    .line 530
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 532
    move-result-object v7

    .line 535
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 536
    move-result-object v9

    .line 539
    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;

    .line 540
    invoke-direct {v10, v7, v4, v11}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/AccessibleObject;I)V

    .line 542
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 545
    move-result-object v9

    .line 548
    invoke-interface {v9}, Ljava/util/stream/Stream;->count()J

    .line 549
    move-result-wide v9

    .line 552
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 553
    move-result-object v0

    .line 556
    new-instance v12, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;

    .line 557
    const/4 v13, 0x1

    .line 559
    invoke-direct {v12, v6, v7, v13}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/AccessibleObject;I)V

    .line 560
    invoke-interface {v0, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 563
    move-result-object v0

    .line 566
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    .line 567
    move-result-wide v6

    .line 570
    new-array v0, v13, [Ljava/lang/Object;

    .line 571
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 573
    move-result-object v12

    .line 576
    aput-object v12, v0, v11

    .line 577
    const/4 v12, 0x0

    .line 579
    invoke-virtual {v4, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-result-object v0

    .line 583
    check-cast v0, Ljava/lang/Boolean;

    .line 584
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 586
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 589
    if-eqz v0, :cond_b

    .line 590
    const-wide/16 v12, 0x1

    .line 592
    cmp-long v0, v9, v12

    .line 594
    if-gez v0, :cond_c

    .line 596
    :cond_b
    const-wide/16 v9, 0x2

    .line 598
    cmp-long v0, v6, v9

    .line 600
    if-ltz v0, :cond_d

    .line 602
    :cond_c
    :try_start_7
    const-string v0, "in game and already have 1 game in pinMode"

    .line 604
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 606
    const/4 v2, 0x0

    .line 609
    goto :goto_c

    .line 610
    :catch_6
    const/4 v0, 0x0

    .line 611
    goto :goto_b

    .line 612
    :catch_7
    move-object/from16 v0, p0

    .line 613
    :goto_b
    const-string v4, "UnsupportedOperationException"

    .line 615
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    move-object v2, v0

    .line 620
    goto :goto_c

    .line 621
    :cond_d
    move-object/from16 v2, p0

    .line 622
    :goto_c
    :try_start_8
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    .line 624
    const/4 v0, 0x0

    .line 626
    const/4 v13, 0x0

    .line 627
    const/4 v3, 0x0

    .line 628
    const/4 v4, 0x0

    .line 629
    if-eqz v2, :cond_e

    .line 630
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 632
    move-result-object v2

    .line 635
    goto :goto_d

    .line 636
    :cond_e
    const/4 v2, 0x0

    .line 637
    invoke-static {v11, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    .line 638
    move-result-object v2
    :try_end_8
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8 .. :try_end_8} :catch_a

    .line 641
    :goto_d
    move-object v9, v5

    .line 642
    move-object/from16 v6, v18

    .line 643
    move v11, v0

    .line 645
    move-object/from16 v7, v19

    .line 646
    move-object/from16 v12, v16

    .line 648
    move-object/from16 v23, v20

    .line 650
    move-object/from16 v25, v14

    .line 652
    move-object/from16 v24, v21

    .line 654
    move-object v14, v3

    .line 656
    move v3, v15

    .line 657
    move-object v15, v4

    .line 658
    move-object/from16 v16, v2

    .line 659
    :try_start_9
    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9 .. :try_end_9} :catch_9

    .line 661
    const/4 v0, -0x1

    .line 664
    move-object/from16 v2, v25

    .line 665
    :try_start_a
    invoke-virtual {v2, v8, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendPendingIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;I)V
    :try_end_a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_a} :catch_8

    .line 667
    goto :goto_f

    .line 670
    :catch_8
    move-exception v0

    .line 671
    goto :goto_e

    .line 672
    :catch_9
    move-exception v0

    .line 673
    move-object/from16 v2, v25

    .line 674
    goto :goto_e

    .line 676
    :catch_a
    move-exception v0

    .line 677
    move-object v2, v14

    .line 678
    move v3, v15

    .line 679
    move-object/from16 v6, v18

    .line 680
    move-object/from16 v7, v19

    .line 682
    move-object/from16 v23, v20

    .line 684
    move-object/from16 v24, v21

    .line 686
    :goto_e
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendingIntentFailed(Ljava/lang/Exception;)V

    .line 688
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 691
    :goto_f
    if-nez v3, :cond_f

    .line 694
    if-eqz v17, :cond_10

    .line 696
    :cond_f
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManagerLazy:Ldagger/Lazy;

    .line 698
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 700
    move-result-object v0

    .line 703
    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    .line 704
    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 706
    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    .line 708
    :cond_10
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 711
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 713
    move-result-object v0

    .line 716
    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 717
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 719
    move-result v0

    .line 722
    if-nez v0, :cond_12

    .line 723
    sget-boolean v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->animationPending:Z

    .line 725
    if-nez v0, :cond_11

    .line 727
    goto :goto_10

    .line 729
    :cond_11
    const/4 v0, 0x0

    .line 730
    goto :goto_11

    .line 731
    :cond_12
    :goto_10
    const/4 v0, 0x1

    .line 732
    :goto_11
    if-eqz v0, :cond_13

    .line 733
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    .line 735
    :cond_13
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 738
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 740
    const/4 v2, 0x1

    .line 742
    invoke-virtual {v0, v8, v2}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 743
    move-result-object v0

    .line 746
    if-nez v17, :cond_16

    .line 747
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 749
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 751
    move-result-object v2

    .line 754
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 755
    const/16 v3, 0x10

    .line 757
    and-int/2addr v2, v3

    .line 759
    if-eq v2, v3, :cond_14

    .line 760
    const/4 v2, 0x0

    .line 762
    goto :goto_12

    .line 763
    :cond_14
    const/4 v2, 0x1

    .line 764
    :goto_12
    if-nez v2, :cond_15

    .line 765
    move-object/from16 v2, v24

    .line 767
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    .line 769
    move-result v3

    .line 772
    if-eqz v3, :cond_17

    .line 773
    goto :goto_13

    .line 775
    :cond_15
    move-object/from16 v2, v24

    .line 776
    :goto_13
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 778
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;

    .line 783
    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;)V

    .line 785
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 788
    const/4 v5, 0x1

    .line 790
    invoke-virtual {v3, v8, v5, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->registerFutureDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 791
    move-result-object v3

    .line 794
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;

    .line 795
    invoke-direct {v4, v1, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Ljava/lang/Object;I)V

    .line 797
    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    goto :goto_14

    .line 803
    :cond_16
    move-object/from16 v2, v24

    .line 804
    :cond_17
    :goto_14
    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 806
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 808
    move-result v3

    .line 811
    if-nez v3, :cond_18

    .line 812
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 814
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 816
    goto :goto_15

    .line 819
    :cond_18
    new-instance v0, Ljava/lang/Exception;

    .line 820
    const-string v2, "FocusNotification don\'t call onClick"

    .line 822
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 824
    move-object/from16 v2, v23

    .line 827
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendingIntentFailed(Ljava/lang/Exception;)V

    .line 829
    :goto_15
    const/4 v0, 0x0

    .line 832
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    .line 833
    :goto_16
    return-void
    .line 835
.end method
