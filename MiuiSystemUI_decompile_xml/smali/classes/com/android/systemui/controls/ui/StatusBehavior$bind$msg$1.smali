.class public final Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/StatusBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/StatusBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 8
    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/ui/StatusBehavior;->access$showNotFoundDialog(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 10
    return-void
    .line 13
.end method
