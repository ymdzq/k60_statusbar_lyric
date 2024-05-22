.class public final Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public mEnabled:Z

.field public final mVisualQueryDetectionAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/internal/app/AssistUtils;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/shared/condition/Condition;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;-><init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mVisualQueryDetectionAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    .line 10
    new-instance v0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;-><init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 6
    return-void
    .line 9
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 8
    iget-object v1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 10
    invoke-virtual {v1}, Lcom/android/internal/app/AssistUtils;->disableVisualQueryDetection()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 22
    return-void
    .line 25
.end method
