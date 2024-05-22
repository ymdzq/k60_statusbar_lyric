.class public final synthetic Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 5
    iput p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 2
    iget v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 11
    :try_start_0
    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    .line 13
    iget-wide v4, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-static {v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 19
    move-result-object v3

    .line 22
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    .line 23
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 29
    check-cast v0, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    .line 31
    invoke-virtual {v0, v1, p0, v3}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;->logMetric(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "logMetric failed since service reference is null. Are the permissions valid?"

    .line 37
    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "Exception occurred while trying to log metric = [%s]"

    .line 44
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {v2, p0, v0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    return-void
    .line 57
.end method
