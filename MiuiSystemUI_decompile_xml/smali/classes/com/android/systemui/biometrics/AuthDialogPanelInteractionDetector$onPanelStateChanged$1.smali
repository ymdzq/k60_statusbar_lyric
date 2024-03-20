.class public final Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $state:I

.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    iput p2, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->$state:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    iget p0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->$state:I

    .line 4
    iput p0, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->panelState:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "onPanelStateChanged, state: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    const-string v0, "AuthDialogPanelInteractionDetector"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
    .line 27
.end method
