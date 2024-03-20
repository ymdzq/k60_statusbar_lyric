.class public final Lcom/android/systemui/dreams/AssistantAttentionMonitor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mAssistantAttentionCondition:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

.field public final mCallback:Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;

.field public final mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mAssistantAttentionCondition:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final start()V
    .locals 5

    .line 1
    const-string v0, "AssistAttentionMonitor"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    const-string/jumbo v1, "started"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 17
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 19
    new-instance v1, Landroid/util/ArraySet;

    .line 22
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mAssistantAttentionCondition:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 27
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;

    .line 34
    const/4 v4, 0x0

    .line 36
    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 37
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 46
    invoke-direct {v0, v1, v4, v2}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 48
    move-object v2, v0

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 54
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 56
    return-void
    .line 59
.end method
