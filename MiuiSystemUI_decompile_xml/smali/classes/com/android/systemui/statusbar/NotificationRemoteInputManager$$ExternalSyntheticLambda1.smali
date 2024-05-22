.class public final synthetic Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/app/PendingIntent;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/PendingIntent;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final handleClick()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    check-cast v1, Landroid/widget/RemoteViews$RemoteResponse;

    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 10
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    .line 19
    move-result-object v1

    .line 22
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 23
    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 30
    sget-object v6, Lcom/android/systemui/statusbar/ActionClickLogger$logStartingIntentWithDefaultHandler$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logStartingIntentWithDefaultHandler$2;

    .line 32
    iget-object v4, v4, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 34
    const-string v7, "ActionClickLogger"

    .line 36
    const/4 v8, 0x0

    .line 38
    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 39
    move-result-object v5

    .line 42
    if-eqz v2, :cond_0

    .line 43
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 45
    :cond_0
    invoke-interface {v5, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/PendingIntent;

    .line 50
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 52
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 59
    invoke-interface {v5, v6}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 63
    invoke-static {v3, p0, v1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    .line 66
    move-result p0

    .line 69
    if-eqz p0, :cond_4

    .line 70
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 72
    if-nez v2, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 80
    if-eqz v1, :cond_3

    .line 82
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinatorKt;->access$getDEBUG()Z

    .line 84
    move-result v3

    .line 87
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 88
    if-eqz v3, :cond_2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v5, "releaseNotificationIfKeptForRemoteInputHistory(entry="

    .line 94
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v5, ")"

    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 111
    const-string v5, "RemoteInputCoordinator"

    .line 112
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mRemoteInputHistoryExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputHistoryExtender;

    .line 117
    const-wide/16 v5, 0xc8

    .line 119
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endLifetimeExtensionAfterDelay(Ljava/lang/String;J)V

    .line 121
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mSmartReplyHistoryExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$SmartReplyHistoryExtender;

    .line 124
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endLifetimeExtensionAfterDelay(Ljava/lang/String;J)V

    .line 126
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mRemoteInputActiveExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputActiveExtender;

    .line 129
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endLifetimeExtensionAfterDelay(Ljava/lang/String;J)V

    .line 131
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActionPressListeners:Lcom/android/systemui/util/ListenerSet;

    .line 134
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v1

    .line 143
    if-eqz v1, :cond_4

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 149
    check-cast v1, Ljava/util/function/Consumer;

    .line 150
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 152
    goto :goto_0

    .line 155
    :cond_4
    :goto_1
    return p0
    .line 156
.end method
