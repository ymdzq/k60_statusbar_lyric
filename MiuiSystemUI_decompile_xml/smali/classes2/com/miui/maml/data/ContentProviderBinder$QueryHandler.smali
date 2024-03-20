.class final Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;
.super Lcom/miui/maml/data/AsyncQueryHandler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/AsyncQueryHandler;-><init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public doUpdateOfCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-static {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public onQueryComplete(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    invoke-static {p0}, Lcom/miui/maml/data/ContentProviderBinder;->access$200(Lcom/miui/maml/data/ContentProviderBinder;)V

    .line 4
    return-void
    .line 7
.end method
