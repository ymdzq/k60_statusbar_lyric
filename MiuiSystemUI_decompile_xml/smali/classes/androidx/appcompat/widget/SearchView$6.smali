.class public final Landroidx/appcompat/widget/SearchView$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 2
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    return v2

    .line 9
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 10
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v3, 0x42

    .line 17
    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 23
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 25
    move-result v0

    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq v0, v4, :cond_a

    .line 30
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 32
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 34
    if-nez p1, :cond_1

    .line 36
    goto :goto_4

    .line 38
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 39
    if-nez p1, :cond_2

    .line 41
    goto :goto_4

    .line 43
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 44
    move-result p1

    .line 47
    if-nez p1, :cond_9

    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_9

    .line 54
    if-eq p2, v3, :cond_7

    .line 56
    const/16 p1, 0x54

    .line 58
    if-eq p2, p1, :cond_7

    .line 60
    const/16 p1, 0x3d

    .line 62
    if-ne p2, p1, :cond_3

    .line 64
    goto :goto_2

    .line 66
    :cond_3
    const/16 p1, 0x15

    .line 67
    if-eq p2, p1, :cond_5

    .line 69
    const/16 p3, 0x16

    .line 71
    if-ne p2, p3, :cond_4

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    const/16 p1, 0x13

    .line 76
    if-ne p2, p1, :cond_9

    .line 78
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 80
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 82
    goto :goto_4

    .line 85
    :cond_5
    :goto_0
    if-ne p2, p1, :cond_6

    .line 86
    move p1, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 90
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->length()I

    .line 92
    move-result p1

    .line 95
    :goto_1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 96
    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 98
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 101
    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 103
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 106
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 108
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 111
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setInputMethodMode(I)V

    .line 113
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->enoughToFilter()Z

    .line 116
    move-result p1

    .line 119
    if-eqz p1, :cond_8

    .line 120
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 122
    goto :goto_3

    .line 125
    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 126
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 128
    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->onItemClicked(I)V

    .line 132
    :cond_8
    :goto_3
    move v2, v1

    .line 135
    :cond_9
    :goto_4
    return v2

    .line 136
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 137
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 139
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    .line 141
    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    .line 145
    move-result v0

    .line 148
    if-nez v0, :cond_b

    .line 149
    move v0, v1

    .line 151
    goto :goto_5

    .line 152
    :cond_b
    move v0, v2

    .line 153
    :goto_5
    if-nez v0, :cond_c

    .line 154
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 156
    move-result v0

    .line 159
    if-eqz v0, :cond_c

    .line 160
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 162
    move-result p3

    .line 165
    if-ne p3, v1, :cond_c

    .line 166
    if-ne p2, v3, :cond_c

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 170
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 173
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 175
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    .line 177
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 184
    const-string p2, "android.intent.action.SEARCH"

    .line 185
    const/4 p3, 0x0

    .line 187
    invoke-virtual {p0, p2, p3, p3, p1}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    move-result-object p1

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 192
    move-result-object p0

    .line 195
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return v1

    .line 199
    :cond_c
    return v2
    .line 200
.end method
