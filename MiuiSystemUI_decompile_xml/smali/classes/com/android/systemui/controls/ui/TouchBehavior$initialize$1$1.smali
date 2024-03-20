.class public final Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    .line 9
    move-result v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 13
    iget p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    .line 15
    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 17
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 20
    return-void
    .line 23
.end method
