.class public final Landroidx/appcompat/widget/SearchView$10;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
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
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 4
    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p2

    .line 15
    xor-int/lit8 p2, p2, 0x1

    .line 16
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 18
    xor-int/lit8 p2, p2, 0x1

    .line 21
    iget-boolean p3, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 23
    const/16 p4, 0x8

    .line 25
    if-eqz p3, :cond_0

    .line 27
    iget-boolean p3, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 29
    if-nez p3, :cond_0

    .line 31
    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    const/4 p4, 0x0

    .line 40
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 46
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 52
    return-void
    .line 55
.end method
