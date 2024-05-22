.class public final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTetheringFailed(I)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const-string p1, "HotspotController"

    .line 6
    const-string v0, "onTetheringFailed"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->maybeResetSoftApState()V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    .line 20
    return-void
    .line 23
.end method
