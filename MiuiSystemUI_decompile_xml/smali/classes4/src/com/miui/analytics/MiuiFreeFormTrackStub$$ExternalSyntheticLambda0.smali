.class public final synthetic Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;->f$0:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    iput-object p2, p0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;->f$0:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 2
    iget-object v1, p0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    iget-object p0, p0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0, v1, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEventBg(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 8
    return-void
    .line 11
.end method
