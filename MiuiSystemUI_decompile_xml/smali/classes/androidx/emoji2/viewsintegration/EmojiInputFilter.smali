.class public final Landroidx/emoji2/viewsintegration/EmojiInputFilter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public mInitCallback:Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

.field public final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->isInEditMode()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    const/4 p2, 0x3

    .line 24
    if-eq v0, p2, :cond_5

    .line 25
    return-object p1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    if-nez p6, :cond_2

    .line 29
    if-nez p5, :cond_2

    .line 31
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    .line 33
    move-result p4

    .line 36
    if-nez p4, :cond_2

    .line 37
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 41
    move-result-object p0

    .line 44
    if-ne p1, p0, :cond_2

    .line 45
    move v1, v0

    .line 47
    :cond_2
    if-eqz v1, :cond_4

    .line 48
    if-eqz p1, :cond_4

    .line 50
    if-nez p2, :cond_3

    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 54
    move-result p0

    .line 57
    if-ne p3, p0, :cond_3

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 61
    move-result-object p1

    .line 64
    :goto_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 65
    move-result-object p0

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 69
    move-result p2

    .line 72
    invoke-virtual {p0, v0, p2, p1}, Landroidx/emoji2/text/EmojiCompat;->process(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4
    return-object p1

    .line 78
    :cond_5
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 79
    move-result-object p2

    .line 82
    iget-object p3, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    .line 83
    if-nez p3, :cond_6

    .line 85
    new-instance p3, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    .line 87
    iget-object p4, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    .line 89
    invoke-direct {p3, p4, p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;-><init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V

    .line 91
    iput-object p3, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    .line 94
    :cond_6
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    .line 96
    invoke-virtual {p2, p0}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    .line 98
    return-object p1
    .line 101
.end method
