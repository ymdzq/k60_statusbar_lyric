.class public Lcom/miui/maml/elements/FramerateController$ControlPoint;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFramerate:I

.field public mTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "time"

    .line 5
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 12
    const-string v0, "frameRate"

    .line 14
    const/4 v1, -0x1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 20
    iput p1, p0, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    .line 21
    return-void
    .line 23
.end method
