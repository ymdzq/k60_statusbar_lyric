.class Lcom/android/settings/speaker/SpeakerProgressDialog$1;
.super Landroid/os/Handler;
.source "SpeakerProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/speaker/SpeakerProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/speaker/SpeakerProgressDialog;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 185
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmIsAutoUpdateProgressPercentView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmMessageView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmMessage(Lcom/android/settings/speaker/SpeakerProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmProgressPercentFormat(Lcom/android/settings/speaker/SpeakerProgressDialog;)Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmProgressPercentView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmProgress(Lcom/android/settings/speaker/SpeakerProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmProgress(Lcom/android/settings/speaker/SpeakerProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 196
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmProgressPercentFormat(Lcom/android/settings/speaker/SpeakerProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    iget-object v1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$color;->miuix_appcompat_dialog_default_progress_percent_color:I

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 203
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog$1;->this$0:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->-$$Nest$fgetmProgressPercentView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
