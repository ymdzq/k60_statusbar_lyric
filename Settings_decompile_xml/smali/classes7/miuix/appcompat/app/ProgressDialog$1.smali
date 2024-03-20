.class Lmiuix/appcompat/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/ProgressDialog;

.field final synthetic val$realProgressPercentColor:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/ProgressDialog;I)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    iput p2, p0, Lmiuix/appcompat/app/ProgressDialog$1;->val$realProgressPercentColor:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 188
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$100(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$000(Lmiuix/appcompat/app/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 192
    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$400(Lmiuix/appcompat/app/ProgressDialog;)I

    move-result p1

    .line 194
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$500(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

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
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lmiuix/appcompat/app/ProgressDialog$1;->val$realProgressPercentColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x22

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 205
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$500(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {v1}, Lmiuix/appcompat/app/ProgressDialog;->access$400(Lmiuix/appcompat/app/ProgressDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 206
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    invoke-static {p0}, Lmiuix/appcompat/app/ProgressDialog;->access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
