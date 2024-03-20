.class public final Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/display/OLEDScreenHelper;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onScreenTurnedOff()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->stop(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onScreenTurnedOn()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->start(Z)V

    .line 5
    return-void
    .line 8
.end method
