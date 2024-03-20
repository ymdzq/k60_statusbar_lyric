.class public final Lcom/android/systemui/qs/external/TileServiceManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    .line 18
    :cond_0
    return-void

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 22
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method
