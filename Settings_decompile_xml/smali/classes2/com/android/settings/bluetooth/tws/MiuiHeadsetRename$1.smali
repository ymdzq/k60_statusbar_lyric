.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;
.super Ljava/lang/Object;
.source "MiuiHeadsetRename.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->setRenameOnclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

.field final synthetic val$builder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;Landroid/view/LayoutInflater;Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    iput-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->val$builder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->val$inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->rename:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->val$builder:Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->miheadset_rename_device:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->miheadset_cancel_device:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$2;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->miheadset_ok_device:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 165
    sget v0, Lcom/android/settings/R$id;->renameEdit:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
