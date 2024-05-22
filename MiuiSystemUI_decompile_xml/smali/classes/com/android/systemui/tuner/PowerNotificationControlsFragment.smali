.class public Lcom/android/systemui/tuner/PowerNotificationControlsFragment;
.super Landroid/app/Fragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 9
    const-string/jumbo v0, "show_importance_slider"

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result p0

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    move v1, v0

    .line 21
    :cond_0
    return v1
    .line 22
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d02c9    # @layout/power_notification_controls_settings 'res/layout/power_notification_controls_settings.xml'

    .line 2
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p0

    .line 8
    const/16 v0, 0x188

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 12
    return-void
    .line 15
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p0

    .line 8
    const/16 v0, 0x188

    .line 9
    const/4 v1, 0x1

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 12
    return-void
    .line 15
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    const p2, 0x7f0a0938    # @id/switch_bar

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 11
    const p2, 0x1020040    # @android:id/switch_widget

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 18
    check-cast p2, Landroid/widget/Switch;

    .line 19
    const v0, 0x7f0a093b    # @id/switch_text

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    .line 30
    move-result v0

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const v0, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const v0, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;

    .line 61
    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;-><init>(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;Landroid/widget/Switch;Landroid/widget/TextView;)V

    .line 63
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
    .line 69
.end method
