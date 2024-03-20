.class public final Lcom/google/android/material/textfield/EndCompoundLayout$1;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$1;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$1;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->afterEditTextChanged()V

    .line 8
    return-void
    .line 11
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$1;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->beforeEditTextChanged()V

    .line 8
    return-void
    .line 11
.end method
