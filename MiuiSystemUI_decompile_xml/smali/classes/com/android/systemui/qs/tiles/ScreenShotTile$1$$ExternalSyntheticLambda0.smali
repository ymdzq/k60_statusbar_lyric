.class public final synthetic Lcom/android/systemui/qs/tiles/ScreenShotTile$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/ScreenShotTile$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenShotTile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/ScreenShotTile$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/ScreenShotTile$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenShotTile;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "android.intent.action.CAPTURE_SCREENSHOT"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 20
    return-void
    .line 23
.end method
