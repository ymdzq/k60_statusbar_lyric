.class public final Lcom/android/systemui/qs/external/TileServices$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;

.field public final synthetic val$slot:Ljava/lang/String;

.field public final synthetic val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServices$1;->val$slot:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServices$1;->val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$1;->this$0:Lcom/android/systemui/qs/external/TileServices;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$1;->val$slot:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$1;->val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-nez p0, :cond_0

    .line 15
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->createExternalSlotName(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->createExternalSlotName(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 28
    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 30
    iput-object p0, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 35
    :goto_0
    return-void
    .line 38
.end method
