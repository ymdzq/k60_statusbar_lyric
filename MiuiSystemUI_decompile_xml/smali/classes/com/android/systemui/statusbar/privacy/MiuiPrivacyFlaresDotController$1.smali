.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "force_fsg_nav_bar"

    .line 10
    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFullScreenGesture:Z

    .line 18
    if-eq v0, p1, :cond_0

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFullScreenGesture:Z

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewMarginEndAndGravity()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
