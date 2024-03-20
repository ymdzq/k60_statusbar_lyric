.class Lcom/android/settings/speaker/SpeakerSettings$3;
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

    .line 222
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$3;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    iput-object p6, p0, Lcom/android/settings/speaker/SpeakerSettings$3;->val$progressDialog:Lcom/android/settings/speaker/SpeakerProgressDialog;

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

    const-wide/16 v0, 0x3e8

    .line 225
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 226
    iget-object p2, p0, Lcom/android/settings/speaker/SpeakerSettings$3;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/android/settings/speaker/SpeakerSettings$3;->val$progressDialog:Lcom/android/settings/speaker/SpeakerProgressDialog;

    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings$3;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->clean_time:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const/4 v1, 0x2

    :cond_1
    rsub-int/lit8 p1, p1, 0x1e

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-virtual {p2, p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setProgressPercentViewValue(Ljava/lang/String;)V

    return-void
.end method
