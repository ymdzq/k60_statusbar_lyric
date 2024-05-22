.class public final synthetic Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    .line 5
    iput-object p2, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    .line 12
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    .line 17
    throw p0
    .line 20
.end method
