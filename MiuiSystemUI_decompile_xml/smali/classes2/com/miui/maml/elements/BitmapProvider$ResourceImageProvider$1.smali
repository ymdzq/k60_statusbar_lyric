.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/ResourceManager$AsyncLoadListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)V
    .locals 4

    .line 1
    const-string v0, "load image async complete: "

    .line 2
    const-string v1, "load image async complete: "

    .line 4
    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 6
    iget-object v2, v2, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 8
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 11
    iget-object v3, v3, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 13
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    const-string v1, "BitmapProvider"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, " last cached "

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 36
    invoke-static {v0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 52
    iget-object v0, v0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 54
    const/4 v1, 0x0

    .line 56
    if-nez p2, :cond_0

    .line 57
    move-object p2, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    :goto_0
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 63
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 66
    invoke-static {p2, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 71
    iput-object v1, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 73
    goto :goto_1

    .line 75
    :cond_1
    const-string p2, "BitmapProvider"

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string p1, " not equals "

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 91
    iget-object p1, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 101
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 106
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 108
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 110
    return-void

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw p0
    .line 116
.end method
