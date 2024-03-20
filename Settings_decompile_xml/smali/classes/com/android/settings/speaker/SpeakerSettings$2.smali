.class Lcom/android/settings/speaker/SpeakerSettings$2;
.super Landroid/os/CountDownTimer;
.source "SpeakerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/speaker/SpeakerSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/speaker/SpeakerSettings;

.field final synthetic val$progressDialog:Lcom/android/settings/speaker/SpeakerProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/speaker/SpeakerSettings;JJLcom/android/settings/speaker/SpeakerProgressDialog;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$2;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    iput-object p6, p0, Lcom/android/settings/speaker/SpeakerSettings$2;->val$progressDialog:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 210
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 211
    iget-object p2, p0, Lcom/android/settings/speaker/SpeakerSettings$2;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings$2;->val$progressDialog:Lcom/android/settings/speaker/SpeakerProgressDialog;

    rsub-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setProgress(I)V

    return-void
.end method
