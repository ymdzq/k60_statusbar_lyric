.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 4
    return-void
    .line 7
.end method
