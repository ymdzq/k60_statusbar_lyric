.class public final Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/StatusBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/StatusBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 8
    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/ui/StatusBehavior;->access$showNotFoundDialog(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method
