.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator$attach$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 26
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 28
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 36
    if-eqz v1, :cond_2

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 40
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 42
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 49
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    const-string p1, "No Summary: "

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    const-string p2, "Unexpected entry "

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0

    .line 102
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;->notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    const-wide/16 v0, 0x1000

    .line 108
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 110
    move-result p1

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 114
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 118
    const/4 v4, 0x1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    const-string p1, "NotifLiveDataStore.setActiveNotifList"

    .line 123
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 125
    :try_start_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 128
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 131
    move-result-object p1

    .line 134
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 135
    move-result-object p1

    .line 138
    const/4 p2, 0x3

    .line 139
    new-array p2, p2, [Lkotlin/jvm/functions/Function0;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    .line 142
    move-result-object p0

    .line 145
    const/4 v5, 0x0

    .line 146
    aput-object p0, p2, v5

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 149
    move-result p0

    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object p0

    .line 156
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    .line 157
    move-result-object p0

    .line 160
    aput-object p0, p2, v4

    .line 161
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    move-result p0

    .line 166
    xor-int/2addr p0, v4

    .line 167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    move-result-object p0

    .line 171
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    .line 172
    move-result-object p0

    .line 175
    const/4 p1, 0x2

    .line 176
    aput-object p0, p2, p1

    .line 177
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 179
    move-result-object p0

    .line 182
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object p0

    .line 186
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result p1

    .line 190
    if-eqz p1, :cond_4

    .line 191
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object p1

    .line 196
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 197
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    goto :goto_1

    .line 202
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 203
    goto :goto_3

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 208
    throw p0

    .line 211
    :cond_5
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 212
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 215
    move-result-object p1

    .line 218
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 219
    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    .line 223
    move-result-object p0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 227
    move-result p2

    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object p2

    .line 234
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    .line 235
    move-result-object p2

    .line 238
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 239
    move-result p1

    .line 242
    xor-int/2addr p1, v4

    .line 243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 244
    move-result-object p1

    .line 247
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    .line 248
    move-result-object p1

    .line 251
    filled-new-array {p0, p2, p1}, [Lkotlin/jvm/functions/Function0;

    .line 252
    move-result-object p0

    .line 255
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 256
    move-result-object p0

    .line 259
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    move-result-object p0

    .line 263
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    move-result p1

    .line 267
    if-eqz p1, :cond_6

    .line 268
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    move-result-object p1

    .line 273
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 274
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 276
    goto :goto_2

    .line 279
    :cond_6
    :goto_3
    return-void
    .line 280
.end method
