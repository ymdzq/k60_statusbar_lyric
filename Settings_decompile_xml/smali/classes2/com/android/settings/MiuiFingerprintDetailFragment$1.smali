.class Lcom/android/settings/MiuiFingerprintDetailFragment$1;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Lcom/android/settings/FingerprintRemoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiFingerprintDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->fingerprint_removal_failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->-$$Nest$fputmFingerprintDeleted(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onRemoved()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->-$$Nest$fgetmFingerprintKey(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/utils/FingerprintUtils;->removeFingerprintData(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->-$$Nest$fputmFingerprintDeleted(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->-$$Nest$fgetmFingerprintKey(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/FingerprintIdUtils;->deleteFingerprintById(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->finish()V

    :cond_0
    return-void
.end method
