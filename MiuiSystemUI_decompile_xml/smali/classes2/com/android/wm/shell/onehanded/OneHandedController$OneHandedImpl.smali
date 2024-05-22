.class Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHanded;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public static synthetic $r8$lambda$IdH5sg4tVoNu_DkzTEoVnwhrkaE(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$setLockedDisabled$3(ZZ)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$O7VkEU82hiUZCYYIiwiUXhytxDc(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$stopOneHanded$1()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$pwc6tKBp4wQpWgZm6YdPEI4ifTY(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$stopOneHanded$2(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$sT7c_WNwH6ZYHfzY2bkwIFTM19g(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$registerEventCallback$4(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$ufYtyftWytUuMZdwI2Pwp1KB4Ko(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$registerTransitionCallback$5(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$wavjSRcdlz4aR2B0z1pPp5pi9Us(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$startOneHanded$0()V

    .line 2
    return-void
    .line 5
.end method

.method private constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method

.method private synthetic lambda$registerEventCallback$4(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$registerTransitionCallback$5(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$setLockedDisabled$3(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->setLockedDisabled(ZZ)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$startOneHanded$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$stopOneHanded$1()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$stopOneHanded$2(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$mstopOneHanded(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda2;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Ljava/lang/Object;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda2;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Ljava/lang/Object;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public setLockedDisabled(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;ZZ)V

    .line 10
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public startOneHanded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public stopOneHanded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneHanded(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
