.class public final Landroidx/emoji2/viewsintegration/EmojiTextWatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mEditText:Landroid/widget/EditText;

.field public mEnabled:Z

.field public final mExpectInitializedEmojiCompat:Z

.field public mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    .line 11
    return-void
    .line 13
.end method

.method public static processTextOnEnablingEvent(Landroid/widget/EditText;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    .line 13
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    move-result p1

    .line 20
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    move-result v0

    .line 24
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 25
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    move v3, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 37
    move-result v3

    .line 40
    :goto_0
    invoke-virtual {v1, v2, v3, p0}, Landroidx/emoji2/text/EmojiCompat;->process(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 41
    if-ltz p1, :cond_1

    .line 44
    if-ltz v0, :cond_1

    .line 46
    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 48
    goto :goto_1

    .line 51
    :cond_1
    if-ltz p1, :cond_2

    .line 52
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 54
    goto :goto_1

    .line 57
    :cond_2
    if-ltz v0, :cond_3

    .line 58
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 60
    :cond_3
    :goto_1
    return-void
    .line 63
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->isInEditMode()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    .line 15
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    if-nez v0, :cond_2

    .line 27
    :cond_1
    move v2, v1

    .line 29
    :cond_2
    if-eqz v2, :cond_3

    .line 30
    goto :goto_1

    .line 32
    :cond_3
    if-gt p3, p4, :cond_7

    .line 33
    instance-of p3, p1, Landroid/text/Spannable;

    .line 35
    if-eqz p3, :cond_7

    .line 37
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 39
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 43
    move-result p3

    .line 46
    if-eqz p3, :cond_5

    .line 47
    if-eq p3, v1, :cond_4

    .line 49
    const/4 p1, 0x3

    .line 51
    if-eq p3, p1, :cond_5

    .line 52
    goto :goto_1

    .line 54
    :cond_4
    check-cast p1, Landroid/text/Spannable;

    .line 55
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 57
    move-result-object p0

    .line 60
    add-int/2addr p4, p2

    .line 61
    invoke-virtual {p0, p2, p4, p1}, Landroidx/emoji2/text/EmojiCompat;->process(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 62
    goto :goto_1

    .line 65
    :cond_5
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 66
    move-result-object p1

    .line 69
    iget-object p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    .line 70
    if-nez p2, :cond_6

    .line 72
    new-instance p2, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    .line 74
    iget-object p3, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 76
    invoke-direct {p2, p3}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;-><init>(Landroid/widget/EditText;)V

    .line 78
    iput-object p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    .line 81
    :cond_6
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    .line 83
    invoke-virtual {p1, p0}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    .line 85
    :cond_7
    :goto_1
    return-void
    .line 88
.end method
