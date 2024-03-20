.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->setContentDescription(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 682
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iput-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;->val$string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;->val$string:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
