.class public final Lcom/android/systemui/navigationbar/NavBarHelper$2;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 2
    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onWallpaperVisibilityChanged(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper$2;ZI)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
    .line 14
.end method
