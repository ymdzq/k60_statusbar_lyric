.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "NewFingerprintInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->onFingerprintImageProcessed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$2;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 822
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 823
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$2;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 824
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$2;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
