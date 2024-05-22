.class Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

.field public final synthetic val$switchText:Landroid/widget/TextView;

.field public final synthetic val$switchWidget:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchWidget:Landroid/widget/Switch;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchText:Landroid/widget/TextView;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 2
    sget v0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->$r8$clinit:I

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    .line 6
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 12
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 17
    const/16 v1, 0x189

    .line 18
    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 23
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v0

    .line 32
    const-string/jumbo v1, "show_importance_slider"

    .line 33
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    iget-object v0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchWidget:Landroid/widget/Switch;

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchText:Landroid/widget/TextView;

    .line 44
    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 48
    const p1, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 58
    const p1, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
    .line 70
.end method
