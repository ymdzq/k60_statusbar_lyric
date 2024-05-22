.class public final Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mViewRef:Ljava/lang/ref/Reference;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onInitialized()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/EditText;

    .line 8
    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->processTextOnEnablingEvent(Landroid/widget/EditText;I)V

    .line 11
    return-void
    .line 14
.end method
