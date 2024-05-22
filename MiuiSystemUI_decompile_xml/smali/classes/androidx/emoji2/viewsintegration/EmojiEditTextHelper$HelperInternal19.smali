.class public final Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mEditText:Landroid/widget/EditText;

.field public final mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    .line 5
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 7
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;-><init>(Landroid/widget/EditText;)V

    .line 9
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    sget-object p0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 17
    if-nez p0, :cond_1

    .line 19
    sget-object p0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 21
    monitor-enter p0

    .line 23
    :try_start_0
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 24
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 28
    invoke-direct {v0}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;-><init>()V

    .line 30
    sput-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 33
    :cond_0
    monitor-exit p0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 42
    return-void
    .line 45
.end method
