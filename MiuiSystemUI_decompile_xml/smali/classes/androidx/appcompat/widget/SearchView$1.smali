.class public final Landroidx/appcompat/widget/SearchView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$1;->this$0:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$1;->this$0:Landroid/view/View;

    .line 8
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 10
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 12
    instance-of v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 19
    :cond_0
    return-void

    .line 22
    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$1;->this$0:Landroid/view/View;

    .line 23
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateFocusedState()V

    .line 27
    return-void

    .line 30
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$1;->this$0:Landroid/view/View;

    .line 31
    check-cast p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 33
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 42
    const-string v1, "input_method"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 49
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 52
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 55
    :cond_1
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 58
.end method
