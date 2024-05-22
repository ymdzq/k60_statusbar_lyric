.class public final synthetic Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->hide()V

    .line 4
    new-instance p1, Landroid/content/Intent;

    .line 7
    const-string v0, "com.miui.action.hide_fullscreen_flare"

    .line 9
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v0, "com.miui.securitycenter"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    const p1, 0x7f130ba8    # @string/tip_close_flares 'You won't receive notifications about app behavior during this session'

    .line 24
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
    .line 35
.end method
