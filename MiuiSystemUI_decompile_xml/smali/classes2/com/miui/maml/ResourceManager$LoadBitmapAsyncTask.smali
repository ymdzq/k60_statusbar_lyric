.class Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mSrc:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 1

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {p0, p1}, Lcom/miui/maml/ResourceManager;->access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/miui/maml/ResourceManager$BitmapInfo;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {v0}, Lcom/miui/maml/ResourceManager;->access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    iget-object v2, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/miui/maml/ResourceManager$AsyncLoadListener;->onLoadComplete(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {p1}, Lcom/miui/maml/ResourceManager;->access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->onPostExecute(Lcom/miui/maml/ResourceManager$BitmapInfo;)V

    return-void
.end method
