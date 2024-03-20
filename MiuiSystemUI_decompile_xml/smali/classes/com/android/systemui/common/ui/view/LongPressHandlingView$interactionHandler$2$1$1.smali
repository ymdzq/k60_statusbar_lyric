.class public final Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $dispatchToken:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->$dispatchToken:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->$dispatchToken:Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method
