.class public final synthetic Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field public final synthetic f$1:Lcom/android/systemui/plugins/ClockPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 6
    iget v1, v0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    .line 8
    iget v0, v0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    .line 10
    invoke-interface {p0, v1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->getPreview(II)Landroid/graphics/Bitmap;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method
