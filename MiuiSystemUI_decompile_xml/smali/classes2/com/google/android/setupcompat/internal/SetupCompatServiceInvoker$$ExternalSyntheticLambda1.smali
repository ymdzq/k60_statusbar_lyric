.class public final synthetic Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 4
    iput-object p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 8
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 10
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 17
    :try_start_0
    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    .line 19
    iget-wide v4, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    invoke-static {v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    .line 29
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    check-cast v0, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    .line 35
    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;->validateActivity(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    const-string p0, "BindBack failed since service reference is null. Are the permissions valid?"

    .line 41
    invoke-virtual {v2, p0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string v0, "Exception occurred while %s trying bind back to SetupWizard."

    .line 48
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    return-void

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 62
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 71
    :try_start_1
    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    .line 73
    iget-wide v4, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    invoke-static {v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 79
    move-result-object v3

    .line 82
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    .line 83
    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    check-cast v0, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    .line 89
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;->onFocusStatusChanged(Landroid/os/Bundle;)V

    .line 91
    goto :goto_2

    .line 94
    :cond_1
    const-string p0, "Report focusChange failed since service reference is null. Are the permission valid?"

    .line 95
    invoke-virtual {v2, p0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    goto :goto_2

    .line 100
    :catch_1
    move-exception p0

    .line 101
    const-string v0, "Exception occurred while %s trying report windowFocusChange to SetupWizard."

    .line 102
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 111
    invoke-virtual {v2, v0, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :goto_2
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 116
.end method
