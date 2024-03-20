.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 4
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 8
    const/4 p0, 0x1

    .line 11
    return p0
    .line 12
.end method
