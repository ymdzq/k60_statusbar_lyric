.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$11;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->playVideo(Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

.field final synthetic val$videoView:Lcom/android/settings/MutedVideoView;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Lcom/android/settings/MutedVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$11;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iput-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$11;->val$videoView:Lcom/android/settings/MutedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$11;->val$videoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p0}, Lcom/android/settings/MutedVideoView;->start()V

    return-void
.end method
