.class public final synthetic Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/content/Intent;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 16
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetsFromBroadcastInBackground(Ljava/lang/String;)V

    .line 22
    return-void

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 26
    check-cast v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 30
    check-cast p0, Landroid/os/UserHandle;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 34
    iget-object v1, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 36
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    new-instance p0, Landroid/content/ComponentName;

    .line 44
    iget-object v1, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 46
    const-class v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    .line 48
    invoke-direct {p0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    iget-object v1, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 53
    invoke-virtual {v1, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 55
    move-result-object p0

    .line 58
    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    .line 59
    const/4 v2, 0x0

    .line 61
    invoke-direct {v1, v2, v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iget-object p0, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 65
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    return-void

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 71
    check-cast v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 75
    check-cast p0, [I

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    :try_start_0
    array-length v1, p0

    .line 82
    if-nez v1, :cond_1

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateSingleConversationWidgets([I)V

    .line 89
    monitor-exit v1

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    const-string v0, "PeopleSpaceWidgetMgr"

    .line 98
    const-string v1, "failed to update widgets"

    .line 100
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_0
    return-void

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 106
    check-cast v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    .line 108
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 110
    check-cast p0, Landroid/app/people/ConversationChannel;

    .line 112
    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 119
    move-result-object v1

    .line 122
    iget-object v2, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 123
    monitor-enter v2

    .line 125
    :try_start_3
    new-instance v3, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 126
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 131
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 132
    move-result v5

    .line 135
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    invoke-direct {v3, v4, v1, v5}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getMatchingKeyWidgetIds(Lcom/android/systemui/people/widget/PeopleTileKey;)Ljava/util/Set;

    .line 143
    move-result-object v1

    .line 146
    check-cast v1, Ljava/util/HashSet;

    .line 147
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v1

    .line 152
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v3

    .line 156
    if-eqz v3, :cond_2

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v3

    .line 162
    check-cast v3, Ljava/lang/String;

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    move-result v3

    .line 168
    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateStorageAndViewWithConversationData(Landroid/app/people/ConversationChannel;I)V

    .line 169
    goto :goto_2

    .line 172
    :cond_2
    monitor-exit v2

    .line 173
    return-void

    .line 174
    :catchall_1
    move-exception p0

    .line 175
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    throw p0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 178
.end method
