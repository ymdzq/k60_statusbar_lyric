.class Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "MamlMediaDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/MamlMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mManager:Lcom/miui/maml/ResourceManager;

.field private mSource:Lcom/miui/maml/util/MamlMediaDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/util/MamlMediaDataSource;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mFilePath:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mManager:Lcom/miui/maml/ResourceManager;

    .line 275
    iput-object p3, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 268
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mManager:Lcom/miui/maml/ResourceManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlMediaDataSource;->access$000(Lcom/miui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
