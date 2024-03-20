.class public final Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

.field public final synthetic val$settingsDeepLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;->val$settingsDeepLink:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;->val$settingsDeepLink:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 13
    const-string v1, "android.intent.action.VIEW"

    .line 15
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v1, "from"

    .line 20
    const-string v2, "lks_preview"

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;->val$settingsDeepLink:Ljava/lang/String;

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    const/high16 v1, 0x10000000

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    const/high16 v1, 0x4000000

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    move-object p1, v0

    .line 47
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 48
    invoke-static {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->access$000(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)Landroid/content/Context;

    .line 50
    move-result-object p0

    .line 53
    invoke-static {p0, p1}, Lcom/miui/systemui/util/CommonUtil;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    .line 54
    move-result-object p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    move-object v0, p1

    .line 60
    :cond_1
    return-object v0
    .line 61
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 4
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 19
    const v2, 0x7f130079    # @string/accessibility_enter_lock_setting 'Tap to open Wallpaper Carousel settings'

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 30
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;

    .line 32
    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Landroid/content/Intent;)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 40
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;

    .line 42
    const/4 v1, 0x2

    .line 44
    invoke-direct {v0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;-><init>(I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 48
    sget-object p1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 53
    const/16 p1, 0x32

    .line 55
    invoke-static {p1, p0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setViewTouchDelegate(ILandroid/view/View;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 61
    const/16 v1, 0x8

    .line 63
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    sget-object p1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    .line 70
    invoke-static {v0, p0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setViewTouchDelegate(ILandroid/view/View;)V

    .line 72
    :goto_0
    return-void
    .line 75
.end method
