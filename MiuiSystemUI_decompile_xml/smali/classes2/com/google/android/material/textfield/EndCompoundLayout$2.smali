.class public final Lcom/google/android/material/textfield/EndCompoundLayout$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Lcom/google/android/material/textfield/EndCompoundLayout$1;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 22
    invoke-virtual {v0}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 32
    move-result-object v1

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 38
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 44
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 48
    if-eqz p1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Lcom/google/android/material/textfield/EndCompoundLayout$1;

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 57
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/EndIconDelegate;->onEditTextAttached(Landroid/widget/EditText;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V

    .line 70
    return-void
    .line 73
.end method
