.class public final Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-$$Nest$msetProjection(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-$$Nest$msetProjection(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    .line 5
    return-void
    .line 8
.end method
