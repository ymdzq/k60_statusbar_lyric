.class public final synthetic Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    .line 9
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 17
    move-result-object v0

    .line 20
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 33
    goto :goto_1

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 37
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 43
    :goto_1
    if-ltz p1, :cond_3

    .line 46
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 53
    :goto_2
    return-void
    .line 56
.end method
