.class public final synthetic Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/concurrency/MessageRouterImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 5
    iput p2, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 2
    iget p0, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mSimpleMessageListenerMap:Ljava/util/Map;

    .line 6
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mSimpleMessageListenerMap:Ljava/util/Map;

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v3

    .line 14
    check-cast v2, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mSimpleMessageListenerMap:Ljava/util/Map;

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    if-eqz v3, :cond_0

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;

    .line 51
    invoke-interface {v3}, Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;->onMessage()V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mIdMessageCancelers:Ljava/util/Map;

    .line 58
    monitor-enter v2

    .line 60
    :try_start_1
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mIdMessageCancelers:Ljava/util/Map;

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v3

    .line 66
    check-cast v1, Ljava/util/HashMap;

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mIdMessageCancelers:Ljava/util/Map;

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v3

    .line 80
    check-cast v1, Ljava/util/HashMap;

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 86
    check-cast v1, Ljava/util/List;

    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 89
    move-result v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mIdMessageCancelers:Ljava/util/Map;

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v3

    .line 100
    check-cast v1, Ljava/util/HashMap;

    .line 101
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 106
    check-cast v1, Ljava/util/List;

    .line 107
    const/4 v3, 0x0

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mIdMessageCancelers:Ljava/util/Map;

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v3

    .line 118
    check-cast v1, Ljava/util/HashMap;

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 124
    check-cast v1, Ljava/util/List;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 127
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    iget-object v0, v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mIdMessageCancelers:Ljava/util/Map;

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object p0

    .line 138
    check-cast v0, Ljava/util/HashMap;

    .line 139
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    monitor-exit v2

    .line 144
    return-void

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p0

    .line 148
    :catchall_1
    move-exception p0

    .line 149
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    throw p0
    .line 151
.end method
