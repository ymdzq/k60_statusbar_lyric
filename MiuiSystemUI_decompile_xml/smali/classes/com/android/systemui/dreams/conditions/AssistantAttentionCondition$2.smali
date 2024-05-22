.class public final Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;->this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;->this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 22
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mVisualQueryDetectionAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    .line 24
    invoke-virtual {v1, p0}, Lcom/android/internal/app/AssistUtils;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 30
    if-nez v0, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 36
    invoke-virtual {v1}, Lcom/android/internal/app/AssistUtils;->disableVisualQueryDetection()V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 41
    :goto_0
    return-void
    .line 44
.end method
