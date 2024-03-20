.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/taskview/TaskView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/taskview/TaskView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/taskview/TaskView;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
