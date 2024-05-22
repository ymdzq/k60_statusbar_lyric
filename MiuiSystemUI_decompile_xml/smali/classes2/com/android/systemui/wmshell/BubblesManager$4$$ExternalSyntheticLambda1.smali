.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/util/Set;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 24
    iget-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 26
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 28
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 30
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v3

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 47
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 48
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 50
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 52
    move-result v5

    .line 55
    iget-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 56
    check-cast v6, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 58
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    .line 60
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 66
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {v0, v4}, Lcom/android/systemui/wmshell/BubblesManager;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 74
    move-result v5

    .line 77
    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 80
    move-result v5

    .line 83
    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v0, v4}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 86
    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 94
    return-void

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    .line 104
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 106
    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 108
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 110
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 112
    move-result-object v1

    .line 115
    if-nez v1, :cond_2

    .line 116
    const/4 v0, 0x0

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 120
    move-result-object v0

    .line 123
    :goto_2
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 124
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 128
.end method
