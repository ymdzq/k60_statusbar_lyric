.class public final synthetic Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiQSDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 2
    sget p1, Lcom/android/systemui/qs/MiuiQSDetail;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f13006e    # @string/accessibility_desc_quick_settings 'Quick settings.'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 22
    const/4 v0, 0x1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide(Z)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 32
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    return-void
    .line 42
.end method
