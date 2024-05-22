.class Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/SoScSplitScreen;


# instance fields
.field private final mExecutors:Landroid/util/ArrayMap;

.field private final mListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;


# direct methods
.method public static synthetic $r8$lambda$486LYkEXIGn6XsVh1jBKipXFKy4(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->lambda$registerSoScSplitScreenListener$0(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$U16uRk0v8LflMf_DbKGfqeGniNA(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->lambda$registerSoScSplitScreenListener$1(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_Cdd0EYeaXL0PPfmU4bIShB0nKw(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->lambda$unregisterSoScSplitScreenListener$2(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutors(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 2
    return-object p0
    .line 4
.end method

.method private constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 4
    new-instance p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;)V

    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    return-void
.end method

.method private synthetic lambda$registerSoScSplitScreenListener$0(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->registerSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
    .line 22
.end method

.method private synthetic lambda$registerSoScSplitScreenListener$1(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->sendStatusToListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 6
    return-void
    .line 9
.end method

.method private synthetic lambda$unregisterSoScSplitScreenListener$2(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->unregisterSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method


# virtual methods
.method public goToFullscreenFromSplit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 8
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;

    .line 10
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;-><init>(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 13
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    return-void
    .line 21
.end method

.method public onFinishedWakingUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 8
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;

    .line 10
    const/4 v2, 0x3

    .line 12
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;-><init>(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 13
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    return-void
    .line 21
.end method

.method public registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 11
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V

    .line 19
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 24
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;

    .line 27
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;I)V

    .line 30
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
    .line 36
.end method

.method public unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method
