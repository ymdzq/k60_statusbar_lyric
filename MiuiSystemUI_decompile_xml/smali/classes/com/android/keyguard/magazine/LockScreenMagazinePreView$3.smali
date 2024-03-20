.class public final Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const-string v0, "contentLockScreen"

    .line 14
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->onPreButtonClick(Landroid/view/View;Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    const-string/jumbo v0, "titleLockScreen"

    .line 28
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->onPreButtonClick(Landroid/view/View;Ljava/lang/String;)V

    .line 33
    :cond_1
    return-void

    .line 36
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    .line 39
    if-eqz p0, :cond_3

    .line 41
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 45
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 47
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 49
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 55
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    if-eqz p1, :cond_2

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->opendAd(Landroid/content/Context;)Z

    .line 67
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    const/4 p0, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 p0, 0x0

    .line 75
    :goto_0
    if-eqz p0, :cond_3

    .line 76
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    .line 85
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v0, "action"

    .line 90
    const-string v1, "click_link"

    .line 92
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "lock_screen_magazine_action"

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 99
    :cond_3
    return-void

    .line 102
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    .line 105
    if-eqz p0, :cond_4

    .line 107
    const-string v0, "buttonLockScreen"

    .line 109
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->onPreButtonClick(Landroid/view/View;Ljava/lang/String;)V

    .line 113
    :cond_4
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 118
.end method
