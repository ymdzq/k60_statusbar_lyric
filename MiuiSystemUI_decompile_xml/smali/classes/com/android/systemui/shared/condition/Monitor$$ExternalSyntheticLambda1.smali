.class public final synthetic Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shared/condition/Monitor;

.field public final synthetic f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x3

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 11
    check-cast p1, Lcom/android/systemui/shared/condition/Condition;

    .line 13
    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v3

    .line 20
    if-nez v3, :cond_2

    .line 21
    new-instance v3, Landroid/util/ArraySet;

    .line 23
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 25
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v3, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    .line 31
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    .line 39
    const-string v3, "adding callback"

    .line 41
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    .line 46
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 48
    iget-object v0, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditionCallback:Lcom/android/systemui/shared/condition/Monitor$1;

    .line 50
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-boolean v1, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    .line 58
    const/4 v3, 0x1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 63
    iget-object v1, v1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 65
    new-instance v4, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;

    .line 67
    invoke-direct {v4, v3, v0, p1}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->start()V

    .line 76
    iput-boolean v3, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 84
    check-cast p1, Landroid/util/ArraySet;

    .line 85
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    return-void

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 93
    check-cast p1, Lcom/android/systemui/shared/condition/Condition;

    .line 95
    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    .line 97
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    move-result v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "condition not present:"

    .line 107
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    const-string p1, "Monitor"

    .line 119
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    goto :goto_4

    .line 124
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 128
    check-cast v3, Ljava/util/Set;

    .line 129
    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 134
    move-result p0

    .line 137
    if-eqz p0, :cond_a

    .line 138
    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    .line 140
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 142
    move-result p0

    .line 145
    if-eqz p0, :cond_4

    .line 146
    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    .line 148
    const-string/jumbo v1, "removing callback"

    .line 150
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_4
    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v1

    .line 161
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v3

    .line 165
    if-eqz v3, :cond_7

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 172
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 174
    move-result-object v3

    .line 177
    check-cast v3, Lcom/android/systemui/shared/condition/Monitor$1;

    .line 178
    if-eqz v3, :cond_6

    .line 180
    iget-object v4, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditionCallback:Lcom/android/systemui/shared/condition/Monitor$1;

    .line 182
    if-ne v3, v4, :cond_5

    .line 184
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 186
    goto :goto_2

    .line 189
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    move-result p0

    .line 193
    if-eqz p0, :cond_9

    .line 194
    iget-boolean p0, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    .line 196
    if-nez p0, :cond_8

    .line 198
    goto :goto_3

    .line 200
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->stop()V

    .line 201
    const/4 p0, 0x0

    .line 204
    iput-boolean p0, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    .line 205
    :cond_9
    :goto_3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_a
    :goto_4
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 212
.end method
