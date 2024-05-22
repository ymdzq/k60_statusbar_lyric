.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$1;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$1;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p0, "MiuiKeyguardWallPaperManager"

    .line 9
    const-string p1, "current new config is null!"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mOrientation:I

    .line 17
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 19
    if-ne v0, v1, :cond_1

    .line 21
    iget v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mSmallestScreenWidthDp:I

    .line 23
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 25
    if-eq v0, v2, :cond_2

    .line 27
    :cond_1
    iput v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mOrientation:I

    .line 29
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 31
    iput p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mSmallestScreenWidthDp:I

    .line 33
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateColorAndDeep()V

    .line 35
    :cond_2
    return-void
    .line 38
.end method
