.class public final synthetic Lcom/android/systemui/statusbar/phone/AutoTileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->changeUser(Landroid/os/UserHandle;)V

    .line 6
    return-void
    .line 9
.end method
