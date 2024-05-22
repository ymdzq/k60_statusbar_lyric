.class public final Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 14
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 22
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 30
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->collapseControlCenter(ZZ)V

    .line 32
    :cond_1
    return-void

    .line 35
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    const-string v2, "operation"

    .line 40
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v3, "remoteOperationReceiver "

    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, " "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 68
    const-string v3, "ControlCenterControllerImpl"

    .line 69
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v2, "action_panels_operation"

    .line 74
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 79
    if-eqz p1, :cond_c

    .line 80
    const-string/jumbo p1, "reverse_notifications_panel"

    .line 82
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    move-result p1

    .line 88
    if-eqz p1, :cond_6

    .line 89
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 91
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->statusBar:Ldagger/Lazy;

    .line 93
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 99
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isQSFullyCollapsed()Z

    .line 103
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 109
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    .line 111
    move-result p1

    .line 114
    if-nez p1, :cond_4

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 117
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitchController:Ldagger/Lazy;

    .line 119
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 124
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->acceptSwitch()Z

    .line 127
    move-result p1

    .line 130
    if-nez p1, :cond_2

    .line 131
    goto/16 :goto_1

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 135
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->prepareForNCSwitcher()V

    .line 140
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->blurSwitched:Z

    .line 143
    if-nez p1, :cond_3

    .line 145
    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 147
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 152
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 153
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 155
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandNotificationsPanel()V

    .line 159
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 162
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->collapseControlCenter(ZZ)V

    .line 164
    goto/16 :goto_1

    .line 167
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 169
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->statusBar:Ldagger/Lazy;

    .line 171
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 173
    move-result-object p0

    .line 176
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 177
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandNotificationsPanel()V

    .line 183
    goto/16 :goto_1

    .line 186
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 188
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->shadeController:Ldagger/Lazy;

    .line 190
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 192
    move-result-object p0

    .line 195
    check-cast p0, Lcom/android/systemui/shade/ShadeController;

    .line 196
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade(Z)V

    .line 200
    goto/16 :goto_1

    .line 203
    :cond_6
    const-string/jumbo p1, "reverse_quick_settings_panel"

    .line 205
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    move-result p1

    .line 211
    if-eqz p1, :cond_c

    .line 212
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 214
    iget-boolean p2, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 216
    if-eqz p2, :cond_a

    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    .line 220
    move-result p1

    .line 223
    if-eqz p1, :cond_9

    .line 224
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 226
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateController:Ldagger/Lazy;

    .line 228
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 230
    move-result-object p1

    .line 233
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 234
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 236
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 238
    if-nez p1, :cond_7

    .line 240
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 242
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->statusBar:Ldagger/Lazy;

    .line 244
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 246
    move-result-object p1

    .line 249
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 250
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 252
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isQSFullyCollapsed()Z

    .line 254
    move-result p1

    .line 257
    if-nez p1, :cond_7

    .line 258
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 260
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitchController:Ldagger/Lazy;

    .line 262
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 264
    move-result-object p0

    .line 267
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->handleNCSwitch()V

    .line 270
    goto :goto_1

    .line 273
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 274
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenter:Ldagger/Lazy;

    .line 276
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 278
    move-result-object p0

    .line 281
    check-cast p0, Lcom/android/systemui/controlcenter/ControlCenter;

    .line 282
    iget-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isExpandable()Z

    .line 286
    move-result p1

    .line 289
    if-nez p1, :cond_8

    .line 290
    goto :goto_1

    .line 292
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->handler:Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

    .line 293
    const/4 p1, 0x2

    .line 295
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 299
    move-result-object p2

    .line 302
    iput p1, p2, Landroid/os/Message;->what:I

    .line 303
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    goto :goto_1

    .line 308
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 309
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->collapseControlCenter(ZZ)V

    .line 311
    goto :goto_1

    .line 314
    :cond_a
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->statusBar:Ldagger/Lazy;

    .line 315
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 317
    move-result-object p1

    .line 320
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 321
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 323
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isQSFullyCollapsed()Z

    .line 325
    move-result p1

    .line 328
    if-eqz p1, :cond_b

    .line 329
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 331
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->statusBar:Ldagger/Lazy;

    .line 333
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 335
    move-result-object p0

    .line 338
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 339
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 341
    const/4 p1, 0x0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 346
    goto :goto_1

    .line 349
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 350
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->statusBar:Ldagger/Lazy;

    .line 352
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 354
    move-result-object p0

    .line 357
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 358
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->postAnimateCollapsePanels()V

    .line 362
    :cond_c
    :goto_1
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 366
.end method
