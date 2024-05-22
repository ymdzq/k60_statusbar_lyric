.class public final synthetic Lcom/android/systemui/qs/tiles/VibrateTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/VibrateTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VibrateTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VibrateTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/VibrateTile;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VibrateTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/VibrateTile;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p1, Lcom/android/systemui/qs/tiles/VibrateTile$$ExternalSyntheticLambda2;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/VibrateTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/VibrateTile;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
    .line 19
.end method
