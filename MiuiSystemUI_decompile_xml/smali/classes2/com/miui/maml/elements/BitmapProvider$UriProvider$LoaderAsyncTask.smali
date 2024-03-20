.class Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mHeight:I

.field private mUri:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    .line 9
    iput p4, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iget v2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/elements/BitmapProvider;->getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "BitmapProvider"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to decode bitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-static {v0}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$200(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-static {v2}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$300(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-static {v1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$300(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$402(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 9
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$302(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
