.class Lcom/android/settings/DeviceAdminAddFragment$3$1;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAddFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAddFragment$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3$1;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iput p2, p0, Lcom/android/settings/DeviceAdminAddFragment$3$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 233
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3$1;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 234
    iget p2, p0, Lcom/android/settings/DeviceAdminAddFragment$3$1;->val$userId:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 235
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3$1;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method
