.class public final synthetic Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/concurrency/MessageRouterImpl;Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageListenerMap:Ljava/util/Map;

    .line 6
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageListenerMap:Ljava/util/Map;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v3

    .line 14
    check-cast v2, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageListenerMap:Ljava/util/Map;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v3

    .line 28
    check-cast v2, Ljava/util/HashMap;

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/List;

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;

    .line 51
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda10;

    .line 53
    iget v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 55
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 57
    packed-switch v4, :pswitch_data_0

    .line 59
    goto :goto_1

    .line 62
    :pswitch_0
    move-object v4, p0

    .line 63
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;->mDeviceId:I

    .line 69
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsShortcutListSearchEnabled:Z

    .line 71
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 73
    if-eqz v5, :cond_0

    .line 75
    invoke-static {v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    .line 77
    move-result v5

    .line 80
    if-eqz v5, :cond_0

    .line 81
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->toggle(ILandroid/content/Context;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(ILandroid/content/Context;)V

    .line 87
    goto :goto_0

    .line 90
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 91
    const/4 p0, 0x0

    .line 94
    throw p0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 99
    monitor-enter v2

    .line 101
    :try_start_1
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    move-result-object v3

    .line 107
    check-cast v1, Ljava/util/HashMap;

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    move-result-object v3

    .line 121
    check-cast v1, Ljava/util/HashMap;

    .line 122
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 127
    check-cast v1, Ljava/util/List;

    .line 128
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 130
    move-result v1

    .line 133
    if-nez v1, :cond_2

    .line 134
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    move-result-object v3

    .line 141
    check-cast v1, Ljava/util/HashMap;

    .line 142
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 147
    check-cast v1, Ljava/util/List;

    .line 148
    const/4 v3, 0x0

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    move-result-object v3

    .line 159
    check-cast v1, Ljava/util/HashMap;

    .line 160
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 165
    check-cast v1, Ljava/util/List;

    .line 166
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 168
    move-result v1

    .line 171
    if-eqz v1, :cond_2

    .line 172
    iget-object v0, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    move-result-object p0

    .line 179
    check-cast v0, Ljava/util/HashMap;

    .line 180
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_2
    monitor-exit v2

    .line 185
    return-void

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    throw p0

    .line 189
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw p0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 192
.end method
