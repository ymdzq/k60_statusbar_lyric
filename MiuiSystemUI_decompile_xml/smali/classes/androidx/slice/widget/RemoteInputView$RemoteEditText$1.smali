.class public final Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

.field public final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 2
    iput-object p2, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

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
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    iget-object p0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 14
    return-void
    .line 17
.end method
