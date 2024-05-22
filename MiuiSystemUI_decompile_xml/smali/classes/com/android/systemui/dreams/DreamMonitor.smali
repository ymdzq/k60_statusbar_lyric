.class public final Lcom/android/systemui/dreams/DreamMonitor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final mCallback:Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;

.field public final mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

.field public final mDreamCondition:Lcom/android/systemui/dreams/conditions/DreamCondition;

.field public final mMonitor:Lcom/android/systemui/shared/condition/Monitor;

.field public final mRestartDozeListener:Lcom/android/systemui/flags/RestartDozeListener;

.field public mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/dreams/conditions/DreamCondition;Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;Lcom/android/systemui/flags/RestartDozeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamMonitor;->mDreamCondition:Lcom/android/systemui/dreams/conditions/DreamCondition;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/dreams/DreamMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/dreams/DreamMonitor;->mRestartDozeListener:Lcom/android/systemui/flags/RestartDozeListener;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onBootCompleted()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamMonitor;I)V

    .line 5
    new-instance v1, Landroid/util/ArraySet;

    .line 8
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 10
    new-instance v2, Landroid/util/ArraySet;

    .line 13
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 15
    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 18
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v1, v0, v4}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 21
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 30
    invoke-direct {v0, v2, v4, v3}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 32
    move-object v3, v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamMonitor;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 36
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 38
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 40
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamMonitor;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 44
    return-void
    .line 46
.end method

.method public final start()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamMonitor;I)V

    .line 5
    new-instance v1, Landroid/util/ArraySet;

    .line 8
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 10
    new-instance v2, Landroid/util/ArraySet;

    .line 13
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 15
    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 18
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v1, v0, v4}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 21
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 30
    invoke-direct {v0, v2, v4, v3}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 32
    move-object v3, v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamMonitor;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 36
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 38
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 40
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamMonitor;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 44
    return-void
    .line 46
.end method
