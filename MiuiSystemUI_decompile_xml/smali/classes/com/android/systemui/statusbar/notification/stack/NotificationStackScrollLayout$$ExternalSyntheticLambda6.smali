.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/List;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    .line 6
    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$2:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_7

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    .line 11
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$2:I

    .line 13
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllAnimationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda2;

    .line 15
    if-eqz v2, :cond_9

    .line 17
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 19
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 21
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 23
    const/4 v4, 0x1

    .line 25
    if-nez p0, :cond_7

    .line 26
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 28
    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 30
    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 37
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 40
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 43
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logDismissAll(I)V

    .line 45
    :try_start_0
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 48
    invoke-interface {v6, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 53
    :catch_0
    move-exception v6

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logRemoteExceptionOnClearAllNotifications(Landroid/os/RemoteException;)V

    .line 55
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 60
    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    .line 63
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v7

    .line 71
    sub-int/2addr v7, v4

    .line 72
    :goto_1
    if-ltz v7, :cond_6

    .line 73
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v8

    .line 78
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 79
    const/4 v9, 0x0

    .line 81
    const/4 v10, -0x1

    .line 82
    if-eq v2, v10, :cond_1

    .line 83
    iget-object v11, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 85
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 87
    move-result-object v11

    .line 90
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    .line 91
    move-result v11

    .line 94
    if-eq v11, v10, :cond_1

    .line 95
    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 97
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 99
    move-result-object v10

    .line 102
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 103
    move-result v10

    .line 106
    if-ne v10, v2, :cond_0

    .line 107
    goto :goto_2

    .line 109
    :cond_0
    move v10, v9

    .line 110
    goto :goto_3

    .line 111
    :cond_1
    :goto_2
    move v10, v4

    .line 112
    :goto_3
    if-eqz v10, :cond_2

    .line 113
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    .line 115
    move-result v10

    .line 118
    if-eqz v10, :cond_2

    .line 119
    const/16 v10, 0x1000

    .line 121
    invoke-static {v8, v10}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 123
    move-result v10

    .line 126
    if-nez v10, :cond_2

    .line 127
    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 129
    sget-object v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 131
    if-eq v10, v11, :cond_2

    .line 133
    move v10, v4

    .line 135
    goto :goto_4

    .line 136
    :cond_2
    move v10, v9

    .line 137
    :goto_4
    if-nez v10, :cond_5

    .line 138
    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->updateDismissInterceptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 140
    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 143
    check-cast v10, Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v10

    .line 150
    if-lez v10, :cond_3

    .line 151
    move v9, v4

    .line 153
    :cond_3
    if-eqz v9, :cond_4

    .line 154
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifClearAllDismissalIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 156
    :cond_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 162
    goto :goto_1

    .line 164
    :cond_6
    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->locallyDismissNotifications(Ljava/util/List;)V

    .line 165
    const-string v2, "dismissAllNotifications"

    .line 168
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList(Ljava/lang/String;)V

    .line 170
    goto :goto_6

    .line 173
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    .line 174
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v6

    .line 182
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v7

    .line 186
    if-eqz v7, :cond_8

    .line 187
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v7

    .line 192
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 193
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 195
    move-result-object v7

    .line 198
    new-instance v8, Landroid/util/Pair;

    .line 199
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 201
    iget-object v10, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 203
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 205
    invoke-virtual {v10, v7, v4}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 207
    move-result-object v10

    .line 210
    const/4 v11, 0x3

    .line 211
    invoke-direct {v9, v11, v10}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 212
    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    goto :goto_5

    .line 221
    :cond_8
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotifications(Ljava/util/List;)V

    .line 222
    :cond_9
    :goto_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMiuiClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

    .line 225
    if-eqz v0, :cond_a

    .line 227
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;->onEnd(ILjava/util/List;)V

    .line 229
    :cond_a
    return-void

    .line 232
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    .line 235
    check-cast v1, Ljava/util/ArrayList;

    .line 237
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$2:I

    .line 239
    sget v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->$r8$clinit:I

    .line 241
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onClearAllAnimationsEnd(ILjava/util/List;)V

    .line 243
    return-void

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 248
.end method
