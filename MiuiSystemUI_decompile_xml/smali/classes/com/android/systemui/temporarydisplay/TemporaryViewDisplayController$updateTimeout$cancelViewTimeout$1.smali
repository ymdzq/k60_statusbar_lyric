.class public final Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;->$displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;->$displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    const-string v1, "TIMEOUT"

    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeView(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
    .line 17
.end method