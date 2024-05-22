.class public final Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $template:Landroid/service/controls/templates/TemperatureControlTemplate;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/TemperatureControlBehavior;Landroid/service/controls/templates/TemperatureControlTemplate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->$template:Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->$template:Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 16
    invoke-virtual {v1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplateId()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 24
    if-eqz p0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 30
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    .line 32
    return-void
    .line 35
.end method
