.class public final Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mInitCallbacks:Ljava/util/List;

.field public final mLoadState:I

.field public final mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/util/Collection;ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "initCallbacks cannot be null"

    .line 5
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    .line 15
    iput p2, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    .line 17
    iput-object p3, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mThrowable:Ljava/lang/Throwable;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mLoadState:I

    .line 10
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_1

    .line 16
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 26
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFailed()V

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    .line 34
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;->mInitCallbacks:Ljava/util/List;

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 44
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    return-void
    .line 52
.end method
