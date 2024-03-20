.class public final Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 4
    const-string v2, "LockScreenMagazinePreView"

    .line 6
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    iput-object v3, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemotePackageName:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->-$$Nest$mupdateMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemotePackageName:Ljava/lang/String;

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 23
    invoke-static {v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->-$$Nest$mupdateRemoteMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v4, "updateRemoteMainView "

    .line 32
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 41
    invoke-static {v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->-$$Nest$mupdateMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 46
    iget-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 48
    if-nez v1, :cond_1

    .line 50
    iput-object v3, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemotePackageName:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->-$$Nest$mupdateFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemotePackageName:Ljava/lang/String;

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 64
    invoke-static {v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->-$$Nest$mupdateRemoteFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v3, "updateRemoteFullScreenView "

    .line 73
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 82
    invoke-static {v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->-$$Nest$mupdateFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 84
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->initLayoutVisibility()V

    .line 89
    return-void
    .line 92
.end method
