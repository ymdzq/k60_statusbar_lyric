.class Lcom/android/settings/MiuiDeviceNameEditFragment$2;
.super Ljava/lang/Object;
.source "MiuiDeviceNameEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 121
    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$2;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$2;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->-$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 126
    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$2;->this$0:Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->-$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
