.class Lcom/android/settings/MiuiDeviceNameEditFragment$1;
.super Ljava/lang/Object;
.source "MiuiDeviceNameEditFragment.java"

# interfaces
.implements Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiDeviceNameEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDeviceNameEditFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beyondLimit(Ljava/lang/String;)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiDeviceNameEditFragment;->-$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiDeviceNameEditFragment;->-$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 113
    iget-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiDeviceNameEditFragment;->-$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->-$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_name_input_overlength:I

    invoke-static {p0, p1, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public nullContent(Z)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-virtual {v0}, Lcom/android/settings/BaseEditFragment;->isEditEabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    :cond_0
    return-void
.end method
