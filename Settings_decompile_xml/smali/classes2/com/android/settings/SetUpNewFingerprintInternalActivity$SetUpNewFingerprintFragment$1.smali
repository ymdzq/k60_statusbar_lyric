.class Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;
.super Ljava/lang/Object;
.source "SetUpNewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    iget-object v0, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 171
    sget v0, Lcom/android/settings/R$string;->add_fingerprint_toast_text:I

    invoke-virtual {p1, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->buildAlertDialog(I)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    return-void
.end method
