.class public final Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

.field public final mView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    .line 5
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 7
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;-><init>(Landroid/widget/EditText;)V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 2
    xor-int/lit8 v0, v0, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 6
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 8
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of p0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of p0, p1, Landroid/text/method/NumberKeyListener;

    .line 24
    if-eqz p0, :cond_2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    new-instance p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    .line 29
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    .line 31
    move-object p1, p0

    .line 34
    :cond_3
    :goto_0
    return-object p1
    .line 35
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 14
    const/16 p2, 0xe

    .line 15
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->setEnabled(Z)V

    .line 31
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    throw p0
    .line 39
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    .line 21
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    .line 23
    invoke-direct {v0, p0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 25
    move-object p1, v0

    .line 28
    :goto_0
    move-object p0, p1

    .line 29
    :goto_1
    return-object p0
    .line 30
.end method

.method public final setEnabled(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 2
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    .line 4
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 6
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    .line 8
    if-eq v0, p1, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v2, "initCallback cannot be null"

    .line 25
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v2, v0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 30
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 32
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    :try_start_0
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Landroidx/collection/ArraySet;

    .line 39
    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 44
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 53
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    throw p0

    .line 60
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    .line 61
    if-eqz p1, :cond_1

    .line 63
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 65
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 67
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 71
    move-result p1

    .line 74
    invoke-static {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->processTextOnEnablingEvent(Landroid/widget/EditText;I)V

    .line 75
    :cond_1
    return-void
    .line 78
.end method
