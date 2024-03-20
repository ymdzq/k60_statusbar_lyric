.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 14
    return-void
    .line 17
.end method
