.class final Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1$onChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1$onChange$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    sget-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->IS_SLV_DEVICE:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->context:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 15
    const-string v3, "face_unlcok_apply_for_lock"

    .line 16
    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result v0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->blockedByVirtualSensor:Z

    .line 27
    if-ne v3, v0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->blockedByVirtualSensor:Z

    .line 32
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->hostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 34
    invoke-static {p0, v2, v1, v1}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 36
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    return-object p0
    .line 41
.end method
