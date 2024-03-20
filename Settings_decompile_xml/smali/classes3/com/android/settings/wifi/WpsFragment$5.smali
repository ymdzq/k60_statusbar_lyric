.class Lcom/android/settings/wifi/WpsFragment$5;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsFragment;->updateState(Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsFragment;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/settings/wifi/WpsFragment$State;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsFragment$5;->val$state:Lcom/android/settings/wifi/WpsFragment$State;

    iput-object p3, p0, Lcom/android/settings/wifi/WpsFragment$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WpsFragment$6;->$SwitchMap$com$android$settings$wifi$WpsFragment$State:[I

    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment$5;->val$state:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmRetryButton(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmTimeoutBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmProgressBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmWpsIndictor(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmCenterButton(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmSummaryText(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmReceiver(Lcom/android/settings/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmReceiver(Lcom/android/settings/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fputmReceiver(Lcom/android/settings/wifi/WpsFragment;Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmRetryButton(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmTimeoutBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmProgressBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmWpsIndictor(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmCenterButton(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmSummaryText(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmTimeoutBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmWpsIndictor(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmProgressBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmSummaryText(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmPin(Lcom/android/settings/wifi/WpsFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmSummaryText(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    sget v2, Lcom/android/settings/R$string;->wifi_wps_onstart_pin:I

    .line 216
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmPin(Lcom/android/settings/wifi/WpsFragment;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmWpsIndictor(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmSummaryText(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_wps_onstart_pbc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$5;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmWpsIndictor(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method
