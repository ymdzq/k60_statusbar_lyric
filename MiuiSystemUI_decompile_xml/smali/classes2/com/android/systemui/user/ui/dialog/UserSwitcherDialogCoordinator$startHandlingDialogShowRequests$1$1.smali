.class public final Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    iget v2, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->$r8$classId:I

    .line 6
    iget-object v0, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    .line 8
    const/4 v3, 0x0

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    goto/16 :goto_3

    .line 14
    :pswitch_0
    move-object/from16 v2, p1

    .line 16
    check-cast v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;

    .line 18
    instance-of v4, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    .line 20
    if-eqz v4, :cond_0

    .line 22
    new-instance v4, Lkotlin/Pair;

    .line 24
    new-instance v5, Lcom/android/settingslib/users/UserCreatingDialog;

    .line 26
    iget-object v6, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 28
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 30
    move-result-object v6

    .line 33
    check-cast v6, Landroid/content/Context;

    .line 34
    move-object v7, v2

    .line 36
    check-cast v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const/4 v7, 0x1

    .line 42
    invoke-direct {v5, v6, v7}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    .line 43
    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    goto/16 :goto_0

    .line 49
    :cond_0
    instance-of v4, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 51
    const-string v5, "exit_guest_mode"

    .line 53
    const/16 v6, 0x3b

    .line 55
    if-eqz v4, :cond_1

    .line 57
    new-instance v4, Lkotlin/Pair;

    .line 59
    new-instance v15, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 61
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 63
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 65
    move-result-object v7

    .line 68
    move-object v8, v7

    .line 69
    check-cast v8, Landroid/content/Context;

    .line 70
    move-object v7, v2

    .line 72
    check-cast v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 73
    iget v9, v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 75
    iget-boolean v10, v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    .line 77
    iget v11, v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 79
    iget-boolean v12, v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 81
    iget-object v13, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    .line 83
    invoke-interface {v13}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 85
    move-result-object v13

    .line 88
    check-cast v13, Lcom/android/systemui/plugins/FalsingManager;

    .line 89
    iget-object v14, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 91
    invoke-interface {v14}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 93
    move-result-object v14

    .line 96
    check-cast v14, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 97
    new-instance v3, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    .line 99
    iget-object v7, v7, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 101
    invoke-direct {v3, v7}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 103
    move-object v7, v15

    .line 106
    move-object/from16 v16, v15

    .line 107
    move-object v15, v3

    .line 109
    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;-><init>(Landroid/content/Context;IZIZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;)V

    .line 110
    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    .line 113
    invoke-direct {v3, v6, v5}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 115
    move-object/from16 v5, v16

    .line 118
    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    goto :goto_0

    .line 123
    :cond_1
    instance-of v3, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;

    .line 124
    if-eqz v3, :cond_2

    .line 126
    new-instance v4, Lkotlin/Pair;

    .line 128
    new-instance v3, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;

    .line 130
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 132
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 134
    move-result-object v7

    .line 137
    move-object v8, v7

    .line 138
    check-cast v8, Landroid/content/Context;

    .line 139
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userDetailAdapterProvider:Ljavax/inject/Provider;

    .line 141
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 143
    move-result-object v7

    .line 146
    move-object v9, v7

    .line 147
    check-cast v9, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    .line 148
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->eventLogger:Ldagger/Lazy;

    .line 150
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 152
    move-result-object v7

    .line 155
    move-object v10, v7

    .line 156
    check-cast v10, Lcom/android/internal/logging/UiEventLogger;

    .line 157
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    .line 159
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 161
    move-result-object v7

    .line 164
    move-object v11, v7

    .line 165
    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    .line 166
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->activityStarter:Ldagger/Lazy;

    .line 168
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 170
    move-result-object v7

    .line 173
    move-object v12, v7

    .line 174
    check-cast v12, Lcom/android/systemui/plugins/ActivityStarter;

    .line 175
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 177
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 179
    move-result-object v7

    .line 182
    move-object v13, v7

    .line 183
    check-cast v13, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 184
    move-object v7, v3

    .line 186
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 187
    new-instance v7, Lcom/android/systemui/animation/DialogCuj;

    .line 190
    invoke-direct {v7, v6, v5}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 192
    invoke-direct {v4, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    instance-of v3, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;

    .line 199
    if-eqz v3, :cond_7

    .line 201
    new-instance v4, Lkotlin/Pair;

    .line 203
    new-instance v3, Lcom/android/systemui/user/UserSwitchFullscreenDialog;

    .line 205
    iget-object v5, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    .line 207
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 209
    move-result-object v5

    .line 212
    check-cast v5, Landroid/content/Context;

    .line 213
    iget-object v6, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingCollector:Ldagger/Lazy;

    .line 215
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 217
    move-result-object v6

    .line 220
    check-cast v6, Lcom/android/systemui/classifier/FalsingCollector;

    .line 221
    iget-object v7, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userSwitcherViewModel:Ldagger/Lazy;

    .line 223
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 225
    move-result-object v7

    .line 228
    check-cast v7, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 229
    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/user/UserSwitchFullscreenDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    .line 231
    const/4 v5, 0x0

    .line 234
    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    :goto_0
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 238
    move-result-object v3

    .line 241
    check-cast v3, Landroid/app/AlertDialog;

    .line 242
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 244
    move-result-object v4

    .line 247
    check-cast v4, Lcom/android/systemui/animation/DialogCuj;

    .line 248
    iput-object v3, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->currentDialog:Landroid/app/Dialog;

    .line 250
    invoke-virtual {v2}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getExpandable()Lcom/android/systemui/animation/Expandable;

    .line 252
    move-result-object v5

    .line 255
    if-eqz v5, :cond_3

    .line 256
    check-cast v5, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 258
    invoke-virtual {v5, v4}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->dialogLaunchController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 260
    move-result-object v5

    .line 263
    goto :goto_1

    .line 264
    :cond_3
    const/4 v5, 0x0

    .line 265
    :goto_1
    const/4 v6, 0x0

    .line 266
    if-eqz v5, :cond_4

    .line 267
    iget-object v2, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogLaunchAnimator:Ldagger/Lazy;

    .line 269
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 271
    move-result-object v2

    .line 274
    check-cast v2, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 275
    sget-object v4, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 277
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V

    .line 279
    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 283
    move-result-object v5

    .line 286
    if-eqz v5, :cond_5

    .line 287
    if-eqz v4, :cond_5

    .line 289
    invoke-virtual {v2}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 291
    move-result-object v2

    .line 294
    if-eqz v2, :cond_6

    .line 295
    check-cast v2, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    .line 297
    iget-object v5, v2, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 299
    iget-object v2, v2, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    .line 301
    sget-object v7, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 303
    invoke-virtual {v5, v3, v2, v4, v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    .line 305
    goto :goto_2

    .line 308
    :cond_5
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 309
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->interactor:Ldagger/Lazy;

    .line 312
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 314
    move-result-object v0

    .line 317
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 318
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 320
    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 323
    return-object v1

    .line 326
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 327
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 329
    throw v0

    .line 332
    :goto_3
    move-object/from16 v2, p1

    .line 333
    check-cast v2, Lkotlin/Unit;

    .line 335
    iget-object v2, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->currentDialog:Landroid/app/Dialog;

    .line 337
    if-eqz v2, :cond_8

    .line 339
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 341
    move-result v3

    .line 344
    if-eqz v3, :cond_8

    .line 345
    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 347
    :cond_8
    iget-object v0, v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->interactor:Ldagger/Lazy;

    .line 350
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 352
    move-result-object v0

    .line 355
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 356
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 358
    const/4 v2, 0x0

    .line 360
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 361
    return-object v1

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 366
.end method
