.class public final synthetic Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
    iput p1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_2

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/android/systemui/shared/condition/Monitor;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 14
    check-cast p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const/4 v3, 0x3

    .line 21
    const-string v4, "Monitor"

    .line 22
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    const-string/jumbo v3, "removing subscription"

    .line 30
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/shared/condition/Monitor;->mSubscriptions:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "subscription not present:"

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    .line 67
    iget-object v4, v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 69
    iget-object v4, v4, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    .line 71
    new-instance v5, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;

    .line 73
    invoke-direct {v5, v0, p0, v1}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;I)V

    .line 75
    invoke-interface {v4, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 78
    iget-boolean p0, v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mActive:Z

    .line 81
    if-nez p0, :cond_2

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    iput-boolean v2, v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mActive:Z

    .line 86
    iget-object p0, v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    .line 90
    :goto_0
    iget-object p0, v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 92
    if-nez p0, :cond_3

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;

    .line 97
    invoke-direct {v1, v2, v0, p0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iget-object p0, v0, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 102
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    const/4 p0, 0x0

    .line 107
    iput-object p0, v3, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 108
    :goto_1
    return-void

    .line 110
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 111
    check-cast v0, Lcom/android/systemui/shared/condition/Monitor$1;

    .line 113
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 115
    check-cast p0, Lcom/android/systemui/shared/condition/Condition;

    .line 117
    iget-object v0, v0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 119
    iget-object v3, v0, Lcom/android/systemui/shared/condition/Monitor;->mLogBuffer:Lcom/android/systemui/plugins/log/TableLogBufferBase;

    .line 121
    if-eqz v3, :cond_8

    .line 123
    iget-object v4, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    .line 125
    iget-boolean v5, p0, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    .line 127
    if-eqz v5, :cond_4

    .line 129
    const-string v5, "[OVRD]"

    .line 131
    invoke-static {v4, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 136
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    .line 137
    if-eqz v5, :cond_5

    .line 139
    goto :goto_3

    .line 141
    :cond_5
    move v1, v2

    .line 142
    :goto_3
    if-nez v1, :cond_6

    .line 143
    const-string v1, "Invalid"

    .line 145
    goto :goto_4

    .line 147
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    invoke-virtual {v1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v1

    .line 153
    if-eqz v1, :cond_7

    .line 154
    const-string v1, "True"

    .line 156
    goto :goto_4

    .line 158
    :cond_7
    const-string v1, "False"

    .line 159
    :goto_4
    const-string v2, ""

    .line 161
    invoke-interface {v3, v2, v4, v1}, Lcom/android/systemui/plugins/log/TableLogBufferBase;->logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    .line 166
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object p0

    .line 171
    check-cast p0, Landroid/util/ArraySet;

    .line 172
    if-nez p0, :cond_9

    .line 174
    goto :goto_5

    .line 176
    :cond_9
    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 177
    move-result-object p0

    .line 180
    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;

    .line 181
    invoke-direct {v1, v0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/condition/Monitor;)V

    .line 183
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 186
    :goto_5
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 190
.end method
