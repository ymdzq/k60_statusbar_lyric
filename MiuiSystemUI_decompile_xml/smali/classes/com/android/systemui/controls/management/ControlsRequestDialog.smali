.class public Lcom/android/systemui/controls/management/ControlsRequestDialog;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

.field public control:Landroid/service/controls/Control;

.field public controlComponent:Landroid/content/ComponentName;

.field public final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public dialog:Landroid/app/Dialog;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/management/ControlsListingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 11
    new-instance p1, Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    .line 13
    invoke-direct {p1}, Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    .line 18
    new-instance p1, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsRequestDialog;)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p2, p1, :cond_8

    .line 3
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 5
    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 7
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    move-object p2, v0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 13
    if-nez v1, :cond_1

    .line 15
    move-object v1, v0

    .line 17
    :cond_1
    invoke-virtual {v1}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 18
    move-result-object v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    const-string v1, ""

    .line 24
    :cond_2
    new-instance v2, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 26
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 28
    if-nez v3, :cond_3

    .line 30
    move-object v3, v0

    .line 32
    :cond_3
    invoke-virtual {v3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 37
    if-nez v4, :cond_4

    .line 39
    move-object v4, v0

    .line 41
    :cond_4
    invoke-virtual {v4}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 42
    move-result-object v4

    .line 45
    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 46
    if-nez v5, :cond_5

    .line 48
    move-object v5, v0

    .line 50
    :cond_5
    invoke-virtual {v5}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    .line 51
    move-result-object v5

    .line 54
    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 55
    if-nez v6, :cond_6

    .line 57
    goto :goto_0

    .line 59
    :cond_6
    move-object v0, v6

    .line 60
    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/Control;->getDeviceType()I

    .line 61
    move-result v0

    .line 64
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 65
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 68
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    goto :goto_1

    .line 76
    :cond_7
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;

    .line 77
    invoke-direct {v0, p2, v1, v2, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorite$1;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 79
    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 82
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 86
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    return-void
    .line 92
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    .line 18
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    move-result-object p1

    .line 28
    const-string v0, "android.intent.extra.USER_ID"

    .line 29
    const/16 v1, -0x2710

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 37
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    .line 41
    move-result v0

    .line 44
    const-string v1, "ControlsRequestDialog"

    .line 45
    if-eq p1, v0, :cond_0

    .line 47
    const-string v2, "Current user ("

    .line 49
    const-string v3, ") different from request user ("

    .line 51
    const-string v4, ")"

    .line 53
    invoke-static {v2, v0, v3, p1, v4}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 65
    move-result-object p1

    .line 68
    const-string v0, "android.intent.extra.COMPONENT_NAME"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 71
    move-result-object p1

    .line 74
    check-cast p1, Landroid/content/ComponentName;

    .line 75
    if-nez p1, :cond_1

    .line 77
    const-string p1, "Request did not contain componentName"

    .line 79
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    move-result-object p1

    .line 93
    const-string v0, "android.service.controls.extra.CONTROL"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 96
    move-result-object p1

    .line 99
    check-cast p1, Landroid/service/controls/Control;

    .line 100
    if-nez p1, :cond_2

    .line 102
    const-string p1, "Request did not contain control"

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    return-void

    .line 112
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 113
    return-void
    .line 115
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->dialog:Landroid/app/Dialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 11
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->callback:Lcom/android/systemui/controls/management/ControlsRequestDialog$callback$1;

    .line 20
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 27
    return-void
    .line 30
.end method

.method public final onResume()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 7
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    move-object v1, v2

    .line 12
    :cond_0
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    .line 15
    move-result-object v0

    .line 18
    const-string v1, "ControlsRequestDialog"

    .line 19
    if-nez v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 23
    if-nez v0, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    move-object v2, v0

    .line 28
    :goto_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    const-string v3, "The component specified ("

    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, " is not a valid ControlsProviderService"

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    return-void

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 59
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 61
    if-nez v4, :cond_3

    .line 63
    move-object v4, v2

    .line 65
    :cond_3
    check-cast v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {v4}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    .line 71
    move-result-object v3

    .line 74
    instance-of v4, v3, Ljava/util/Collection;

    .line 75
    const/4 v5, 0x1

    .line 77
    const/4 v6, 0x0

    .line 78
    if-eqz v4, :cond_4

    .line 79
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    goto :goto_3

    .line 87
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v3

    .line 91
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v4

    .line 95
    if-eqz v4, :cond_a

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 101
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 102
    iget-object v4, v4, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 104
    instance-of v7, v4, Ljava/util/Collection;

    .line 106
    if-eqz v7, :cond_6

    .line 108
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 110
    move-result v7

    .line 113
    if-eqz v7, :cond_6

    .line 114
    goto :goto_1

    .line 116
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v4

    .line 120
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v7

    .line 124
    if-eqz v7, :cond_9

    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v7

    .line 130
    check-cast v7, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 131
    iget-object v7, v7, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 133
    iget-object v8, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 135
    if-nez v8, :cond_8

    .line 137
    move-object v8, v2

    .line 139
    :cond_8
    invoke-virtual {v8}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 140
    move-result-object v8

    .line 143
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    move-result v7

    .line 147
    if-eqz v7, :cond_7

    .line 148
    move v4, v5

    .line 150
    goto :goto_2

    .line 151
    :cond_9
    :goto_1
    move v4, v6

    .line 152
    :goto_2
    if-eqz v4, :cond_5

    .line 153
    move v3, v5

    .line 155
    goto :goto_4

    .line 156
    :cond_a
    :goto_3
    move v3, v6

    .line 157
    :goto_4
    if-eqz v3, :cond_c

    .line 158
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 160
    if-nez v3, :cond_b

    .line 162
    move-object v3, v2

    .line 164
    :cond_b
    invoke-virtual {v3}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 165
    move-result-object v3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    const-string v7, "The control "

    .line 171
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, " is already a favorite"

    .line 179
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v3

    .line 187
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 191
    :cond_c
    sget-object v1, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controlComponent:Landroid/content/ComponentName;

    .line 196
    if-nez v1, :cond_d

    .line 198
    move-object v1, v2

    .line 200
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 201
    if-nez v3, :cond_e

    .line 203
    move-object v3, v2

    .line 205
    :cond_e
    invoke-virtual {v3}, Landroid/service/controls/Control;->getDeviceType()I

    .line 206
    move-result v3

    .line 209
    invoke-static {p0, v1, v3, v6}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    .line 210
    move-result-object v1

    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 214
    move-result-object v3

    .line 217
    const v4, 0x7f0d007a    # @layout/controls_dialog 'res/layout/controls_dialog.xml'

    .line 218
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 221
    move-result-object v3

    .line 224
    const v4, 0x7f0a0412    # @id/icon

    .line 225
    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 228
    move-result-object v4

    .line 231
    check-cast v4, Landroid/widget/ImageView;

    .line 232
    iget-object v6, v1, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 239
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    move-result-object v6

    .line 246
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 247
    move-result-object v7

    .line 250
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 251
    move-result-object v7

    .line 254
    iget v1, v1, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    .line 255
    invoke-virtual {v6, v1, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 257
    move-result-object v1

    .line 260
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 261
    const v1, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 264
    invoke-virtual {v3, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 267
    move-result-object v1

    .line 270
    check-cast v1, Landroid/widget/TextView;

    .line 271
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 273
    if-nez v4, :cond_f

    .line 275
    move-object v4, v2

    .line 277
    :cond_f
    invoke-virtual {v4}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 278
    move-result-object v4

    .line 281
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v1, 0x7f0a08ff    # @id/subtitle

    .line 285
    invoke-virtual {v3, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 288
    move-result-object v1

    .line 291
    check-cast v1, Landroid/widget/TextView;

    .line 292
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->control:Landroid/service/controls/Control;

    .line 294
    if-nez v4, :cond_10

    .line 296
    move-object v4, v2

    .line 298
    :cond_10
    invoke-virtual {v4}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    .line 299
    move-result-object v4

    .line 302
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v1, 0x7f0a0239    # @id/control

    .line 306
    invoke-virtual {v3, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 309
    move-result-object v1

    .line 312
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 313
    move-result-object v4

    .line 316
    const v6, 0x7f07020b    # @dimen/control_card_elevation '15.0'

    .line 317
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 320
    move-result v4

    .line 323
    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    .line 324
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    const v4, 0x7f1302f5    # @string/controls_dialog_title 'Add to device controls'

    .line 332
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 335
    move-result-object v4

    .line 338
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    move-result-object v1

    .line 342
    const v4, 0x7f1302f2    # @string/controls_dialog_message 'Suggested by %s'

    .line 343
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 346
    move-result-object v0

    .line 349
    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    move-result-object v0

    .line 353
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    move-result-object v0

    .line 357
    const v1, 0x7f1302f3    # @string/controls_dialog_ok 'Add'

    .line 358
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    move-result-object v0

    .line 364
    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 365
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    move-result-object v0

    .line 370
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    move-result-object v0

    .line 374
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 375
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 379
    move-result-object v0

    .line 382
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 383
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 386
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog;->dialog:Landroid/app/Dialog;

    .line 389
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 391
    return-void
    .line 394
.end method
