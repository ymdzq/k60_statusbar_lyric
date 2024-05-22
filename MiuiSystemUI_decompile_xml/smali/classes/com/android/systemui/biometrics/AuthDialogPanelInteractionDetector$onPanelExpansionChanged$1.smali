.class public final Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $event:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;->this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;->$event:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;->this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->action:Lcom/android/systemui/biometrics/Action;

    .line 4
    if-eqz v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;->$event:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 8
    iget-boolean v2, p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    .line 10
    if-nez v2, :cond_0

    .line 12
    iget-boolean v2, p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    .line 14
    if-eqz v2, :cond_1

    .line 16
    const/4 v2, 0x0

    .line 18
    iget v3, p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 19
    cmpl-float v2, v3, v2

    .line 21
    if-lez v2, :cond_1

    .line 23
    iget v2, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->panelState:I

    .line 25
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    const-string v3, "onPanelExpansionChanged, event: "

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    const-string v2, "AuthDialogPanelInteractionDetector"

    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, v1, Lcom/android/systemui/biometrics/Action;->onPanelInteraction:Ljava/lang/Runnable;

    .line 49
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->disable()V

    .line 54
    :cond_1
    return-void
    .line 57
.end method
