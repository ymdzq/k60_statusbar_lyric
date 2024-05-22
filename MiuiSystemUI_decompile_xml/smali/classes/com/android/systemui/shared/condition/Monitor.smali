.class public final Lcom/android/systemui/shared/condition/Monitor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mConditionCallback:Lcom/android/systemui/shared/condition/Monitor$1;

.field public final mConditions:Ljava/util/HashMap;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLogBuffer:Lcom/android/systemui/plugins/log/TableLogBufferBase;

.field public final mPreconditions:Ljava/util/Set;

.field public final mSubscriptions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/systemui/plugins/log/TableLogBufferBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/shared/condition/Monitor;->mSubscriptions:Ljava/util/HashMap;

    .line 17
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/condition/Monitor$1;-><init>(Lcom/android/systemui/shared/condition/Monitor;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/shared/condition/Monitor;->mConditionCallback:Lcom/android/systemui/shared/condition/Monitor$1;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 28
    iput-object p3, p0, Lcom/android/systemui/shared/condition/Monitor;->mLogBuffer:Lcom/android/systemui/plugins/log/TableLogBufferBase;

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 4
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    new-instance v1, Landroid/util/ArraySet;

    .line 9
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 11
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 14
    new-instance p2, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-direct {p2, v0, v2, p1}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 20
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 23
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 29
    invoke-direct {p1, v1, v2, p2}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    move-object p1, p2

    .line 35
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 36
    invoke-direct {p2}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;-><init>()V

    .line 38
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    .line 41
    invoke-direct {v0, p1}, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;-><init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 43
    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 51
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-object p2
    .line 56
.end method
