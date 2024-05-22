.class Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mManager:Lcom/miui/maml/ResourceManager;

.field private mSource:Lcom/miui/maml/util/MamlMediaDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/util/MamlMediaDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mFilePath:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mManager:Lcom/miui/maml/ResourceManager;

    .line 7
    iput-object p3, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mManager:Lcom/miui/maml/ResourceManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlMediaDataSource;->access$000(Lcom/miui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
