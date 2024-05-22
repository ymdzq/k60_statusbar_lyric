.class public final synthetic Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteViews;

.field public final synthetic f$1:Landroid/widget/RemoteViews;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews;

    .line 4
    const-class v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 6
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 12
    iget-object v2, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 14
    if-eq v2, v0, :cond_0

    .line 16
    iput-object v0, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 18
    :cond_0
    iget-object v0, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 20
    if-eq v0, p0, :cond_1

    .line 22
    iput-object p0, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 24
    :cond_1
    return-void
    .line 26
.end method
