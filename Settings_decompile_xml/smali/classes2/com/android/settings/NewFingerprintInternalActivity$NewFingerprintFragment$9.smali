.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 604
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmNextVideoUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 605
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmNextVideoUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-static {p1, v0, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mplayVideo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V

    :cond_0
    return-void
.end method
