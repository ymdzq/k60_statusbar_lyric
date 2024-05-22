.class public final Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;
.super Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;->this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAttentionGained()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;->this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onAttentionLost()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;->this$0:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 5
    return-void
    .line 8
.end method
