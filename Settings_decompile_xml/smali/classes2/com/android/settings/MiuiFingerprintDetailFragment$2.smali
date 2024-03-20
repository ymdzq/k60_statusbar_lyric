.class Lcom/android/settings/MiuiFingerprintDetailFragment$2;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$callback:Lcom/android/settings/FingerprintRemoveCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Lcom/android/settings/FingerprintRemoveCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$2;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$2;->val$callback:Lcom/android/settings/FingerprintRemoveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 101
    new-instance p2, Lcom/android/settings/FingerprintHelper;

    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$2;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$2;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->-$$Nest$fgetmFingerprintKey(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$2;->val$callback:Lcom/android/settings/FingerprintRemoveCallback;

    invoke-virtual {p2, v0, p0}, Lcom/android/settings/FingerprintHelper;->removeFingerprint(Ljava/lang/String;Lcom/android/settings/FingerprintRemoveCallback;)V

    .line 104
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
