.class Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$2;
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

    .line 180
    iput-object p1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$2;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$2;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 184
    iget-object p0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$2;->this$0:Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    return-void
.end method
