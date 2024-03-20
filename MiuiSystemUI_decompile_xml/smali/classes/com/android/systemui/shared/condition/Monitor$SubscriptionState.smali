.class public final Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActive:Z

.field public mAllConditionsMet:Ljava/lang/Boolean;

.field public mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final update(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    goto/16 :goto_8

    .line 15
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v6

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v7

    .line 29
    if-eqz v7, :cond_4

    .line 30
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v7

    .line 35
    move-object v8, v7

    .line 36
    check-cast v8, Lcom/android/systemui/shared/condition/Condition;

    .line 37
    iget-object v9, v8, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    .line 39
    if-eqz v9, :cond_2

    .line 41
    move v9, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v9, v3

    .line 45
    :goto_1
    if-eqz v9, :cond_3

    .line 46
    iget-boolean v8, v8, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    .line 48
    if-eqz v8, :cond_3

    .line 50
    move v8, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v8, v3

    .line 54
    :goto_2
    if-eqz v8, :cond_1

    .line 55
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    move-result v6

    .line 64
    if-eqz v6, :cond_5

    .line 65
    goto :goto_3

    .line 67
    :cond_5
    move-object v1, v2

    .line 68
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 71
    move-result v6

    .line 74
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v1

    .line 81
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v6

    .line 85
    if-eqz v6, :cond_8

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 91
    check-cast v6, Lcom/android/systemui/shared/condition/Condition;

    .line 92
    iget-object v6, v6, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    .line 94
    if-eqz v6, :cond_6

    .line 96
    move v7, v5

    .line 98
    goto :goto_5

    .line 99
    :cond_6
    move v7, v3

    .line 100
    :goto_5
    if-eqz v7, :cond_7

    .line 101
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v6

    .line 108
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    move-result-object v6

    .line 112
    goto :goto_6

    .line 113
    :cond_7
    move-object v6, v4

    .line 114
    :goto_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_4

    .line 118
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 119
    move-result v1

    .line 122
    if-eqz v1, :cond_9

    .line 123
    goto :goto_8

    .line 125
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v1

    .line 129
    move v2, v3

    .line 130
    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v6

    .line 134
    if-eqz v6, :cond_c

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v6

    .line 140
    check-cast v6, Ljava/lang/Boolean;

    .line 141
    if-nez v6, :cond_b

    .line 143
    move v2, v5

    .line 145
    goto :goto_7

    .line 146
    :cond_b
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result v6

    .line 152
    if-eqz v6, :cond_a

    .line 153
    goto :goto_9

    .line 155
    :cond_c
    if-eqz v2, :cond_d

    .line 156
    :goto_8
    move-object v7, v4

    .line 158
    goto :goto_9

    .line 159
    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    move-result-object v7

    .line 163
    :goto_9
    if-eqz v7, :cond_f

    .line 164
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    move-result v1

    .line 169
    if-eqz v1, :cond_e

    .line 170
    goto :goto_a

    .line 172
    :cond_e
    move v5, v3

    .line 173
    :cond_f
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mAllConditionsMet:Ljava/lang/Boolean;

    .line 174
    if-eqz v1, :cond_10

    .line 176
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    move-result v1

    .line 181
    if-ne v5, v1, :cond_10

    .line 182
    return-void

    .line 184
    :cond_10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    move-result-object v1

    .line 188
    iput-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mAllConditionsMet:Ljava/lang/Boolean;

    .line 189
    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 191
    if-eqz v2, :cond_14

    .line 193
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    move-result v0

    .line 198
    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 201
    if-nez v0, :cond_11

    .line 203
    invoke-virtual {p1, v2, v4}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 205
    move-result-object p1

    .line 208
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 209
    goto :goto_b

    .line 211
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mAllConditionsMet:Ljava/lang/Boolean;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 214
    move-result v0

    .line 217
    if-nez v0, :cond_13

    .line 218
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 220
    if-eqz v0, :cond_13

    .line 222
    if-nez v0, :cond_12

    .line 224
    goto :goto_b

    .line 226
    :cond_12
    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;

    .line 227
    invoke-direct {v1, v3, p1, v0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object p1, p1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 232
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 234
    iput-object v4, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 237
    :cond_13
    :goto_b
    return-void

    .line 239
    :cond_14
    iget-object p0, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    .line 240
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 242
    move-result p1

    .line 245
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/condition/Monitor$Callback;->onConditionsChanged(Z)V

    .line 246
    return-void
    .line 249
.end method
