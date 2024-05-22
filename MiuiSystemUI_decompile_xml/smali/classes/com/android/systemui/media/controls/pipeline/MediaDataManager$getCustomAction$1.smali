.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controller:Ljava/lang/Object;

.field public final synthetic $customAction:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$customAction:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/media/session/MediaController;

    .line 10
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 12
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$customAction:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    .line 18
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 28
    check-cast v0, Landroid/app/Notification$Action;

    .line 30
    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 32
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$customAction:Ljava/lang/Object;

    .line 40
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 46
    check-cast p0, Landroid/app/Notification$Action;

    .line 48
    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 50
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 52
    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 56
    check-cast v0, Landroid/app/Notification$Action;

    .line 58
    invoke-virtual {v0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$customAction:Ljava/lang/Object;

    .line 66
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 68
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 70
    new-instance v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 74
    check-cast p0, Landroid/app/Notification$Action;

    .line 76
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Landroid/app/Notification$Action;)V

    .line 78
    sget-object p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1$2;

    .line 81
    const/4 v0, 0x1

    .line 83
    invoke-interface {v1, v2, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 84
    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$customAction:Ljava/lang/Object;

    .line 88
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getCustomAction$1;->$controller:Ljava/lang/Object;

    .line 92
    check-cast p0, Landroid/app/Notification$Action;

    .line 94
    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 96
    invoke-static {v0, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->access$sendPendingIntent(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Landroid/app/PendingIntent;)Z

    .line 98
    :goto_1
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 102
.end method
