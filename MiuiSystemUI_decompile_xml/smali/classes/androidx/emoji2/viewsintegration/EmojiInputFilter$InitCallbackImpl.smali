.class public final Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mEmojiInputFilterReference:Ljava/lang/ref/Reference;

.field public final mViewRef:Ljava/lang/ref/Reference;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mEmojiInputFilterReference:Ljava/lang/ref/Reference;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final onInitialized()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mEmojiInputFilterReference:Ljava/lang/ref/Reference;

    .line 10
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Landroid/text/InputFilter;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz p0, :cond_3

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 24
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move v3, v1

    .line 31
    :goto_0
    array-length v4, v2

    .line 32
    if-ge v3, v4, :cond_3

    .line 33
    aget-object v4, v2, v3

    .line 35
    if-ne v4, p0, :cond_2

    .line 37
    const/4 p0, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    move p0, v1

    .line 44
    :goto_2
    if-nez p0, :cond_4

    .line 45
    return-void

    .line 47
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_9

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 54
    move-result-object p0

    .line 57
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 58
    move-result-object v2

    .line 61
    if-nez p0, :cond_5

    .line 62
    move v3, v1

    .line 64
    goto :goto_3

    .line 65
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 69
    move-result v3

    .line 72
    :goto_3
    invoke-virtual {v2, v1, v3, p0}, Landroidx/emoji2/text/EmojiCompat;->process(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    move-result-object v1

    .line 76
    if-ne p0, v1, :cond_6

    .line 77
    return-void

    .line 79
    :cond_6
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 80
    move-result p0

    .line 83
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 84
    move-result v2

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    instance-of v0, v1, Landroid/text/Spannable;

    .line 91
    if-eqz v0, :cond_9

    .line 93
    check-cast v1, Landroid/text/Spannable;

    .line 95
    if-ltz p0, :cond_7

    .line 97
    if-ltz v2, :cond_7

    .line 99
    invoke-static {v1, p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 101
    goto :goto_4

    .line 104
    :cond_7
    if-ltz p0, :cond_8

    .line 105
    invoke-static {v1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 107
    goto :goto_4

    .line 110
    :cond_8
    if-ltz v2, :cond_9

    .line 111
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 113
    :cond_9
    :goto_4
    return-void
    .line 116
.end method
