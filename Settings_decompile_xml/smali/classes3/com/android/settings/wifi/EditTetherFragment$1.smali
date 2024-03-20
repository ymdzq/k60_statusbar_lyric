.class Lcom/android/settings/wifi/EditTetherFragment$1;
.super Ljava/lang/Object;
.source "EditTetherFragment.java"

# interfaces
.implements Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/EditTetherFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/EditTetherFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/EditTetherFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$1;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beyondLimit(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment$1;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fgetmSsid(Lcom/android/settings/wifi/EditTetherFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$1;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fgetmSsid(Lcom/android/settings/wifi/EditTetherFragment;)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment$1;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fgetmSsid(Lcom/android/settings/wifi/EditTetherFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public nullContent(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment$1;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Lcom/android/settings/BaseEditFragment;->isEditEabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment$1;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    :cond_0
    return-void
.end method
